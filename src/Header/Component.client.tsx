'use client'
import { useHeaderTheme } from '@/providers/HeaderTheme'
import Link from 'next/link'
import { usePathname } from 'next/navigation'
import React, { useEffect, useState, useCallback } from 'react'
import { Menu, X } from 'lucide-react'

import type { Header } from '@/payload-types'

import { Logo } from '@/components/Logo/Logo'
import { HeaderNav } from './Nav'
import { ThemeSelector } from '@/providers/Theme/ThemeSelector'
import { ScheduleAppointmentButton } from '@/components/ScheduleAppointmentButton'

interface HeaderClientProps {
  data: Header
}

export const HeaderClient: React.FC<HeaderClientProps> = ({ data }) => {
  /* Storing the value in a useState to avoid hydration errors */
  const [theme, setTheme] = useState<string | null>(null)
  const { headerTheme, setHeaderTheme } = useHeaderTheme()
  const pathname = usePathname()
  const [mobileMenuOpen, setMobileMenuOpen] = useState(false)
  const openMenu = useCallback(() => setMobileMenuOpen(true), [])
  const closeMenu = useCallback(() => setMobileMenuOpen(false), [])

  useEffect(() => {
    setHeaderTheme(null)
    // eslint-disable-next-line react-hooks/exhaustive-deps
  }, [pathname])

  useEffect(() => {
    if (headerTheme && headerTheme !== theme) setTheme(headerTheme)
    // eslint-disable-next-line react-hooks/exhaustive-deps
  }, [headerTheme])

  return (
    <header className="container relative z-20" {...(theme ? { 'data-theme': theme } : {})}>
      <div className="py-4 sm:py-6 flex justify-between items-center min-h-[56px]">
        <Link href="/">
          <Logo loading="eager" priority="high" className="w-24 h-10 md:w-32 md:h-12" />
        </Link>
        {/* Desktop Nav */}
        <div className="hidden md:flex items-center gap-2">
          <HeaderNav data={data} />
          <ThemeSelector />
        </div>
        {/* Hamburger for mobile */}
        <button
          className="md:hidden p-3 rounded focus:outline-none focus:ring-2 focus:ring-ring"
          aria-label="Open menu"
          onClick={openMenu}
        >
          <Menu className="w-10 h-10" />
        </button>
      </div>
      {/* Mobile Menu Overlay */}
      {mobileMenuOpen && (
        <div className="fixed inset-0 z-50 bg-background/95 flex flex-col items-center justify-center transition-all duration-200">
          <button
            className="absolute top-6 right-6 p-2 rounded focus:outline-none focus:ring-2 focus:ring-ring"
            aria-label="Close menu"
            onClick={closeMenu}
          >
            <X className="w-7 h-7" />
          </button>
          <HeaderNav data={data} mobile onNavigate={closeMenu} />
          <div className="mt-8 flex flex-col items-center gap-6">
            <ScheduleAppointmentButton variant="primary" size="lg" />
            <ThemeSelector />
          </div>
        </div>
      )}
    </header>
  )
}
