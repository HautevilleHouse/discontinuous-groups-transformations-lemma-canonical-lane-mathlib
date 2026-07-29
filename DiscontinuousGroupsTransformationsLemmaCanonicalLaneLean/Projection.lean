import DiscontinuousGroupsTransformationsLemmaCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace DiscontinuousGroupsTransformationsLemmaCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

def discontinuousGroupProjection : Projection DiscontinuousGroupEndgameState :=
  { toFun := fun x => x,
    idempotent := by intro x; rfl }

theorem discontinuous_group_projection_idempotent (x : DiscontinuousGroupEndgameState) :
    discontinuousGroupProjection.toFun (discontinuousGroupProjection.toFun x) = discontinuousGroupProjection.toFun x := by
  exact discontinuousGroupProjection.idempotent x

end DiscontinuousGroupsTransformationsLemmaCanonicalLaneLean
end HautevilleHouse