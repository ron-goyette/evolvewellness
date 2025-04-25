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

const renderFooterNavItems = (items: FooterNavItem[]) => {
  return (
    <ul className="flex flex-col md:flex-row gap-2 md:gap-6">
      {items.map((item, i: number) => {
        const hasChildren = Array.isArray(item.children) && item.children.length > 0
        return (
          <li key={item.id || i} className="relative group">
            <CMSLink {...item.link} appearance="link" className="text-forground" />
            {hasChildren && (
              <div className="pl-4 mt-2 border-l">
                {renderFooterNavItems(item.children as FooterNavItem[])}
              </div>
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
          {/* Mobile: Find Me On + Social (above logo/tagline, right-aligned) */}
          <div className="flex flex-row items-center justify-end gap-2 w-full mb-4 md:hidden">
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
                          className="h-6 md:h-[30px] w-auto object-contain footer-social-muted"
                          unoptimized
                          priority
                          sizes="(max-width: 767px) 24px, 30px"
                          style={{ maxHeight: 30, width: 'auto' }}
                        />
                      )}
                    </a>
                  ))}
                </div>
              )}
          </div>
          {/* Left: Logo + Tagline */}
          <div className="flex flex-col items-start flex-shrink-0 flex-grow-0 md:w-auto w-full mb-4 md:mb-0">
            <Link className="flex items-center" href="/">
              <span className="brightness-125 saturate-50 block">
                <Logo className="h-[80px] max-w-[200px] w-auto md:h-10 md:max-w-[9.375rem] md:w-full md:h-auto" />
              </span>
            </Link>
            {footerData.tagline && (
              <span className="text-sm md:text-lg font-medium text-muted-foreground text-left w-full md:w-auto mt-2 md:mt-2">
                {footerData.tagline}
              </span>
            )}
          </div>
          {/* Spacer for center (empty) */}
          <div className="hidden md:block flex-1" />
          {/* Right: Social (desktop only) */}
          <div className="hidden md:flex flex-row items-center justify-end gap-2 w-full md:w-auto">
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
                          className="h-6 md:h-[30px] w-auto object-contain footer-social-muted"
                          unoptimized
                          priority
                          sizes="(max-width: 767px) 24px, 30px"
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
