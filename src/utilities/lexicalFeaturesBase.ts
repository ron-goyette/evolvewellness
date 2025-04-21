import {
  HeadingFeature,
  FixedToolbarFeature,
  InlineToolbarFeature,
  HorizontalRuleFeature,
  UnorderedListFeature,
  OrderedListFeature,
  ChecklistFeature,
  AlignFeature,
  BlockquoteFeature,
  type FeatureProviderServer,
} from '@payloadcms/richtext-lexical'

export const sharedLexicalFeaturesBase = ({
  rootFeatures,
}: {
  rootFeatures: FeatureProviderServer<unknown, unknown, unknown>[]
}) => [
  ...rootFeatures,
  HeadingFeature({ enabledHeadingSizes: ['h1', 'h2', 'h3', 'h4'] }),
  FixedToolbarFeature(),
  InlineToolbarFeature(),
  HorizontalRuleFeature(),
  UnorderedListFeature(),
  OrderedListFeature(),
  ChecklistFeature(),
  AlignFeature(),
  BlockquoteFeature(),
]
