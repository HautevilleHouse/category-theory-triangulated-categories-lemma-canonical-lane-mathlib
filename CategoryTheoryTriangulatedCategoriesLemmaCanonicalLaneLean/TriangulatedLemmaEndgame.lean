import CategoryTheoryTriangulatedCategoriesLemmaCanonicalLaneLean.AdmissibleClass
import CategoryTheoryTriangulatedCategoriesLemmaCanonicalLaneLean.BridgeLemmas
import CategoryTheoryTriangulatedCategoriesLemmaCanonicalLaneLean.GateLemmas

namespace HautevilleHouse
namespace CategoryTheoryTriangulatedCategoriesLemmaCanonicalLaneLean

def ConstrainedTriangulatedClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_triangulated_endgame (A : AdmissibleClass) : ConstrainedTriangulatedClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end CategoryTheoryTriangulatedCategoriesLemmaCanonicalLaneLean
end HautevilleHouse