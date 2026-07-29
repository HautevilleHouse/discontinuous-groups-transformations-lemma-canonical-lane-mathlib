import canonicalLaneMathlib.AdmissibleClass

/-!
# Fundamental Domain Lemma
-/

namespace HautevilleHouse
namespace DiscontinuousGroupsTransformationsLemmaCanonicalLaneLean

structure FundamentalDomainPackage {G : TransformationGroupPackage} where
  domain : Type u
  coveringMap : Type v
  tilingProperty : Prop
  measurePreserving : Prop
  boundaryNull : Prop
  fundamentalDomainExists : Prop

structure FundamentalDomainEvidence {G : TransformationGroupPackage}
    (F : FundamentalDomainPackage G) where
  tilingPropertyClosed : F.tilingProperty
  measurePreservingClosed : F.measurePreserving
  boundaryNullClosed : F.boundaryNull
  fundamentalDomainExistsClosed : F.fundamentalDomainExists

def FundamentalDomainClosed {G : TransformationGroupPackage}
    (F : FundamentalDomainPackage G) : Prop :=
  F.tilingProperty ∧ F.measurePreserving ∧ F.boundaryNull ∧ F.fundamentalDomainExists

theorem fundamental_domain_closed_from_evidence
    {G : TransformationGroupPackage} (F : FundamentalDomainPackage G)
    (E : FundamentalDomainEvidence F) : FundamentalDomainClosed F := by
  exact And.intro E.tilingPropertyClosed
    (And.intro E.measurePreservingClosed
      (And.intro E.boundaryNullClosed E.fundamentalDomainExistsClosed))

end DiscontinuousGroupsTransformationsLemmaCanonicalLaneLean
end HautevilleHouse