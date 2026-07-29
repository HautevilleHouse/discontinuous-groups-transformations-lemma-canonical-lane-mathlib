import canonicalLaneMathlib.DiscontinuousGroupsTransformationsLemmaCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace DiscontinuousGroupsTransformationsLemmaCanonicalLaneLean

structure SelbergPackage (G : DiscontinuousGroup) where
  finiteCovolume : Prop
  arithmeticity : Prop
  congruenceSubgroup : Prop
  strongApproximation : Prop

structure SelbergEvidence {G : DiscontinuousGroup} (S : SelbergPackage G) where
  finiteCovolumeClosed : S.finiteCovolume
  arithmeticityClosed : S.arithmeticity
  congruenceSubgroupClosed : S.congruenceSubgroup
  strongApproximationClosed : S.strongApproximation

def SelbergClosed {G : DiscontinuousGroup} (S : SelbergPackage G) : Prop :=
  S.finiteCovolume ∧ S.arithmeticity ∧ S.congruenceSubgroup ∧ S.strongApproximation

theorem selberg_closed_from_evidence
    {G : DiscontinuousGroup} (S : SelbergPackage G) (E : SelbergEvidence S) :
    SelbergClosed S := by
  exact And.intro E.finiteCovolumeClosed
    (And.intro E.arithmeticityClosed
      (And.intro E.congruenceSubgroupClosed E.strongApproximationClosed))

end DiscontinuousGroupsTransformationsLemmaCanonicalLaneLean
end HautevilleHouse