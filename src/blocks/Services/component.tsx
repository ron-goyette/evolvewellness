import React from 'react'
import RichText from '@/components/RichText'
import { CMSLink } from '@/components/Link'
import type { ServicesBlock as ServicesBlockProps } from '@/payload-types'

export const Services: React.FC<ServicesBlockProps> = (props) => {
  const { heading, services, backgroundImage } = props

  // Get the background image URL if it exists
  const backgroundImageUrl =
    backgroundImage && typeof backgroundImage === 'object' && backgroundImage.url
      ? backgroundImage.url
      : null

  return (
    <div className="relative py-16">
      {/* Background Image */}
      <div
        className="absolute inset-0"
        style={
          backgroundImageUrl
            ? {
                backgroundImage: `url(${backgroundImageUrl})`,
                backgroundSize: 'cover',
                backgroundPosition: 'center',
                backgroundRepeat: 'no-repeat',
              }
            : undefined
        }
      >
        {/* Overlay */}
        <div
          className={
            backgroundImageUrl
              ? 'absolute inset-0 bg-background/60'
              : 'absolute inset-0 bg-background'
          }
        />
      </div>

      {/* Content */}
      <div className="relative container">
        {/* Main Heading */}
        <h2 className="text-4xl uppercase text-foreground text-center mb-12">{heading}</h2>

        {/* Services Grid */}
        <div className="grid grid-cols-1 md:grid-cols-3 gap-8">
          {services &&
            services.map((service, index) => (
              <div
                key={index}
                className="bg-card text-card-foreground shadow-sm rounded-2xl p-6 grid grid-rows-[auto_1fr_auto] gap-4 min-h-[400px]"
              >
                <h3 className="text-xl text-foreground">{service.subheading}</h3>
                {service.description && (
                  <RichText
                    data={service.description}
                    enableGutter={false}
                    className="text-base text-muted-foreground leading-relaxed"
                  />
                )}
                {service.link && <CMSLink {...service.link} />}
              </div>
            ))}
        </div>
      </div>
    </div>
  )
}

export default Services
