import HautevilleHouse.DiscontinuousGroupsTransformationsLemmaCanonicalLaneLean.ReviewerBridge

namespace HautevilleHouse
namespace DiscontinuousGroupsTransformationsLemmaCanonicalLaneLean

structure TheoremStatement where
  sourceKey : String
  theoremName : String
  theoremObject : String
  classicalBoundary : String
  manifoldConstrainedStatement : String
  certificateLane : String
  carriedRemainder : String
  deriving Repr, DecidableEq

def sourceTheoremStatement : TheoremStatement := {
  sourceKey := "discontinuous-groups-transformations-lemma-canonical-lane",
  theoremName := "Discontinuous Groups Transformations Lemma",
  theoremObject := "admissible-class bridge for the transformations lemma",
  classicalBoundary := "classical source boundary carried by formalizationCertificate.theoremBoundaryOpen",
  manifoldConstrainedStatement := "manifold-constrained theorem certificate internalized through reviewer bridge",
  certificateLane := "manifold_constrained",
  carriedRemainder := "classical source boundary carried as remainder"
}

end DiscontinuousGroupsTransformationsLemmaCanonicalLaneLean
end HautevilleHouse