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

const renderFooterNavItems = (items: any[]) => {
  return (
    <ul className="flex flex-col md:flex-row gap-2 md:gap-6">
      {items.map((item: any, i: number) => {
        const hasChildren = Array.isArray(item.children) && item.children.length > 0
        return (
          <li key={item.id || i} className="relative group">
            <CMSLink {...item.link} appearance="link" className="text-forground" />
            {hasChildren && (
              <div className="pl-4 mt-2 border-l">{renderFooterNavItems(item.children)}</div>
            )}
          </li>
        )
      })}
    </ul>
  )
}

export async function Footer() {
  const footerData = (await getCachedGlobal('footer', 1)()) as Footer
  const currentYear = new Date().getFullYear()

  return (
    <>
      <footer className="mt-auto bg-muted/50 text-muted-foreground">
        <div className="container py-8 flex flex-col md:flex-row md:items-center md:justify-between">
          <div className="flex flex-row items-center gap-6 flex-shrink-0 flex-grow-0">
            <Link className="flex items-center" href="/">
              <span className="brightness-125 saturate-50">
                <Logo />
              </span>
            </Link>
            {footerData.tagline && (
              <span className="text-lg font-medium text-muted-foreground text-left align-middle truncate ml-4">
                {footerData.tagline}
              </span>
            )}
          </div>
          <div className="flex flex-row items-center gap-2 flex-shrink-0 flex-grow-0 ml-auto">
            {/* Render nav items if present */}
            {Array.isArray(footerData.navItems) && footerData.navItems.length > 0 && (
              <nav className="mr-6">{renderFooterNavItems(footerData.navItems)}</nav>
            )}
            <span className="font-semibold text-muted-foreground whitespace-nowrap mr-2">
              Find Me On:
            </span>
            {Array.isArray((footerData as { socialLinks?: SocialLink[] }).socialLinks) &&
              (footerData as { socialLinks?: SocialLink[] }).socialLinks!.length > 0 && (
                <div className="flex flex-row items-center gap-2">
                  {(footerData as { socialLinks: SocialLink[] }).socialLinks.map((social, idx) => (
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
                          className="h-[30px] w-auto object-contain footer-social-muted"
                          unoptimized
                          priority
                          sizes="30px"
                          style={{ maxHeight: 30, width: 'auto' }}
                        />
                      )}
                    </a>
                  ))}
                </div>
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
