'use client'

import React from 'react'

import type { Header as HeaderType } from '@/payload-types'

import { CMSLink } from '@/components/Link'
import { ScheduleAppointmentButton } from '@/components/ScheduleAppointmentButton'

export const HeaderNav: React.FC<{
  data: HeaderType
  mobile?: boolean
  onNavigate?: () => void
}> = ({ data, mobile = false, onNavigate }) => {
  const navItems = data?.navItems || []

  if (mobile) {
    return (
      <nav className="flex flex-col items-center gap-8 mt-8">
        {navItems.map(({ link }, i) => (
          <span key={i} onClick={onNavigate} className="w-full flex justify-center">
            <CMSLink {...link} appearance="link" className="text-2xl text-forground" />
          </span>
        ))}
      </nav>
    )
  }

  return (
    <nav className="flex gap-6 items-center">
      {navItems.map(({ link }, i) => {
        return <CMSLink key={i} {...link} appearance="link" className="text-forground" />
      })}
      <div className="ml-4 flex gap-3">
        <ScheduleAppointmentButton variant="primary" size="sm" />
      </div>
    </nav>
  )
}
