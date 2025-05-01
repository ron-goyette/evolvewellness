'use client'
import React from 'react'
import type { Page } from '@/payload-types'

type CallToActionProps = Extract<Page['layout'][number], { blockType: 'cta' }>
import RichText from '@/components/RichText'
import { CMSLink } from '@/components/Link'
import { ContactButton } from '@/components/ContactButton'

export const CallToAction: React.FC<CallToActionProps> = ({ links, richText, buttons }) => {
  const contact = buttons?.contact || {}
  return (
    <div className="bg-muted w-full flex items-center justify-center m-0">
      <div className="flex flex-col items-center py-16 gap-6 text-center">
        {richText && (
          <RichText
            className="prose prose-headings:text-foreground prose-p:text-foreground prose-h1:text-4xl prose-h2:text-3xl prose-h3:text-2xl prose-p:text-lg m-0 max-w-2xl"
            data={richText}
            enableGutter={false}
          />
        )}
        <div className="flex justify-center gap-4">
          {(links || []).map(({ link }, i) => (
            <CMSLink key={i} size="lg" {...link} />
          ))}
          {contact?.show && (
            <ContactButton variant={contact.variant || 'primary'} size={contact.size || 'default'}>
              {contact.label || 'Contact'}
            </ContactButton>
          )}
        </div>
      </div>
    </div>
  )
}
