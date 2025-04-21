'use client'

import React from 'react'

import type { Header as HeaderType } from '@/payload-types'

import { CMSLink } from '@/components/Link'
import { ScheduleAppointmentButton } from '@/components/ScheduleAppointmentButton'

export const HeaderNav: React.FC<{ data: HeaderType }> = ({ data }) => {
  const navItems = data?.navItems || []

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
