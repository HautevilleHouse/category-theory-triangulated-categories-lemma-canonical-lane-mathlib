import canonicalLaneMathlib.AdmissibleClass
import CategoryTheoryTriangulatedCategoriesLemmaCanonicalLaneLean.TriangulatedCategory
import CategoryTheoryTriangulatedCategoriesLemmaCanonicalLaneLean.YonedaLemma

namespace HautevilleHouse
namespace CategoryTheoryTriangulatedCategoriesLemmaCanonicalLaneLean

structure TriangulatedYonedaExtension where
  category : Type u
  [catInstance : Category category]
  triangulated : TriangulatedCategory category
  yonedaEmbedding : YonedaEmbedding category
  compatibility : Prop

structure TriangulatedYonedaEvidence (T : TriangulatedYonedaExtension) where
  compatibilityClosed : T.compatibility

def TriangulatedYonedaClosed (T : TriangulatedYonedaExtension) : Prop :=
  T.compatibility

theorem triangulated_yoneda_closed_from_evidence (T : TriangulatedYonedaExtension)
    (E : TriangulatedYonedaEvidence T) : TriangulatedYonedaClosed T := by
  exact E.compatibilityClosed

theorem triangulated_yoneda_closed_implies_yoneda_closed (T : TriangulatedYonedaExtension) :
    TriangulatedYonedaClosed T → YonedaClosed T.category := by
  intro h
  exact yoneda_closed_from_yoneda_lemma T.category

end CategoryTheoryTriangulatedCategoriesLemmaCanonicalLaneLean
end HautevilleHouse
