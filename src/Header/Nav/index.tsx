'use client'

import React from 'react'

import type { Header as HeaderType } from '@/payload-types'

import { CMSLink } from '@/components/Link'
import { ScheduleAppointmentButton } from '@/components/ScheduleAppointmentButton'

export const HeaderNav: React.FC<{ data: HeaderType; mobile?: boolean }> = ({
  data,
  mobile = false,
}) => {
  const navItems = data?.navItems || []

  return (
    <nav className={mobile ? 'flex flex-col items-center gap-8 mt-8' : 'flex gap-6 items-center'}>
      {navItems.map(({ link, id }, i) => (
        <CMSLink
          key={id || i}
          {...link}
          appearance="link"
          className={mobile ? 'text-2xl text-forground' : 'text-forground'}
        />
      ))}
      {!mobile && (
        <div className="ml-4 flex gap-2">
          <ScheduleAppointmentButton variant="primary" size="sm" />
        </div>
      )}
    </nav>
  )
}
