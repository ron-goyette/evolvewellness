import type { Post, ArchiveBlock as ArchiveBlockProps } from '@/payload-types'

import configPromise from '@payload-config'
import { getPayload } from 'payload'
import React from 'react'
import RichText from '@/components/RichText'

import { CollectionArchive } from '@/components/CollectionArchive'

export const ArchiveBlock: React.FC<
  ArchiveBlockProps & {
    id?: string | null
    excludeId?: string | number | null
  }
> = async (props) => {
  const {
    id,
    categories,
    introContent,
    limit: limitFromProps,
    populateBy,
    selectedDocs,
    excludeId,
  } = props

  const limit = limitFromProps || 3

  let posts: Post[] = []

  if (populateBy === 'collection') {
    const payload = await getPayload({ config: configPromise })

    const flattenedCategories = categories?.map((category) => {
      if (typeof category === 'object') return category.id
      else return category
    })

    const whereQuery = {
      ...(flattenedCategories && flattenedCategories.length > 0
        ? {
            categories: {
              in: flattenedCategories,
            },
          }
        : {}),
      ...(excludeId
        ? {
            id: {
              not_equals: excludeId,
            },
          }
        : {}),
    }

    const fetchedPosts = await payload.find({
      collection: 'posts',
      depth: 1,
      limit,
      where: whereQuery,
    })

    posts = fetchedPosts.docs
  } else if (selectedDocs?.length) {
    const payload = await getPayload({ config: configPromise })

    // Get IDs of posts that need to be fetched
    const postIds = selectedDocs
      .map((doc) => (typeof doc.value === 'object' ? doc.value.id : doc.value))
      .filter((id) => id !== excludeId)

    // Fetch all selected posts with full data
    const fetchedPosts = await payload.find({
      collection: 'posts',
      depth: 1,
      where: {
        id: {
          in: postIds,
        },
      },
    })

    posts = fetchedPosts.docs
  }

  return (
    <div className="py-16" id={`block-${id}`}>
      {introContent && (
        <div className="container mb-16">
          <RichText
            className="prose prose-headings:text-foreground prose-p:text-foreground prose-h1:text-4xl prose-h2:text-3xl prose-h3:text-2xl prose-p:text-lg prose-ul:text-foreground prose-li:text-foreground prose-li:marker:text-foreground ms-0 max-w-[48rem]"
            data={introContent}
            enableGutter={false}
          />
        </div>
      )}
      <CollectionArchive posts={posts} />
    </div>
  )
}
