import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DiscontinuousGroupsTransformationsLemmaCanonicalLaneLean

def DiscontinuousGroupTransformationClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem discontinuous_group_transformation_endgame (A : AdmissibleClass) :
    DiscontinuousGroupTransformationClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end DiscontinuousGroupsTransformationsLemmaCanonicalLaneLean
end HautevilleHouse