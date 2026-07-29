import canonicalLaneMathlib.DiscontinuousGroupsTransformationsLemmaCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace DiscontinuousGroupsTransformationsLemmaCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  DiscontinuousGroupClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.property

end DiscontinuousGroupsTransformationsLemmaCanonicalLaneLean
end HautevilleHouse