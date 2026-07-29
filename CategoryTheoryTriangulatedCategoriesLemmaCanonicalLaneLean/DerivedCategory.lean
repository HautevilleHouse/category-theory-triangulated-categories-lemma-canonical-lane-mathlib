import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CategoryTheoryTriangulatedCategoriesLemmaCanonicalLaneLean.TriangulatedCategory

namespace HautevilleHouse
namespace CategoryTheoryTriangulatedCategoriesLemmaCanonicalLaneLean

structure DerivedCategory (C : TriangulatedCategory) where
  localized : Type u
  localizationFunctor : C.obj → localized
  quasiIsomorphismsInverted : Prop
  derivedTriangles : localized → Prop
  derivedTriangleAxiom : derivedTriangles → Prop

structure DerivedCategoryEvidence {C : TriangulatedCategory} (D : DerivedCategory C) where
  localizationFunctorClosed : D.localizationFunctor
  quasiIsomorphismsInvertedClosed : D.quasiIsomorphismsInverted
  derivedTriangleAxiomClosed : D.derivedTriangleAxiom

def DerivedCategoryClosed {C : TriangulatedCategory} (D : DerivedCategory C) : Prop :=
  D.localizationFunctor ∧ D.quasiIsomorphismsInverted ∧ D.derivedTriangleAxiom

theorem derived_category_closed_from_evidence {C : TriangulatedCategory} (D : DerivedCategory C)
    (E : DerivedCategoryEvidence D) : DerivedCategoryClosed D := by
  exact And.intro E.localizationFunctorClosed
    (And.intro E.quasiIsomorphismsInvertedClosed E.derivedTriangleAxiomClosed)

end CategoryTheoryTriangulatedCategoriesLemmaCanonicalLaneLean
end HautevilleHouse