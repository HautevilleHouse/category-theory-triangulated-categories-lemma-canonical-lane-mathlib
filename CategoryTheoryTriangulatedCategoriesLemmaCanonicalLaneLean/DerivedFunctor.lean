import HautevilleHouse.CategoryTheoryTriangulatedCategoriesLemmaCanonicalLaneLean.TriangulatedCategoryBase

namespace HautevilleHouse
namespace CategoryTheoryTriangulatedCategoriesLemmaCanonicalLaneLean

structure DerivedFunctorPackage (C D : TriangulatedCategoryPackage) where
  functor : (C.triCat.obj → D.triCat.obj)
  exactness : Prop
  deltaFunctorStructure : Prop

structure DerivedFunctorEvidence {C D : TriangulatedCategoryPackage}
    (F : DerivedFunctorPackage C D) where
  exactnessClosed : F.exactness
  deltaFunctorStructureClosed : F.deltaFunctorStructure

def DerivedFunctorClosed {C D : TriangulatedCategoryPackage}
    (F : DerivedFunctorPackage C D) : Prop :=
  F.exactness ∧ F.deltaFunctorStructure

theorem derived_functor_closed_from_evidence
    {C D : TriangulatedCategoryPackage} (F : DerivedFunctorPackage C D)
    (E : DerivedFunctorEvidence F) : DerivedFunctorClosed F := by
  exact And.intro E.exactnessClosed E.deltaFunctorStructureClosed

end CategoryTheoryTriangulatedCategoriesLemmaCanonicalLaneLean
end HautevilleHouse