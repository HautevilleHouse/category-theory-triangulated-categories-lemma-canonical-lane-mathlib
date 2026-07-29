import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CategoryTheoryTriangulatedCategoriesLemmaCanonicalLaneLean.TriangulatedCategory

namespace HautevilleHouse
namespace CategoryTheoryTriangulatedCategoriesLemmaCanonicalLaneLean

structure CohomologicalFunctor (C : TriangulatedCategory) (A : Type u) [AddCommGroup A] where
  F : C.obj → A
  exactness : ∀ (t : C.triangle), C.distinguishedTriangles t →
    (F (C.shift (C.shift (C.obj))))
  shiftCompatibility : ∀ (X : C.obj), F (C.shift X) = -F X

structure CohomologicalFunctorEvidence {C : TriangulatedCategory} {A : Type u} [AddCommGroup A]
    (H : CohomologicalFunctor C A) where
  exactnessClosed : H.exactness
  shiftCompatibilityClosed : H.shiftCompatibility

def CohomologicalFunctorClosed {C : TriangulatedCategory} {A : Type u} [AddCommGroup A]
    (H : CohomologicalFunctor C A) : Prop :=
  H.exactness ∧ H.shiftCompatibility

theorem cohomological_functor_closed_from_evidence {C : TriangulatedCategory} {A : Type u}
    [AddCommGroup A] (H : CohomologicalFunctor C A)
    (E : CohomologicalFunctorEvidence H) : CohomologicalFunctorClosed H := by
  exact And.intro E.exactnessClosed E.shiftCompatibilityClosed

end CategoryTheoryTriangulatedCategoriesLemmaCanonicalLaneLean
end HautevilleHouse