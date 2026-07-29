import canonicalLaneMathlib.AdmissibleClass

/-!
# Discontinuous Group Transformations Lemma on Transformation Group Space
-/

namespace HautevilleHouse
namespace DiscontinuousGroupsTransformationsLemmaCanonicalLaneLean

structure TransformationGroupPackage where
  group : Type u
  action : Type v
  properlyDiscontinuous : Prop
  stabilizerFinite : Prop
  localSectionExists : Prop
  orbitSpaceHausdorff : Prop
  coveringSpace : Prop

transformationGroupEvidence (G : TransformationGroupPackage) where
  properlyDiscontinuousClosed : G.properlyDiscontinuous
  stabilizerFiniteClosed : G.stabilizerFinite
  localSectionExistsClosed : G.localSectionExists
  orbitSpaceHausdorffClosed : G.orbitSpaceHausdorff
  coveringSpaceClosed : G.coveringSpace

def TransformationGroupClosed (G : TransformationGroupPackage) : Prop :=
  G.properlyDiscontinuous ∧ G.stabilizerFinite ∧ G.localSectionExists ∧
  G.orbitSpaceHausdorff ∧ G.coveringSpace

theorem transformation_group_closed_from_evidence
    (G : TransformationGroupPackage) (E : transformationGroupEvidence G) : 
    TransformationGroupClosed G := by
  exact And.intro E.properlyDiscontinuousClosed
    (And.intro E.stabilizerFiniteClosed
      (And.intro E.localSectionExistsClosed
        (And.intro E.orbitSpaceHausdorffClosed E.coveringSpaceClosed)))

end DiscontinuousGroupsTransformationsLemmaCanonicalLaneLean
end HautevilleHouse