'use client'

import React from 'react'
import { ChevronDown } from 'lucide-react'

import type { Header as HeaderType } from '@/payload-types'

import { CMSLink } from '@/components/Link'
import { ScheduleAppointmentButton } from '@/components/ScheduleAppointmentButton'

const renderNavItems = (items: any[], mobile: boolean, onNavigate?: () => void) => {
  return items.map((item, i) => {
    const hasChildren = Array.isArray(item.children) && item.children.length > 0
    return (
      <div key={item.id || i} className={hasChildren ? 'relative group' : ''}>
        <CMSLink
          {...item.link}
          appearance="link"
          className={mobile ? 'text-2xl text-forground' : 'text-forground'}
          onClick={onNavigate}
        />
        {hasChildren && (
          <div
            className={
              mobile
                ? 'pl-4 border-l mt-2'
                : 'absolute left-0 top-full mt-2 hidden group-hover:block bg-background shadow-lg rounded'
            }
          >
            {renderNavItems(item.children, mobile, onNavigate)}
          </div>
        )}
      </div>
    )
  })
}

export const HeaderNav: React.FC<{
  data: HeaderType
  mobile?: boolean
  onNavigate?: () => void
}> = ({ data, mobile = false, onNavigate }) => {
  const navItems = data?.navItems || []

  if (mobile) {
    return (
      <nav className="flex flex-col items-center gap-8 mt-8">
        {renderNavItems(navItems, true, onNavigate)}
      </nav>
    )
  }

  return (
    <nav className="flex gap-6 items-center">
      {renderNavItems(navItems, false, onNavigate)}
      <div className="ml-4 flex gap-2">
        <ScheduleAppointmentButton variant="primary" size="sm" />
      </div>
    </nav>
  )
}
