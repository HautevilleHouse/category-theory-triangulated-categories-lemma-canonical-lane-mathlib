import canonicalLaneMathlib.AdmissibleClass
import CategoryTheoryTriangulatedCategoriesLemmaCanonicalLaneLean.TriangulatedCategory

namespace HautevilleHouse
namespace CategoryTheoryTriangulatedCategoriesLemmaCanonicalLaneLean

structure YonedaEmbedding (C : Type u) [Category C] where
  functor : C ⥤ Presheaf C
  fullyFaithful : FullyFaithful functor

theorem yoneda_lemma (C : Type u) [Category C] (F : Presheaf C) (X : C) :
  (yoneda.obj X) ⟶ F ≃ F.obj X := by
  apply yonedaEquiv

def YonedaClosed (C : Type u) [Category C] : Prop :=
  ∀ (F : Presheaf C) (X : C), Nonempty ((yoneda.obj X) ⟶ F ≃ F.obj X)

theorem yoneda_closed_from_yoneda_lemma (C : Type u) [Category C] :
    YonedaClosed C := by
  intro F X
  exact Nonempty.intro (yoneda_lemma C F X)

end CategoryTheoryTriangulatedCategoriesLemmaCanonicalLaneLean
end HautevilleHouse
