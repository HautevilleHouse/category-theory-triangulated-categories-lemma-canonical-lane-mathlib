import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoryTheoryTriangulatedCategoriesLemmaCanonicalLaneLean

structure TriangulatedFunctor (C D : TriangulatedCategory) where
  onObjects : C.obj → D.obj
  onShifts : ∀ X : C.obj, onObjects (C.shift X) = D.shift (onObjects X)
  preservesDistinguishedTriangles : Prop

structure TriangulatedFunctorEvidence {C D : TriangulatedCategory} (F : TriangulatedFunctor C D) where
  preservesDistinguishedTrianglesClosed : F.preservesDistinguishedTriangles

def TriangulatedFunctorClosed {C D : TriangulatedCategory} (F : TriangulatedFunctor C D) : Prop :=
  F.preservesDistinguishedTriangles

theorem triangulated_functor_closed_from_evidence
    {C D : TriangulatedCategory} (F : TriangulatedFunctor C D)
    (E : TriangulatedFunctorEvidence F) : TriangulatedFunctorClosed F := by
  exact E.preservesDistinguishedTrianglesClosed

end CategoryTheoryTriangulatedCategoriesLemmaCanonicalLaneLean
end HautevilleHouse