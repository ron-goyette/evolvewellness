import { useEffect } from 'react'
import { buttonVariants } from '@/components/ui/button'
import { cn } from '@/utilities/ui'

interface ScheduleAppointmentButtonProps {
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

export const ScheduleAppointmentButton = ({
  className = '',
  children = 'Client Scheduling',
  variant = 'outline',
  size = 'default',
}: ScheduleAppointmentButtonProps) => {
  useEffect(() => {
    // Load the SimplePractice widget script
    const script = document.createElement('script')
    script.src = 'https://widget-cdn.simplepractice.com/assets/integration-1.0.js'
    script.async = true
    document.body.appendChild(script)

    return () => {
      // Cleanup script when component unmounts
      document.body.removeChild(script)
    }
  }, [])

  return (
    <a
      href="https://evolve-wellness.clientsecure.me"
      className={cn(buttonVariants({ variant, size }), 'spwidget-button', className)}
      data-spwidget-scope-id="d7d64256-fceb-4dd5-91f1-44f51c47229c"
      data-spwidget-scope-uri="evolve-wellness"
      data-spwidget-application-id="7c72cb9f9a9b913654bb89d6c7b4e71a77911b30192051da35384b4d0c6d505b"
      data-spwidget-scope-global
      data-spwidget-autobind
    >
      {children}
    </a>
  )
}

// Re-export the component as default export
export default ScheduleAppointmentButton
