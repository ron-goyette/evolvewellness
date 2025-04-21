import React from 'react'

export interface CredentialItemProps {
  state?: string
  licenseNumber?: string
  licenseName?: string
  issuingAuthority?: string
  education?: string
  certification?: string
  description?: string
}

export const CredentialItem: React.FC<CredentialItemProps> = ({
  state,
  licenseNumber,
  licenseName,
  issuingAuthority,
  education,
  certification,
  description,
}) => {
  return (
    <div className="w-full border rounded-2xl p-4 mb-4 bg-card text-card-foreground shadow-sm">
      <dl className="space-y-1">
        {(licenseName || licenseNumber) && (
          <div className="flex flex-row gap-6">
            {licenseName && (
              <div>
                <dt className="font-bold text-sm text-foreground">License</dt>
                <dd className="text-base text-foreground">{licenseName}</dd>
              </div>
            )}
            {licenseNumber && (
              <div>
                <dt className="font-bold text-sm text-foreground">License Number</dt>
                <dd className="text-base text-foreground">{licenseNumber}</dd>
              </div>
            )}
          </div>
        )}
        {(state || issuingAuthority) && (
          <div className="flex flex-row gap-6">
            {state && (
              <div>
                <dt className="font-bold text-sm text-foreground">State</dt>
                <dd className="text-base text-foreground">{state}</dd>
              </div>
            )}
            {issuingAuthority && (
              <div>
                <dt className="font-bold text-sm text-foreground">Issuing Authority</dt>
                <dd className="text-base text-foreground">{issuingAuthority}</dd>
              </div>
            )}
          </div>
        )}
        {education && (
          <div>
            <dt className="font-bold text-sm text-foreground">Education</dt>
            <dd className="text-base text-foreground">{education}</dd>
          </div>
        )}
        {certification && (
          <div>
            <dt className="font-bold text-sm text-foreground">Certification</dt>
            <dd className="text-base text-foreground">{certification}</dd>
          </div>
        )}
        {description && (
          <div>
            <dt className="font-bold text-sm text-foreground">Notes</dt>
            <dd className="text-base text-foreground">{description}</dd>
          </div>
        )}
      </dl>
    </div>
  )
}

export default CredentialItem
