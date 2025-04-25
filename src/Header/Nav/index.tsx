'use client'

import React, { useState } from 'react'

import type { Header as HeaderType } from '@/payload-types'

import { CMSLink } from '@/components/Link'

type NavItemType = NonNullable<HeaderType['navItems']>[number]
type NavChildType = NonNullable<NavItemType['children']>[number]

const NavItem: React.FC<{
  link: NavItemType['link']
  id?: string | null
  children?: NavItemType['children']
  mobile: boolean
}> = ({ link, id, children, mobile }) => {
  const hasChildren = Array.isArray(children) && children.length > 0
  const [open, setOpen] = useState(mobile)
  let closeTimer: NodeJS.Timeout | null = null
  const handleMouseEnter = () => {
    if (!mobile && hasChildren) {
      if (closeTimer) clearTimeout(closeTimer)
      setOpen(true)
    }
  }
  const handleMouseLeave = () => {
    if (!mobile && hasChildren) {
      closeTimer = setTimeout(() => setOpen(false), 120)
    }
  }
  return (
    <li
      key={id}
      className={hasChildren ? 'relative group' : ''}
      onMouseEnter={handleMouseEnter}
      onMouseLeave={handleMouseLeave}
    >
      {mobile && hasChildren ? (
        <button
          type="button"
          className="flex items-center gap-2 text-2xl text-forground focus:outline-none"
          onClick={() => setOpen((prev: boolean) => !prev)}
          aria-haspopup="menu"
          aria-expanded={open}
        >
          {link.label}
          <span className={open ? 'rotate-180 transition-transform' : 'transition-transform'}>
            ▼
          </span>
        </button>
      ) : (
        <CMSLink
          {...link}
          appearance={link.appearance || 'link'}
          className={mobile ? 'text-2xl text-forground' : 'text-forground font-semibold'}
        />
      )}
      {hasChildren && (
        <ul
          className={
            mobile
              ? open
                ? 'flex flex-col items-center gap-4 mt-2'
                : 'hidden'
              : `${open ? 'block' : 'hidden'} absolute left-0 top-full mt-2 z-20 min-w-[180px] rounded border border-border bg-card text-popover-foreground shadow-md`
          }
          style={{ transition: 'opacity 0.15s', opacity: open ? 1 : 0 }}
        >
          {children?.map((child, j) => (
            <li key={child.id || j} className={mobile ? '' : undefined}>
              <CMSLink
                {...child.link}
                appearance={child.link.appearance || 'link'}
                className={
                  mobile
                    ? 'text-2xl text-forground'
                    : 'block px-4 py-2 text-forground hover:bg-accent hover:text-accent-foreground rounded font-semibold'
                }
              />
            </li>
          ))}
        </ul>
      )}
    </li>
  )
}

export const HeaderNav: React.FC<{ data: HeaderType; mobile?: boolean }> = ({
  data,
  mobile = false,
}) => {
  const navItems = data?.navItems || []

  return (
    <nav className={mobile ? 'flex flex-col items-center gap-8 mt-8' : 'flex gap-6 items-center'}>
      <ul className={mobile ? 'flex flex-col items-center gap-4' : 'flex gap-6 items-center'}>
        {navItems.map((item, i) => (
          <NavItem key={item.id || i} {...item} mobile={mobile} />
        ))}
      </ul>
      {!mobile && (
        <div className="ml-4 flex gap-2">
          {/* Removed: <ScheduleAppointmentButton variant="primary" size="sm" /> */}
        </div>
      )}
    </nav>
  )
}
