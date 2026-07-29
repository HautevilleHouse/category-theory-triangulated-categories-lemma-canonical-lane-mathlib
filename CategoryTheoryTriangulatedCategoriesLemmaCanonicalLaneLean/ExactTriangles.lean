import CategoryTheoryTriangulatedCategoriesLemmaCanonicalLaneLean.TriangulatedCategory

namespace HautevilleHouse
namespace CategoryTheoryTriangulatedCategoriesLemmaCanonicalLaneLean

structure ExactTrianglePackage (C : TriangulatedCategoryPackage) where
  distinguishedTrianglesExist : Prop
  rotationClosure : Prop
  compositionWithMappingCone : Prop

structure ExactTriangleEvidence {C : TriangulatedCategoryPackage} (P : ExactTrianglePackage C) where
  distinguishedTrianglesExistClosed : P.distinguishedTrianglesExist
  rotationClosureClosed : P.rotationClosure
  compositionWithMappingConeClosed : P.compositionWithMappingCone

def ExactTriangleClosed {C : TriangulatedCategoryPackage} (P : ExactTrianglePackage C) : Prop :=
  P.distinguishedTrianglesExist ∧ P.rotationClosure ∧ P.compositionWithMappingCone

theorem exact_triangle_closed_from_evidence {C : TriangulatedCategoryPackage} (P : ExactTrianglePackage C) (E : ExactTriangleEvidence P) : ExactTriangleClosed P := by
  exact And.intro E.distinguishedTrianglesExistClosed
    (And.intro E.rotationClosureClosed E.compositionWithMappingConeClosed)

end CategoryTheoryTriangulatedCategoriesLemmaCanonicalLaneLean
end HautevilleHouse