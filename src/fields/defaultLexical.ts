import { lexicalEditor } from '@payloadcms/richtext-lexical'
import { sharedLexicalFeatures } from '@/utilities/lexicalFeatures'

export const defaultLexical = lexicalEditor({
  features: sharedLexicalFeatures,
})
