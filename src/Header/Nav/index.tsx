'use client'

import React from 'react'
import { ChevronDown } from 'lucide-react'

import type { Header as HeaderType } from '@/payload-types'

import { CMSLink } from '@/components/Link'
import { ScheduleAppointmentButton } from '@/components/ScheduleAppointmentButton'

type NestedNavItemsProps = {
  items: NonNullable<HeaderType['navItems']>[number][]
  mobile?: boolean
  onNavigate?: () => void
}

function NestedNavItems({ items, mobile = false, onNavigate }: NestedNavItemsProps) {
  if (!items || items.length === 0) return null
  if (mobile) {
    return (
      <ul className="pl-4 flex flex-col gap-2">
        {items.map(({ link, children }, i) => (
          <li key={i}>
            <span onClick={onNavigate}>
              <CMSLink {...link} appearance="link" className="text-lg text-forground" />
            </span>
            {children && children.length > 0 && (
              <NestedNavItems items={children} mobile onNavigate={onNavigate} />
            )}
          </li>
        ))}
      </ul>
    )
  }
  return (
    <ul
      className="absolute left-0 top-full min-w-[180px] text-white bg-muted-foreground dark:bg-card border border-border rounded-lg shadow-lg z-20 \
      transition-all duration-200 ease-in-out transform translate-y-2 opacity-0 pointer-events-none group-hover:translate-y-0 group-hover:opacity-100 group-hover:pointer-events-auto"
    >
      {items.map(({ link, children }, i) => (
        <li key={i} className="relative group">
          <CMSLink
            {...link}
            appearance="link"
            className="block px-4 py-2 text-forground hover:bg-muted transition-colors rounded"
          />
          {children && children.length > 0 && <NestedNavItems items={children} />}
        </li>
      ))}
    </ul>
  )
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
        {navItems.map(({ link, children }, i) => (
          <div key={i} className="w-full flex flex-col items-start">
            <span onClick={onNavigate} className="w-full flex justify-center">
              <CMSLink {...link} appearance="link" className="text-2xl text-forground" />
            </span>
            {children && children.length > 0 && (
              <NestedNavItems items={children} mobile onNavigate={onNavigate} />
            )}
          </div>
        ))}
      </nav>
    )
  }

  return (
    <nav className="flex gap-6 items-center">
      {navItems.map(({ link, children }, i) => (
        <div key={i} className="relative group flex items-center">
          <CMSLink {...link} appearance="link" className="text-forground" />
          {children && children.length > 0 && (
            <>
              <ChevronDown className="ml-1 w-4 h-4 text-muted-foreground" />
              <NestedNavItems items={children} />
            </>
          )}
        </div>
      ))}
      <div className="ml-4 flex gap-2">
        <ScheduleAppointmentButton variant="primary" size="sm" />
      </div>
    </nav>
  )
}
