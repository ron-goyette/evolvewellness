'use client'
import React from 'react'

import type { Page } from '@/payload-types'

import { CMSLink } from '@/components/Link'
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

export const LowImpactHero: React.FC<Page['hero']> = ({ links, richText, buttons = {} }) => {
  const { contact, schedule } = buttons as ButtonOptions

  return (
    <div className="container">
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
              {/* ScheduleAppointmentButton removed */}
            </div>
          )}
        </div>
      </div>
    </div>
  )
}
