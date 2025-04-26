import { Button, type ButtonProps } from '@/components/ui/button'
import { cn } from '@/utilities/ui'
import Link from 'next/link'
import React from 'react'
import type { Page, Post } from '@/payload-types'

type CMSLinkType = {
  appearance?:
    | 'inline'
    | 'default'
    | 'outline'
    | 'secondary'
    | 'ghost'
    | 'link'
    | 'destructive'
    | 'primary'
    | 'danger'
    | 'secondaryCustom'
    | null
  children?: React.ReactNode
  className?: string
  label?: string | null
  newTab?: boolean | null
  reference?: {
    relationTo: 'pages' | 'posts'
    value: Page | Post | string | number
  } | null
  size?: ButtonProps['size'] | null
  type?: 'custom' | 'reference' | null
  url?: string | null
  onClick?: (e: React.MouseEvent<HTMLAnchorElement | HTMLButtonElement>) => void
}

export const CMSLink: React.FC<CMSLinkType> = (props) => {
  const {
    type,
    appearance = 'inline',
    children,
    className,
    label,
    newTab,
    reference,
    size: sizeFromProps,
    url,
    onClick,
  } = props

  const href =
    type === 'reference' && typeof reference?.value === 'object' && reference.value.slug
      ? `${reference?.relationTo !== 'pages' ? `/${reference?.relationTo}` : ''}/${reference.value.slug}`
      : url

  if (!href) return null

  const size = appearance === 'link' ? 'clear' : sizeFromProps
  const newTabProps = newTab ? { rel: 'noopener noreferrer', target: '_blank' } : {}

  // Handle null appearance by falling back to 'inline'
  const effectiveAppearance = appearance ?? 'inline'

  // Special case: intercept #contact to trigger SimplePractice Contact widget
  if (href === '#contact') {
    // Handler to trigger the Contact widget
    const handleClick = (e: React.MouseEvent<HTMLAnchorElement>) => {
      e.preventDefault()
      // Try to trigger the ContactButton's widget specifically
      const widgetButton = document.querySelector('.spwidget-button[data-spwidget-contact]')
      if (widgetButton) {
        ;(widgetButton as HTMLElement).click()
      } else {
        // fallback: open the external link
        window.open('https://evolve-wellness.clientsecure.me', '_blank')
      }
      if (onClick) onClick(e)
    }
    if (effectiveAppearance === 'inline') {
      return (
        <a className={cn(className, 'cursor-pointer')} href="#contact" onClick={handleClick}>
          {label && label}
          {children && children}
        </a>
      )
    }
    // For button-like nav links
    return (
      <Button asChild className={className} size={size} variant={effectiveAppearance}>
        <a className={cn(className, 'cursor-pointer')} href="#contact" onClick={handleClick}>
          {label && label}
          {children && children}
        </a>
      </Button>
    )
  }

  if (effectiveAppearance === 'inline') {
    return (
      <Link className={cn(className)} href={href || url || ''} {...newTabProps} onClick={onClick}>
        {label && label}
        {children && children}
      </Link>
    )
  }

  return (
    <Button asChild className={className} size={size} variant={effectiveAppearance}>
      <Link className={cn(className)} href={href || url || ''} {...newTabProps} onClick={onClick}>
        {label && label}
        {children && children}
      </Link>
    </Button>
  )
}
