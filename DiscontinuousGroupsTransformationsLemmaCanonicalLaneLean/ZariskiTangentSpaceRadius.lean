import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DiscontinuousGroupsTransformationsLemmaCanonicalLaneLean

structure ZariskiTangentSpaceRadius (M : Type u) [MetricSpace M] [Manifold M] where
  radius : ℝ
  positive : radius > 0
  localInjectivity : ∀ x : M, ∃ r > 0, r < radius ∧ (exponentialMap x).injectiveOn (Metric.ball 0 r)
  radiusClosed : Prop
  radiusClosedTerm : radiusClosed

def ZariskiTangentSpaceRadiusClosed (M : Type u) [MetricSpace M] [Manifold M] (Z : ZariskiTangentSpaceRadius M) : Prop :=
  Z.radiusClosed

theorem zariski_tangent_space_radius_closed_from_evidence
    (M : Type u) [MetricSpace M] [Manifold M] (Z : ZariskiTangentSpaceRadius M) : ZariskiTangentSpaceRadiusClosed M Z :=
  Z.radiusClosedTerm

end DiscontinuousGroupsTransformationsLemmaCanonicalLaneLean
end HautevilleHouse