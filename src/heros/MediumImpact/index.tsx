'use client'
import { useHeaderTheme } from '@/providers/HeaderTheme'
import { useTheme } from '@/providers/Theme'
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
  variant?: 'primary' | 'secondary' | 'outline' | 'ghost' | null
}

type ButtonOptions = {
  contact?: ButtonConfig
  schedule?: ButtonConfig
}

export const MediumImpactHero: React.FC<Page['hero']> = ({
  links,
  media,
  richText,
  buttons = {},
}) => {
  const { setHeaderTheme } = useHeaderTheme()
  const { theme } = useTheme()
  const { contact, schedule } = buttons as ButtonOptions

  useEffect(() => {
    setHeaderTheme('dark')
  })

  return (
    <div data-theme={theme}>
      <div className="w-full h-[400px] relative">
        {media && typeof media === 'object' && (
          <Media fill imgClassName="object-cover w-full h-full" priority resource={media} />
        )}
      </div>
      <div className="container mt-12 bg-background text-foreground">
        <div className="max-w-[36.5rem]">
          {richText && <RichText className="mb-6" data={richText} enableGutter={false} />}
          <div className="flex flex-wrap gap-4">
            {Array.isArray(links) && links.length > 0 && (
              <ul className="flex gap-4">
                {links.map(({ link }, i) => {
                  return (
                    <li key={i}>
                      <CMSLink {...link} />
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
    </div>
  )
}
