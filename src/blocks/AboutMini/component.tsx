import React from 'react'
import RichText from '@/components/RichText'
import { CMSLink } from '@/components/Link'
import { Media } from '@/components/Media'
import type { AboutMini as AboutMiniProps } from '@/payload-types'
import { cn } from '@/utilities/ui'

export const AboutMini: React.FC<AboutMiniProps> = (props) => {
  const { media, header, richText, link, imagePosition = 'left', imageStyle = 'round' } = props

  const ImageContent = () => (
    <div className="flex items-center justify-center">
      {media && (
        <div
          className={cn(
            'relative aspect-square w-[200px] sm:w-[250px] md:w-[300px] lg:w-[350px] overflow-hidden',
            imageStyle === 'round' ? 'rounded-full' : 'rounded-lg',
          )}
        >
          <Media
            resource={media}
            fill
            className={cn('object-cover', imageStyle === 'round' ? 'rounded-full' : 'rounded-lg')}
            imgClassName={imageStyle === 'round' ? 'rounded-full' : 'rounded-lg'}
          />
        </div>
      )}
    </div>
  )

  const TextContent = () => (
    <div className="space-y-4">
      <h2 className="text-3xl font-bold uppercase text-foreground">{header}</h2>
      {richText && (
        <RichText
          data={richText}
          enableGutter={false}
          className="text-base text-muted-foreground leading-relaxed"
        />
      )}
      {link && <CMSLink {...link} appearance={link.appearance || 'primary'} />}
    </div>
  )

  return (
    <div className="container my-16">
      <div className="grid grid-cols-1 md:grid-cols-2 gap-8 items-center">
        {imagePosition === 'left' ? (
          <>
            <ImageContent />
            <TextContent />
          </>
        ) : (
          <>
            <TextContent />
            <ImageContent />
          </>
        )}
      </div>
    </div>
  )
}

export default AboutMini
