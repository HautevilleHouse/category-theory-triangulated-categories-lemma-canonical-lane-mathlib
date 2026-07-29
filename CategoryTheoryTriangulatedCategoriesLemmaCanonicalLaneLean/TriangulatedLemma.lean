import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoryTheoryTriangulatedCategoriesLemmaCanonicalLaneLean

structure TriangulatedLemma (C : TriangulatedCategory) where
  statement : Prop
  proof : statement

structure TriangulatedLemmaEvidence (C : TriangulatedCategory) (L : TriangulatedLemma C) where
  statementClosed : L.statement

def TriangulatedLemmaClosed (C : TriangulatedCategory) (L : TriangulatedLemma C) : Prop :=
  L.statement

theorem triangulated_lemma_closed_from_evidence (C : TriangulatedCategory) (L : TriangulatedLemma C) (E : TriangulatedLemmaEvidence C L) : TriangulatedLemmaClosed C L := by
  exact E.statementClosed

end CategoryTheoryTriangulatedCategoriesLemmaCanonicalLaneLean
end HautevilleHouse