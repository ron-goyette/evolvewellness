import { BlocksFeature, type FeatureProviderServer } from '@payloadcms/richtext-lexical'
import { sharedLexicalFeaturesBase } from './lexicalFeaturesBase'
import { Banner } from '@/blocks/Banner/config'
import { Code } from '@/blocks/Code/config'
import { MediaBlock } from '@/blocks/MediaBlock/config'

// Shared features for use in collections/blocks that want BlocksFeature (with Banner, Code, MediaBlock)
export const sharedLexicalFeatures = ({
  rootFeatures,
}: {
  rootFeatures: FeatureProviderServer<unknown, unknown, unknown>[]
}) => [
  ...sharedLexicalFeaturesBase({ rootFeatures }),
  BlocksFeature({ blocks: [Banner, Code, MediaBlock] }),
]
