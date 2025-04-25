'use client'

import React, { useState } from 'react'

import type { Header as HeaderType } from '@/payload-types'

import { CMSLink } from '@/components/Link'

export const HeaderNav: React.FC<{ data: HeaderType; mobile?: boolean }> = ({
  data,
  mobile = false,
}) => {
  const navItems = data?.navItems || []

  // Helper to render nav items recursively
  const renderNavItems = (items: typeof navItems) => (
    <ul className={mobile ? 'flex flex-col items-center gap-4' : 'flex gap-6 items-center'}>
      {items.map(({ link, id, children }, i) => {
        const hasChildren = Array.isArray(children) && children.length > 0
        // For mobile, use local state to expand/collapse
        const [open, setOpen] = useState(mobile)
        // For desktop, add a timer for delayed close
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
            key={id || i}
            className={hasChildren ? 'relative group' : ''}
            onMouseEnter={handleMouseEnter}
            onMouseLeave={handleMouseLeave}
          >
            {mobile && hasChildren ? (
              <button
                type="button"
                className="flex items-center gap-2 text-2xl text-forground font-semibold focus:outline-none"
                onClick={() => setOpen((prev) => !prev)}
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
      })}
    </ul>
  )

  return (
    <nav className={mobile ? 'flex flex-col items-center gap-8 mt-8' : 'flex gap-6 items-center'}>
      {renderNavItems(navItems)}
      {!mobile && (
        <div className="ml-4 flex gap-2">
          {/* Removed: <ScheduleAppointmentButton variant="primary" size="sm" /> */}
        </div>
      )}
    </nav>
  )
}
