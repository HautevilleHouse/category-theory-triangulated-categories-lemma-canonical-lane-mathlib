import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoryTheoryTriangulatedCategoriesLemmaCanonicalLaneLean

structure HomologicalFunctor (C : TriangulatedCategory) (A : Type u) [AddCat A] where
  func : C.obj → A
  exact : ∀ (X Y Z : C.obj) (f : X ⟶ Y) (g : Y ⟶ Z) (h : Z ⟶ C.shift X),
    (X, Y, Z, f, g, h) ∈ C.triangles → LongExactSequence (func X) (func Y) (func Z)

structure HomologicalFunctorEvidence (C : TriangulatedCategory) (A : Type u) [AddCat A] (F : HomologicalFunctor C A) where
  exactClosed : F.exact

def HomologicalFunctorClosed (C : TriangulatedCategory) (A : Type u) [AddCat A] (F : HomologicalFunctor C A) : Prop :=
  F.exact

theorem homological_functor_closed_from_evidence (C : TriangulatedCategory) (A : Type u) [AddCat A] (F : HomologicalFunctor C A) (E : HomologicalFunctorEvidence C A F) : HomologicalFunctorClosed C A F := by
  exact E.exactClosed

end CategoryTheoryTriangulatedCategoriesLemmaCanonicalLaneLean
end HautevilleHouse