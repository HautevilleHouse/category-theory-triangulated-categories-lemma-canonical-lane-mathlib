import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CategoryTheoryTriangulatedCategoriesLemmaCanonicalLaneLean.TriangulatedCategoryStructure

namespace HautevilleHouse
namespace CategoryTheoryTriangulatedCategoriesLemmaCanonicalLaneLean

structure CohenMacaulayApproximation (T : TriangulatedCategory) where
  cmObjects : Set T.obj
  approximationExists : Prop
  closureUnderShift : Prop
  closureUnderExtensions : Prop

structure CohenMacaulayApproximationEvidence {T : TriangulatedCategory}
    (C : CohenMacaulayApproximation T) where
  approximationExistsClosed : C.approximationExists
  closureUnderShiftClosed : C.closureUnderShift
  closureUnderExtensionsClosed : C.closureUnderExtensions

def CohenMacaulayApproximationClosed {T : TriangulatedCategory}
    (C : CohenMacaulayApproximation T) : Prop :=
  C.approximationExists ∧ C.closureUnderShift ∧ C.closureUnderExtensions

theorem cohen_macaulay_approximation_closed_from_evidence {T : TriangulatedCategory}
    (C : CohenMacaulayApproximation T) (E : CohenMacaulayApproximationEvidence C) :
    CohenMacaulayApproximationClosed C := by
  exact And.intro E.approximationExistsClosed
    (And.intro E.closureUnderShiftClosed E.closureUnderExtensionsClosed)

end CategoryTheoryTriangulatedCategoriesLemmaCanonicalLaneLean
end HautevilleHouse
