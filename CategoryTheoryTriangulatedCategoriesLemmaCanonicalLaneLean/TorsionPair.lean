import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CategoryTheoryTriangulatedCategoriesLemmaCanonicalLaneLean.TriangulatedCategoryStructure

namespace HautevilleHouse
namespace CategoryTheoryTriangulatedCategoriesLemmaCanonicalLaneLean

structure TorsionPair (T : TriangulatedCategory) where
  torsionClass : Set T.obj
  torsionFreeClass : Set T.obj
  homFinite : Prop
  orthogonalCondition : Prop
  generateTriangulated : Prop

structure TorsionPairEvidence {T : TriangulatedCategory} (P : TorsionPair T) where
  homFiniteClosed : P.homFinite
  orthogonalConditionClosed : P.orthogonalCondition
  generateTriangulatedClosed : P.generateTriangulated

def TorsionPairClosed {T : TriangulatedCategory} (P : TorsionPair T) : Prop :=
  P.homFinite ∧ P.orthogonalCondition ∧ P.generateTriangulated

theorem torsion_pair_closed_from_evidence {T : TriangulatedCategory}
    (P : TorsionPair T) (E : TorsionPairEvidence P) : TorsionPairClosed P := by
  exact And.intro E.homFiniteClosed
    (And.intro E.orthogonalConditionClosed E.generateTriangulatedClosed)

end CategoryTheoryTriangulatedCategoriesLemmaCanonicalLaneLean
end HautevilleHouse
