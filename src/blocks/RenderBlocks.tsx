import React, { Fragment } from 'react'
import type {
  Page,
  ArchiveBlock as ArchiveBlockProps,
  ContentBlock as ContentBlockProps,
  AboutMini as AboutMiniProps,
  ServicesBlock as ServicesBlockProps,
  MediaBlock as MediaBlockProps,
} from '@/payload-types'
import type { StaticImageData } from 'next/image'

import { ArchiveBlock } from '@/blocks/ArchiveBlock/Component'
import { CallToAction } from '@/blocks/CallToAction/Component'
import { ContentBlock } from '@/blocks/Content/Component'
import { MediaBlock } from '@/blocks/MediaBlock/Component'
import { AboutMini } from '@/blocks/AboutMini/component'
import { Services } from '@/blocks/Services/component'
import { AboutMain } from '@/blocks/AboutMain/component'
import { VideoBlock as VideoBlockComponent } from '@/blocks/VideoBlock/component'

// Define prop types for each block
interface ArchiveBlockStrictProps extends ArchiveBlockProps {
  id?: string | null
  excludeId?: string | number | null
  blockType: 'archive'
}

interface CallToActionStrictProps extends Extract<Page['layout'][number], { blockType: 'cta' }> {
  blockType: 'cta'
}

interface ContentBlockStrictProps extends ContentBlockProps {
  blockType: 'content'
}

interface MediaBlockStrictProps extends MediaBlockProps {
  breakout?: boolean
  captionClassName?: string
  className?: string
  enableGutter?: boolean
  imgClassName?: string
  staticImage?: StaticImageData
  disableInnerContainer?: boolean
  blockType: 'mediaBlock'
}

interface AboutMiniStrictProps extends AboutMiniProps {
  blockType: 'aboutMini'
}

interface ServicesBlockStrictProps extends ServicesBlockProps {
  blockType: 'services'
}

type AboutMainStrictProps = Omit<AboutMiniProps, 'link' | 'blockType'> & {
  blockType: 'aboutMain'
  header?: string | null
}

interface VideoBlockStrictProps {
  blockType: 'videoBlock'
  url: string
  caption?: string
  id?: string | null
  blockName?: string | null
}

type BlockUnion =
  | ArchiveBlockStrictProps
  | CallToActionStrictProps
  | ContentBlockStrictProps
  | MediaBlockStrictProps
  | AboutMiniStrictProps
  | ServicesBlockStrictProps
  | AboutMainStrictProps
  | VideoBlockStrictProps

export const RenderBlocks: React.FC<{ blocks: BlockUnion[] }> = ({ blocks }) => {
  if (!blocks?.length) return null

  return (
    <Fragment>
      {blocks.map((block, index) => {
        switch (block.blockType) {
          case 'archive':
            return (
              <div key={index}>
                <ArchiveBlock {...block} />
              </div>
            )
          case 'mediaBlock':
            return (
              <div key={index}>
                <MediaBlock {...block} disableInnerContainer />
              </div>
            )
          case 'content':
            return (
              <div key={index}>
                <ContentBlock {...block} />
              </div>
            )
          case 'cta':
            return (
              <div key={index}>
                <CallToAction {...block} />
              </div>
            )
          case 'aboutMini':
            return (
              <div key={index}>
                <AboutMini {...block} />
              </div>
            )
          case 'services':
            return (
              <div key={index}>
                <Services {...block} />
              </div>
            )
          case 'aboutMain':
            return (
              <div key={index}>
                <AboutMain {...block} />
              </div>
            )
          case 'videoBlock':
            return (
              <div key={index}>
                <VideoBlockComponent {...block} caption={block.caption ?? undefined} />
              </div>
            )
          default:
            return null
        }
      })}
    </Fragment>
  )
}
