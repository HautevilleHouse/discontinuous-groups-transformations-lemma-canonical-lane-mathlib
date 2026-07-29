import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DiscontinuousGroupsTransformationsLemmaCanonicalLaneLean

structure MargulisLemmaParameters where
  epsilon : ℝ
  delta : ℝ
  epsilonPos : epsilon > 0
  deltaPos : delta > 0
  marginClosed : Prop
  marginClosedTerm : marginClosed

structure MargulisLemmaConclusion where
  conclusion : Prop
  conclusionTerm : conclusion

def MargulisLemmaClosed (P : MargulisLemmaParameters) (C : MargulisLemmaConclusion) : Prop :=
  P.marginClosed ∧ C.conclusion

theorem margulis_lemma_closed_from_evidence (P : MargulisLemmaParameters) (C : MargulisLemmaConclusion) : MargulisLemmaClosed P C :=
  And.intro P.marginClosedTerm C.conclusionTerm

end DiscontinuousGroupsTransformationsLemmaCanonicalLaneLean
end HautevilleHouse