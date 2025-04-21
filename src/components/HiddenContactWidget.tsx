'use client'
import { ContactButton } from './ContactButton'

export function HiddenContactWidget() {
  return (
    <div style={{ display: 'none' }} aria-hidden="true">
      <ContactButton />
    </div>
  )
}
