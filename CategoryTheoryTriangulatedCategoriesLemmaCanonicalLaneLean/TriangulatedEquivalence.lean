import HautevilleHouse.CategoryTheoryTriangulatedCategoriesLemmaCanonicalLaneLean.DerivedFunctor

namespace HautevilleHouse
namespace CategoryTheoryTriangulatedCategoriesLemmaCanonicalLaneLean

structure TriangulatedEquivalencePackage (C D : TriangulatedCategoryPackage) where
  functor : DerivedFunctorPackage C D
  inverse : DerivedFunctorPackage D C
  unitCounitAdjunction : Prop
  quasiInverseCondition : Prop

structure TriangulatedEquivalenceEvidence {C D : TriangulatedCategoryPackage}
    (E : TriangulatedEquivalencePackage C D) where
  unitCounitAdjunctionClosed : E.unitCounitAdjunction
  quasiInverseConditionClosed : E.quasiInverseCondition

def TriangulatedEquivalenceClosed {C D : TriangulatedCategoryPackage}
    (E : TriangulatedEquivalencePackage C D) : Prop :=
  E.unitCounitAdjunction ∧ E.quasiInverseCondition

theorem triangulated_equivalence_closed_from_evidence
    {C D : TriangulatedCategoryPackage} (E : TriangulatedEquivalencePackage C D)
    (Ev : TriangulatedEquivalenceEvidence E) : TriangulatedEquivalenceClosed E := by
  exact And.intro Ev.unitCounitAdjunctionClosed Ev.quasiInverseConditionClosed

end CategoryTheoryTriangulatedCategoriesLemmaCanonicalLaneLean
end HautevilleHouse