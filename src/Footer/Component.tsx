import { getCachedGlobal } from '@/utilities/getGlobals'
import Link from 'next/link'
import React from 'react'
import Image from 'next/image'

import type { Footer } from '@/payload-types'

// import { ThemeSelector } from '@/providers/Theme/ThemeSelector'
// import { CMSLink } from '@/components/Link'
import { Logo } from '@/components/Logo/Logo'
// import { ContactButton } from '@/components/ContactButton'
import { HiddenContactWidget } from '@/components/HiddenContactWidget'
import { CMSLink } from '@/components/Link'

type SocialLink = {
  platform: string
  url: string
  icon: { url: string }
}

type FooterNavItem = NonNullable<Footer['navItems']>[number]

export async function Footer() {
  const footerData = (await getCachedGlobal('footer', 1)()) as Footer
  const currentYear = new Date().getFullYear()

  return (
    <>
      <footer className="mt-auto bg-muted/50 text-muted-foreground">
        <div className="container py-8 flex flex-col md:grid md:grid-cols-3 md:items-start md:justify-between gap-8">
          {/* Left: Logo + Tagline */}
          <div className="flex flex-col items-center md:items-start flex-shrink-0 flex-grow-0 w-full md:w-auto mb-4 md:mb-0">
            <Link className="flex items-center" href="/">
              <span className="brightness-125 saturate-50 block">
                <Logo className="h-[80px] max-w-[200px] w-auto md:h-10 md:max-w-[9.375rem] md:w-full md:h-auto" />
              </span>
            </Link>
            {footerData.tagline && (
              <span className="text-sm md:text-lg font-medium text-muted-foreground text-center md:text-left w-full md:w-auto mt-2 md:mt-2">
                {footerData.tagline}
              </span>
            )}
          </div>

          {/* Center: Empty column for grid alignment */}
          <div className="hidden md:block" />

          {/* Right: Social Links + Footer Nav Links */}
          <div className="flex flex-col items-center md:items-end w-full md:w-auto mb-4 md:mb-0">
            {/* Row: Find Me On + Social Icons */}
            <div className="flex flex-col items-center md:flex-row md:justify-end md:items-center w-full md:w-auto gap-2 mb-2">
              <span className="font-semibold text-muted-foreground whitespace-nowrap md:mr-2">
                Find Me On:
              </span>
              {Array.isArray((footerData as { socialLinks?: SocialLink[] }).socialLinks) &&
                (footerData as { socialLinks?: SocialLink[] }).socialLinks!.length > 0 && (
                  <div className="flex flex-row items-center gap-2">
                    {(footerData as { socialLinks: SocialLink[] }).socialLinks.map(
                      (social, idx) => (
                        <a
                          key={idx}
                          href={social.url}
                          target="_blank"
                          rel="noopener noreferrer"
                          title={social.platform}
                          className="inline-block"
                        >
                          {social.icon && typeof social.icon === 'object' && social.icon.url && (
                            <Image
                              src={social.icon.url}
                              alt={social.platform}
                              height={30}
                              width={30}
                              className="h-6 md:h-[30px] w-auto object-contain footer-social-muted"
                              unoptimized
                              priority
                              sizes="(max-width: 767px) 24px, 30px"
                              style={{ maxHeight: 30, width: 'auto' }}
                            />
                          )}
                        </a>
                      ),
                    )}
                  </div>
                )}
            </div>
            {/* Footer Nav Links: Stacked vertically under social links */}
            {Array.isArray(footerData.navItems) && footerData.navItems.length > 0 && (
              <nav className="flex flex-col items-center md:items-end gap-1">
                {footerData.navItems.map((item, idx) => (
                  <CMSLink
                    key={item.id || idx}
                    {...item.link}
                    className="text-muted-foreground hover:text-foreground text-base py-1"
                    appearance="inline"
                  />
                ))}
              </nav>
            )}
          </div>
        </div>
        <div className="border-t border-muted-foreground/60 mt-4 py-4 text-center text-muted-foreground text-sm">
          &copy; {currentYear} {footerData.copyright}
        </div>
      </footer>
      <HiddenContactWidget />
    </>
  )
}
