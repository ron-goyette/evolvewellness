import { useEffect } from 'react'
import { buttonVariants } from '@/components/ui/button'
import { cn } from '@/utilities/ui'

interface ContactButtonProps {
  className?: string
  children?: React.ReactNode
  variant?:
    | 'default'
    | 'destructive'
    | 'outline'
    | 'secondary'
    | 'ghost'
    | 'link'
    | 'primary'
    | 'secondaryCustom'
    | 'danger'
  size?: 'default' | 'sm' | 'lg' | 'icon' | 'clear'
}

export const ContactButton = ({
  className = '',
  children = 'Contact',
  variant = 'default',
  size = 'default',
}: ContactButtonProps) => {
  useEffect(() => {
    // Load the SimplePractice widget script
    const script = document.createElement('script')
    script.src = 'https://widget-cdn.simplepractice.com/assets/integration-1.0.js'
    script.async = true
    document.body.appendChild(script)

    // Commented out: Injected CSS for widget button styling
    /*
    const style = document.createElement('style')
    style.textContent = `
      .spwidget-button-wrapper { text-align: center }
      .spwidget-button:hover { background: #fff; color: #0F5AA0 }
      .spwidget-button:active { 
        color: rgba(255, 255, 255, .75) !important;
        box-shadow: 0 1px 3px rgba(0, 0, 0, .15) inset
      }
    `
    document.head.appendChild(style)
    */

    return () => {
      // Cleanup when component unmounts
      document.body.removeChild(script)
      // if (style) document.head.removeChild(style)
    }
  }, [])

  return (
    <div className="spwidget-button-wrapper">
      <a
        href="https://evolve-wellness.clientsecure.me"
        className={cn(buttonVariants({ variant, size }), 'spwidget-button', className)}
        data-spwidget-scope-id="d7d64256-fceb-4dd5-91f1-44f51c47229c"
        data-spwidget-scope-uri="evolve-wellness"
        data-spwidget-application-id="7c72cb9f9a9b913654bb89d6c7b4e71a77911b30192051da35384b4d0c6d505b"
        data-spwidget-channel="embedded_widget"
        data-spwidget-scope-global
        data-spwidget-autobind
        data-spwidget-contact
      >
        {children}
      </a>
    </div>
  )
}

export default ContactButton
