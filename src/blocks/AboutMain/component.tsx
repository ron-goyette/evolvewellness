import React from 'react'
import RichText from '@/components/RichText'
import { Media } from '@/components/Media'
import type { AboutMini } from '@/payload-types'
import { cn } from '@/utilities/ui'
import CredentialItem, { CredentialItemProps } from '@/components/CredentialItem/CredentialItem'

export type AboutMainProps = Omit<AboutMini, 'link' | 'blockType'> & {
  blockType: 'aboutMain'
  name?: string
  credentials?: string
  detailedCredentials?: CredentialItemProps[]
}

export const AboutMain: React.FC<AboutMainProps> = (props) => {
  const {
    media,
    header,
    richText,
    imagePosition = 'left',
    imageStyle = 'round',
    name,
    credentials,
    detailedCredentials,
  } = props

  const imageWidth = 'w-[400px] sm:w-[400px] md:w-[450px] lg:w-[500px]'

  const ImageContent = () => (
    <div className="flex flex-col items-start justify-start h-full w-full">
      <div className="flex flex-col items-start w-full mx-auto max-w-lg">
        {media && (
          <div
            className={cn(
              'relative aspect-square overflow-hidden',
              imageWidth,
              imageStyle === 'round' ? 'rounded-full' : 'rounded-lg',
            )}
            style={{ marginRight: 'auto' }}
          >
            <Media
              resource={media}
              fill
              className={cn('object-cover', imageStyle === 'round' ? 'rounded-full' : 'rounded-lg')}
              imgClassName={imageStyle === 'round' ? 'rounded-full' : 'rounded-2xl'}
            />
          </div>
        )}
        {(name || credentials) && (
          <div className={cn('mt-4 text-left', imageWidth)}>
            {name && <div className="font-semibold text-lg text-foreground">{name}</div>}
            {credentials && <div className="text-sm text-muted-foreground">{credentials}</div>}
          </div>
        )}
        {Array.isArray(detailedCredentials) && detailedCredentials.length > 0 && (
          <section className="my-8 w-full">
            <h2 className="text-2xl font-bold mb-6 text-foreground">Professional Licenses</h2>
            <div className="flex flex-col gap-4">
              {detailedCredentials.map((cred, idx) => (
                <CredentialItem key={idx} {...cred} />
              ))}
            </div>
          </section>
        )}
      </div>
    </div>
  )

  const TextContent = () => (
    <div className="space-y-4">
      {header && <h2 className="text-3xl font-bold uppercase text-foreground mb-8">{header}</h2>}
      {richText && (
        <RichText
          data={richText}
          enableGutter={false}
          className="prose prose-headings:text-foreground prose-p:text-foreground prose-h1:text-4xl prose-h2:text-3xl prose-h3:text-2xl prose-p:text-lg prose-ul:text-foreground prose-li:text-foreground prose-li:marker:text-foreground text-base text-foreground leading-relaxed"
        />
      )}
    </div>
  )

  return (
    <div className="container my-16">
      <div className="grid grid-cols-1 md:grid-cols-2 gap-8 items-start">
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

export default AboutMain
