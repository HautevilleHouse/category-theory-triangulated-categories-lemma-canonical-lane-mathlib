import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoryTheoryTriangulatedCategoriesLemmaCanonicalLaneLean

structure TriangulatedCategory where
  obj : Type u
  shift : obj → obj
  triangle : Type v
  distinguishedTriangles : triangle → Prop
  octahedronAxiom : Prop
  shiftInvolution : Prop

structure TriangulatedCategoryEvidence (C : TriangulatedCategory) where
  distinguishedTrianglesClosed : C.distinguishedTriangles
  octahedronAxiomClosed : C.octahedronAxiom
  shiftInvolutionClosed : C.shiftInvolution

def TriangulatedCategoryClosed (C : TriangulatedCategory) : Prop :=
  C.distinguishedTriangles ∧ C.octahedronAxiom ∧ C.shiftInvolution

theorem triangulated_category_closed_from_evidence (C : TriangulatedCategory)
    (E : TriangulatedCategoryEvidence C) : TriangulatedCategoryClosed C := by
  exact And.intro E.distinguishedTrianglesClosed
    (And.intro E.octahedronAxiomClosed E.shiftInvolutionClosed)

end CategoryTheoryTriangulatedCategoriesLemmaCanonicalLaneLean
end HautevilleHouse