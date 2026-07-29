import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CategoryTheoryTriangulatedCategoriesLemmaCanonicalLaneLean.TriangulatedCategory
import HautevilleHouse.CategoryTheoryTriangulatedCategoriesLemmaCanonicalLaneLean.CohomologicalFunctor

namespace HautevilleHouse
namespace CategoryTheoryTriangulatedCategoriesLemmaCanonicalLaneLean

structure CanonicalTriangle (C : TriangulatedCategory) where
  objects : (C.obj × C.obj × C.obj)
  triangleObject : C.triangle
  distinguished : C.distinguishedTriangles triangleObject
  cohomological : CohomologicalFunctor C (ℤ) := by
    exact
  canonicalLongExact : Prop

structure CanonicalTriangleEvidence {C : TriangulatedCategory} (K : CanonicalTriangle C) where
  distinguishedClosed : K.distinguished
  canonicalLongExactClosed : K.canonicalLongExact

def CanonicalTriangleClosed {C : TriangulatedCategory} (K : CanonicalTriangle C) : Prop :=
  K.distinguished ∧ K.canonicalLongExact

theorem canonical_triangle_closed_from_evidence {C : TriangulatedCategory}
    (K : CanonicalTriangle C) (E : CanonicalTriangleEvidence K) :
    CanonicalTriangleClosed K := by
  exact And.intro E.distinguishedClosed E.canonicalLongExactClosed

end CategoryTheoryTriangulatedCategoriesLemmaCanonicalLaneLean
end HautevilleHouse