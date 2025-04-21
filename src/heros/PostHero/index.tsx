import { formatDateTime } from 'src/utilities/formatDateTime'
import React from 'react'

import type { Post } from '@/payload-types'

import { Media } from '@/components/Media'
import { formatAuthors } from '@/utilities/formatAuthors'
import { getReadTimeFromLexical } from '@/utilities/readTime'

export const PostHero: React.FC<{
  post: Post
}> = ({ post }) => {
  const { heroImage, populatedAuthors, publishedAt, title, content } = post

  const hasAuthors =
    populatedAuthors && populatedAuthors.length > 0 && formatAuthors(populatedAuthors) !== ''

  const readTime = getReadTimeFromLexical(content)

  return (
    <div className="relative pt-20 bg-muted-foreground">
      <div className="container">
        <div className="max-w-4xl mx-auto">
          {/* Hero Image */}
          <div className="aspect-[16/9] mb-8 rounded-2xl overflow-hidden">
            {heroImage && typeof heroImage !== 'string' && (
              <Media priority imgClassName="object-cover w-full h-full" resource={heroImage} />
            )}
          </div>

          {/* Title */}
          <div>
            <h1 className="mb-6 text-3xl md:text-5xl lg:text-6xl text-background">{title}</h1>
          </div>

          {/* Meta Information */}
          <div className="flex items-center gap-6 text-background">
            {hasAuthors && (
              <div className="mb-4 flex items-center gap-2">
                <p className="text-xs">Author:</p>
                <p className="text-sm">{formatAuthors(populatedAuthors)}</p>
                <p className="text-xs">Date Published:</p>
                {typeof publishedAt === 'string' ? (
                  <time className="text-sm" dateTime={publishedAt}>
                    {formatDateTime(publishedAt)}
                  </time>
                ) : null}
                {readTime && <span className="text-xs">&bull; {readTime} min read</span>}
              </div>
            )}
          </div>
        </div>
      </div>
    </div>
  )
}
