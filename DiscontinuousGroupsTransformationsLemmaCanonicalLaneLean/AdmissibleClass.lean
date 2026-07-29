import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DiscontinuousGroupsTransformationsLemmaCanonicalLaneLean

structure DiscontinuousGroup where
  group : Type u
  action : group → Type v → Type v
  properlyDiscontinuous : Prop
  cocompact : Prop
  isometricAction : Prop

def DiscontinuousGroupClosed (G : DiscontinuousGroup) : Prop :=
  G.properlyDiscontinuous ∧ G.cocompact ∧ G.isometricAction

structure AdmissibleClass where
  object : DiscontinuousGroup
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  DiscontinuousGroupClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end DiscontinuousGroupsTransformationsLemmaCanonicalLaneLean
end HautevilleHouse