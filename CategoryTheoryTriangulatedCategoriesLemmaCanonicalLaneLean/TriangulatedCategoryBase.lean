import Mathlib.CategoryTheory.Triangulated.Basic

namespace HautevilleHouse
namespace CategoryTheoryTriangulatedCategoriesLemmaCanonicalLaneLean

structure TriangulatedCategory where
  obj : Type u
  shift : obj → obj
  distinguishedTriangles : Set (Triangle obj)
  axioms : Prop

structure DistinguishedTriangle (C : TriangulatedCategory) where
  X Y Z : C.obj
  u : X ⟶ Y (in some category)
  v : Y ⟶ Z
  w : Z ⟶ (shift X)
  isDistinguished : Prop

def TriangulatedWitnessClosed (O : TriangulatedAdmittedObject) : Prop :=
  O.isClosed

structure TriangulatedCategoryPackage where
  triCat : TriangulatedCategory
  shiftFunctor : (triCat.obj → triCat.obj)
  exactnessCondition : Prop

structure TriangulatedCategoryEvidence (P : TriangulatedCategoryPackage) where
  exactnessConditionClosed : P.exactnessCondition

def TriangulatedCategoryClosed (P : TriangulatedCategoryPackage) : Prop :=
  P.exactnessCondition

theorem triangulated_category_closed_from_evidence
    (P : TriangulatedCategoryPackage) (E : TriangulatedCategoryEvidence P) :
    TriangulatedCategoryClosed P := by
  exact E.exactnessConditionClosed

end CategoryTheoryTriangulatedCategoriesLemmaCanonicalLaneLean
end HautevilleHouse