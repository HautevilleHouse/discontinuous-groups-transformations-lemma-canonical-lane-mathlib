import canonicalLaneMathlib.DiscontinuousGroupsTransformationsLemmaCanonicalLaneLean.SelbergLemma

namespace HautevilleHouse
namespace DiscontinuousGroupsTransformationsLemmaCanonicalLaneLean

structure DiscontinuousGroupTransformationLemma (G : DiscontinuousGroup) where
  fundamentalDomain : FundamentalDomain G
  selbergPackage : SelbergPackage G
  transformationStatement : Prop
  coversGeodesic : Prop
  mixingProperty : Prop

structure TransformationLemmaEvidence {G : DiscontinuousGroup}
    (T : DiscontinuousGroupTransformationLemma G) where
  fundamentalDomainClosed : FundamentalDomainClosed T.fundamentalDomain
  selbergClosed : SelbergClosed T.selbergPackage
  transformationStatementClosed : T.transformationStatement
  coversGeodesicClosed : T.coversGeodesic
  mixingPropertyClosed : T.mixingProperty

def TransformationLemmaClosed {G : DiscontinuousGroup}
    (T : DiscontinuousGroupTransformationLemma G) : Prop :=
  FundamentalDomainClosed T.fundamentalDomain ∧
  SelbergClosed T.selbergPackage ∧
  T.transformationStatement ∧
  T.coversGeodesic ∧
  T.mixingProperty

theorem transformation_lemma_closed_from_evidence
    {G : DiscontinuousGroup} (T : DiscontinuousGroupTransformationLemma G)
    (E : TransformationLemmaEvidence T) : TransformationLemmaClosed T := by
  exact And.intro E.fundamentalDomainClosed
    (And.intro E.selbergClosed
      (And.intro E.transformationStatementClosed
        (And.intro E.coversGeodesicClosed E.mixingPropertyClosed)))

end DiscontinuousGroupsTransformationsLemmaCanonicalLaneLean
end HautevilleHouse