import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CategoryTheoryTriangulatedCategoriesLemmaCanonicalLaneLean.TriangulatedCategoryStructure

namespace HautevilleHouse
namespace CategoryTheoryTriangulatedCategoriesLemmaCanonicalLaneLean

structure VerdierAxiomPackage (T : TriangulatedCategory) where
  octahedronLemma : Prop
  extendDistinguished : Prop
  recollementStructure : Prop
  gluingCondition : Prop

structure VerdierAxiomEvidence {T : TriangulatedCategory} (V : VerdierAxiomPackage T) where
  octahedronLemmaClosed : V.octahedronLemma
  extendDistinguishedClosed : V.extendDistinguished
  recollementStructureClosed : V.recollementStructure
  gluingConditionClosed : V.gluingCondition

def VerdierAxiomClosed {T : TriangulatedCategory} (V : VerdierAxiomPackage T) : Prop :=
  V.octahedronLemma ∧ V.extendDistinguished ∧ V.recollementStructure ∧ V.gluingCondition

theorem verdier_axiom_closed_from_evidence {T : TriangulatedCategory}
    (V : VerdierAxiomPackage T) (E : VerdierAxiomEvidence V) : VerdierAxiomClosed V := by
  exact And.intro E.octahedronLemmaClosed
    (And.intro E.extendDistinguishedClosed
      (And.intro E.recollementStructureClosed E.gluingConditionClosed))

end CategoryTheoryTriangulatedCategoriesLemmaCanonicalLaneLean
end HautevilleHouse
