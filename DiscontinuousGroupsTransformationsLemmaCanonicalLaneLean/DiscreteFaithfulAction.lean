import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DiscontinuousGroupsTransformationsLemmaCanonicalLaneLean.DiscontinuousGroupActions

namespace HautevilleHouse
namespace DiscontinuousGroupsTransformationsLemmaCanonicalLaneLean

structure DiscreteFaithfulAction {G : Type u} {X : Type v} [Group G] [TopologicalSpace X] (A : DiscontinuousGroupAction G X) where
  faithful : Function.Injective A.action
  discrete : DiscreteTopology G
  faithfulClosed : faithful
  discreteClosed : discrete
  actionFaithfulDiscreteClosed : Prop
  actionFaithfulDiscreteClosedTerm : actionFaithfulDiscreteClosed

def DiscreteFaithfulActionClosed {G : Type u} {X : Type v} [Group G] [TopologicalSpace X] {A : DiscontinuousGroupAction G X} (D : DiscreteFaithfulAction A) : Prop :=
  D.actionFaithfulDiscreteClosed

theorem discrete_faithful_action_closed_from_evidence
    {G : Type u} {X : Type v} [Group G] [TopologicalSpace X] {A : DiscontinuousGroupAction G X}
    (D : DiscreteFaithfulAction A) : DiscreteFaithfulActionClosed D :=
  D.actionFaithfulDiscreteClosedTerm

end DiscontinuousGroupsTransformationsLemmaCanonicalLaneLean
end HautevilleHouse