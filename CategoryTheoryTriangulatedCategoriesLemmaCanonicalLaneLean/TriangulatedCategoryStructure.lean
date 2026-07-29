import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoryTheoryTriangulatedCategoriesLemmaCanonicalLaneLean

structure TriangulatedCategory where
  obj : Type u
  shift : obj → obj
  distinguishedTriangles : Set (obj → obj → obj → Prop)
  hasRotation : Prop
  hasDistinguishedCompletion : Prop

structure TriangulatedCategoryEvidence (C : TriangulatedCategory) where
  hasRotationClosed : C.hasRotation
  hasDistinguishedCompletionClosed : C.hasDistinguishedCompletion

def TriangulatedCategoryClosed (C : TriangulatedCategory) : Prop :=
  C.hasRotation ∧ C.hasDistinguishedCompletion

theorem triangulated_category_closed_from_evidence
    (C : TriangulatedCategory) (E : TriangulatedCategoryEvidence C) :
    TriangulatedCategoryClosed C := by
  exact And.intro E.hasRotationClosed E.hasDistinguishedCompletionClosed

end CategoryTheoryTriangulatedCategoriesLemmaCanonicalLaneLean
end HautevilleHouse