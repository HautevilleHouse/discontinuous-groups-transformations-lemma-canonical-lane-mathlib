import DiscontinuousGroupsTransformationsLemmaCanonicalLaneLean.TheoremStatement
import CanonicalLaneMathlibCore
import Mathlib.Topology.Basic

namespace HautevilleHouse
namespace DiscontinuousGroupsTransformationsLemmaCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure DiscontinuousGroupSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure DiscontinuousGroupAdmittedObject where
  space : DiscontinuousGroupSpace
  properlyDiscontinuousAction : Prop
  convexCocompactSubgroup : Prop
  tessellationModel : Type
  tessellationTopology : TopologicalSpace tessellationModel
  fundamentalDomainCompactness : Prop
  conclusion : fundamentalDomainCompactness

structure DiscontinuousGroupEndgameState where
  object : DiscontinuousGroupAdmittedObject

def DiscontinuousGroupWitnessClosed (O : DiscontinuousGroupAdmittedObject) : Prop :=
  O.fundamentalDomainCompactness

end DiscontinuousGroupsTransformationsLemmaCanonicalLaneLean
end HautevilleHouse