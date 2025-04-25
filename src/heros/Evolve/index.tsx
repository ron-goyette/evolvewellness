'use client'
import { useHeaderTheme } from '@/providers/HeaderTheme'
import React, { useEffect } from 'react'

import type { Page } from '@/payload-types'

import { CMSLink } from '@/components/Link'
import { Media } from '@/components/Media'
import RichText from '@/components/RichText'
import { ContactButton } from '@/components/ContactButton'

type ButtonConfig = {
  show?: boolean | null
  label?: string | null
  size?: 'sm' | 'default' | 'lg' | null
  variant?:
    | 'default'
    | 'outline'
    | 'secondary'
    | 'ghost'
    | 'link'
    | 'destructive'
    | 'primary'
    | 'secondaryCustom'
    | 'danger'
    | null
}

type ButtonOptions = {
  contact?: ButtonConfig
  schedule?: ButtonConfig
}

export const EvolveHero: React.FC<Page['hero']> = ({ links, media, richText, buttons = {} }) => {
  const { setHeaderTheme } = useHeaderTheme()
  const { contact, schedule } = buttons as ButtonOptions

  useEffect(() => {
    setHeaderTheme('dark')
  })

  return (
    <div className="relative -mt-[11rem] flex text-white min-h-[100vh]" data-theme="dark">
      <div className="container relative z-10 self-center mt-32">
        <div className="max-w-[36.5rem]">
          {richText && <RichText className="mb-16" data={richText} enableGutter={false} />}
          <div className="flex flex-wrap gap-4">
            {Array.isArray(links) && links.length > 0 && links[0]?.link && (
              <ul className="flex md:justify-center gap-4">
                {links.map(({ link }, i) => {
                  return (
                    <li key={i}>
                      <CMSLink {...link} appearance={link.appearance || 'primary'} />
                    </li>
                  )
                })}
              </ul>
            )}
            {(contact?.show || schedule?.show) && (
              <div className="flex gap-4">
                {contact?.show && (
                  <ContactButton
                    variant={contact.variant || 'primary'}
                    size={contact.size || 'default'}
                  >
                    {contact.label || 'Contact'}
                  </ContactButton>
                )}
              </div>
            )}
          </div>
        </div>
      </div>
      <div className="absolute inset-0">
        {media && typeof media === 'object' && (
          <Media fill imgClassName="-z-10 object-cover brightness-75" priority resource={media} />
        )}
      </div>
    </div>
  )
}
