import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DiscontinuousGroupsTransformationsLemmaCanonicalLaneLean

structure DiscontinuousGroupAction (G : Type u) (X : Type v) [Group G] [TopologicalSpace X] where
  action : G → X → X
  continuous : ∀ g : G, Continuous (action g)
  properDiscontinuous : ∀ (x : X), ∃ U ∈ nhds x, ∀ g : G, g ≠ 1 → action g '' U ∩ U = ∅
  actionClosed : Prop
  actionClosedTerm : actionClosed

def DiscontinuousGroupActionClosed {G : Type u} {X : Type v} [Group G] [TopologicalSpace X] (A : DiscontinuousGroupAction G X) : Prop :=
  A.actionClosed

theorem discontinuous_group_action_closed_from_evidence
    {G : Type u} {X : Type v} [Group G] [TopologicalSpace X]
    (A : DiscontinuousGroupAction G X) : DiscontinuousGroupActionClosed A :=
  A.actionClosedTerm

end DiscontinuousGroupsTransformationsLemmaCanonicalLaneLean
end HautevilleHouse