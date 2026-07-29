import DiscontinuousGroupsTransformationsLemmaCanonicalLaneLean.TransformationsLemma

namespace HautevilleHouse
namespace DiscontinuousGroupsTransformationsLemmaCanonicalLaneLean

structure CohomologyClosurePackage {T : TransformationsLemmaPackage} where
  groupCohomology : Type u
  actionOnCoefficients : Type v
  cohomologyVanishing : Prop
  spectralSequenceDegenerates : Prop
  eilenbergMoore : Prop

structure CohomologyClosureEvidence {T : TransformationsLemmaPackage} (C : CohomologyClosurePackage T) where
  cohomologyVanishingClosed : C.cohomologyVanishing
  spectralSequenceDegeneratesClosed : C.spectralSequenceDegenerates
  eilenbergMooreClosed : C.eilenbergMoore

def CohomologyClosureClosed {T : TransformationsLemmaPackage} (C : CohomologyClosurePackage T) : Prop :=
  C.cohomologyVanishing ∧ C.spectralSequenceDegenerates ∧ C.eilenbergMoore

theorem cohomology_closure_closed_from_evidence {T : TransformationsLemmaPackage} (C : CohomologyClosurePackage T) (E : CohomologyClosureEvidence C) : CohomologyClosureClosed C := by
  exact And.intro E.cohomologyVanishingClosed (And.intro E.spectralSequenceDegeneratesClosed E.eilenbergMooreClosed)

end DiscontinuousGroupsTransformationsLemmaCanonicalLaneLean
end HautevilleHouse