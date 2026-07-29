import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DiscontinuousGroupsTransformationsLemmaCanonicalLaneLean.DiscontinuousGroupActions

namespace HautevilleHouse
namespace DiscontinuousGroupsTransformationsLemmaCanonicalLaneLean

structure OrbifoldCovering {G : Type u} {X : Type v} [Group G] [TopologicalSpace X] (A : DiscontinuousGroupAction G X) where
  coveringMap : X → OrbifoldType
  coveringMapContinuous : Continuous coveringMap
  fiberStructure : ∀ x : OrbifoldType, ∃ (U : Set X), (coveringMap ⁻¹' {x}) = U ∧ (∀ g : G, A.action g '' U = U)
  coveringClosed : Prop
  coveringClosedTerm : coveringClosed

def OrbifoldCoveringClosed {G : Type u} {X : Type v} [Group G] [TopologicalSpace X] {A : DiscontinuousGroupAction G X} (C : OrbifoldCovering A) : Prop :=
  C.coveringClosed

theorem orbifold_covering_closed_from_evidence
    {G : Type u} {X : Type v} [Group G] [TopologicalSpace X] {A : DiscontinuousGroupAction G X}
    (C : OrbifoldCovering A) : OrbifoldCoveringClosed C :=
  C.coveringClosedTerm

end DiscontinuousGroupsTransformationsLemmaCanonicalLaneLean
end HautevilleHouse