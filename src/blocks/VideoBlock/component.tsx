import React from 'react'

type VideoBlockProps = {
  url: string
  caption?: string
}

function getEmbedUrl(url: string): string {
  if (url.includes('youtube.com') || url.includes('youtu.be')) {
    // Extract YouTube video ID
    let videoId = ''
    if (url.includes('youtube.com')) {
      const match = url.match(/[?&]v=([^&]+)/)
      videoId = match && match[1] ? match[1] : ''
    } else {
      const parts = url.split('/')
      videoId = parts[parts.length - 1] || ''
    }
    return `https://www.youtube.com/embed/${videoId}`
  } else if (url.includes('vimeo.com')) {
    const parts = url.split('/')
    const videoId = parts[parts.length - 1] || ''
    return `https://player.vimeo.com/video/${videoId}`
  }
  return url // fallback
}

export const VideoBlock: React.FC<VideoBlockProps> = ({ url, caption }) => {
  const embedUrl = getEmbedUrl(url)
  return (
    <div className="container mx-auto max-w-5xl my-8">
      <div className="aspect-video w-full">
        <iframe
          src={embedUrl}
          title="Embedded Video"
          frameBorder={0}
          allow="autoplay; encrypted-media"
          allowFullScreen
          className="w-full h-full"
        />
      </div>
      {caption && <div className="text-center text-sm text-muted-foreground mt-2">{caption}</div>}
    </div>
  )
}

export default VideoBlock
