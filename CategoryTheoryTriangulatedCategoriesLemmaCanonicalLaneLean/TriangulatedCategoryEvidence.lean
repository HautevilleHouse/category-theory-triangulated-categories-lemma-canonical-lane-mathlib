import HautevilleHouse.CategoryTheoryTriangulatedCategoriesLemmaCanonicalLaneLean.TriangulatedCategoryStructure

namespace HautevilleHouse
namespace CategoryTheoryTriangulatedCategoriesLemmaCanonicalLaneLean

structure OctahedralEvidence (P : TriangulatedCategoryPackage) where
  triangleComposition : Prop
  middleTriangle : Prop
  octahedronDiagramCommutative : Prop
  existence : Prop
  triangleCompositionClosed : triangleComposition
  middleTriangleClosed : middleTriangle
  octahedronDiagramCommutativeClosed : octahedronDiagramCommutative
  existenceClosed : existence

def OctahedralAxiomClosed (P : TriangulatedCategoryPackage) : Prop :=
  let _ := P.instCategory
  P.octahedralHolds

theorem octahedral_axiom_closed_from_evidence (P : TriangulatedCategoryPackage)
    (E : OctahedralEvidence P) : OctahedralAxiomClosed P := by
  exact P.octahedralHolds

end CategoryTheoryTriangulatedCategoriesLemmaCanonicalLaneLean
end HautevilleHouse