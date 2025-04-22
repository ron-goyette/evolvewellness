'use client'

import React, { useEffect, useState } from 'react'
import { Banner } from '@payloadcms/ui/elements/Banner'
import { useAuth } from '@payloadcms/ui'
import './index.scss'

const greetings = [
  'Welcome back,',
  'Hello,',
  'Great to see you,',
  'Hi there,',
  'Greetings,',
  'Salutations,',
  'Hey,',
  'Nice to have you here,',
  'Glad you are here,',
  "What's up,",
  'Howdy,',
  'Ahoy,',
  'Good to see you,',
  'Welcome,',
]

const affirmations = [
  "Don't forget you are putting a dent in the world with what you do everyday!",
  'Your work makes a difference—keep it up!',
  'You are valued and appreciated.',
  'Every day you are making progress.',
  'Your dedication inspires others.',
  'You bring something special to this team.',
  'Your positive attitude is contagious.',
  'You are capable of amazing things.',
  'Thank you for being you!',
  'Your efforts do not go unnoticed.',
  'You are stronger than you think.',
  'Keep shining your light!',
  'You are making an impact.',
  'Believe in yourself—you are doing great!',
]

const baseClass = 'before-dashboard'

const BeforeDashboard: React.FC = () => {
  const { user } = useAuth()
  const userName = user?.name

  const [greeting, setGreeting] = useState(greetings[0])
  const [affirmation, setAffirmation] = useState(affirmations[0])
  useEffect(() => {
    setGreeting(greetings[Math.floor(Math.random() * greetings.length)])
    setAffirmation(affirmations[Math.floor(Math.random() * affirmations.length)])
  }, [])

  return (
    <div className={baseClass}>
      <Banner className={`${baseClass}__banner`} type="success">
        <h4>
          {greeting} {userName ? userName : 'Admin'}! {affirmation}
        </h4>
      </Banner>
      {/* You can add more dashboard content here */}
    </div>
  )
}

export default BeforeDashboard
