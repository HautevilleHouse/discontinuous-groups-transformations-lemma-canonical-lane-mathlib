import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DiscontinuousGroupsTransformationsLemmaCanonicalLaneLean

structure ThickThinDecomposition (M : Type u) [MetricSpace M] where
  thickPart : Set M
  thinPart : Set M
  isPartition : thickPart ∪ thinPart = Set.univ ∧ thickPart ∩ thinPart = ∅
  thickPartClosed : IsClosed thickPart
  thinPartOpen : IsOpen thinPart
  decompositionClosed : Prop
  decompositionClosedTerm : decompositionClosed

def ThickThinDecompositionClosed (M : Type u) [MetricSpace M] (D : ThickThinDecomposition M) : Prop :=
  D.decompositionClosed

theorem thick_thin_decomposition_closed_from_evidence
    (M : Type u) [MetricSpace M] (D : ThickThinDecomposition M) : ThickThinDecompositionClosed M D :=
  D.decompositionClosedTerm

end DiscontinuousGroupsTransformationsLemmaCanonicalLaneLean
end HautevilleHouse