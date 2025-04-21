'use client'

import React from 'react'
import { useTheme } from '..'
import { Sun, Moon } from 'lucide-react'

export const ThemeSelector: React.FC = () => {
  const { theme, setTheme } = useTheme()
  const isDark = theme === 'dark'
  const [isMounted, setIsMounted] = React.useState(false)

  React.useEffect(() => {
    setIsMounted(true)
  }, [])

  if (!isMounted) {
    return <div className="w-16 h-6" />
  }

  const toggleTheme = () => {
    setTheme(isDark ? 'light' : 'dark')
  }

  return (
    <button
      type="button"
      aria-label={isDark ? 'Switch to light mode' : 'Switch to dark mode'}
      onClick={toggleTheme}
      className={
        'relative w-16 h-6 flex items-center rounded-full transition-colors duration-100 ' +
        (isDark ? 'bg-neutral-800' : 'bg-neutral-200')
      }
    >
      <div className="flex w-full h-full items-center justify-between px-2 relative">
        <Moon className="w-3 h-3 text-gray-300" />
        <Sun className="w-3 h-3 text-gray-400" />
        <span
          className={
            'absolute top-1/2 left-0 h-6 w-9 bg-muted-foreground shadow-md transition-transform duration-100 -translate-y-1/2 rounded-full ' +
            (isDark ? 'translate-x-[1.75rem]' : 'translate-x-0')
          }
        />
      </div>
    </button>
  )
}
