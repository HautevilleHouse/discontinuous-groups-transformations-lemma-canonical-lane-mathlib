import DiscontinuousGroupsTransformationsLemmaCanonicalLaneLean.MathlibObjects

namespace HautevilleHouse
namespace DiscontinuousGroupsTransformationsLemmaCanonicalLaneLean

structure TransformationsLemmaPackage where
  group : Type u
  action : group → DiscontinuousGroupSpace → DiscontinuousGroupSpace
  properlyDiscontinuous : Prop
  cocompact : Prop
  quotientSpaceCompact : Prop
  fundamentalDomainExists : Prop
  finiteGeneration : Prop

structure TransformationsLemmaEvidence (T : TransformationsLemmaPackage) where
  properlyDiscontinuousClosed : T.properlyDiscontinuous
  cocompactClosed : T.cocompact
  quotientSpaceCompactClosed : T.quotientSpaceCompact
  fundamentalDomainExistsClosed : T.fundamentalDomainExists
  finiteGenerationClosed : T.finiteGeneration

def TransformationsLemmaClosed (T : TransformationsLemmaPackage) : Prop :=
  T.properlyDiscontinuous ∧ T.cocompact ∧ T.quotientSpaceCompact ∧ T.fundamentalDomainExists ∧ T.finiteGeneration

theorem transformations_lemma_closed_from_evidence (T : TransformationsLemmaPackage) (E : TransformationsLemmaEvidence T) : TransformationsLemmaClosed T := by
  exact And.intro E.properlyDiscontinuousClosed (And.intro E.cocompactClosed (And.intro E.quotientSpaceCompactClosed (And.intro E.fundamentalDomainExistsClosed E.finiteGenerationClosed)))

end DiscontinuousGroupsTransformationsLemmaCanonicalLaneLean
end HautevilleHouse