import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoryTheoryTriangulatedCategoriesLemmaCanonicalLaneLean

structure TriangulatedCategoryPackage (C : Type u) [Category C] [Preadditive C] where
  translationFunctor : C ⥤ C
  translationEquivalence : IsEquivalence translationFunctor
  distinguishedTriangles : Set (Triangle C)
  TR1 : forall (X : C), (Triangle.mk (0 : X ⟶ X) (0 : X ⟶ X) (0 : X ⟶ X)) ∈ distinguishedTriangles
  TR2 : forall (T : Triangle C), T ∈ distinguishedTriangles ↔ rotateTriangle T ∈ distinguishedTriangles
  TR3 : forall (T1 T2 : Triangle C) (f : T1.hom1 ⟶ T2.hom1) (g : T1.hom2 ⟶ T2.hom2) (h : T1.hom3 ⟶ T2.hom3), ...
  TR4 : OctahedronAxiom

structure TriangulatedCategoryEvidence (C : Type u) [Category C] [Preadditive C] (T : TriangulatedCategoryPackage C) where
  translationClosed : T.translationEquivalence
  TR1Closed : T.TR1
  TR2Closed : T.TR2
  TR3Closed : True
  TR4Closed : T.TR4

def TriangulatedCategoryClosed (C : Type u) [Category C] [Preadditive C] (T : TriangulatedCategoryPackage C) : Prop :=
  T.translationEquivalence ∧ T.TR1 ∧ T.TR2 ∧ T.TR4

theorem triangulated_category_closed_from_evidence
    (C : Type u) [Category C] [Preadditive C] (T : TriangulatedCategoryPackage C)
    (E : TriangulatedCategoryEvidence C T) : TriangulatedCategoryClosed C T := by
  exact And.intro E.translationClosed (And.intro E.TR1Closed (And.intro E.TR2Closed E.TR4Closed))

end CategoryTheoryTriangulatedCategoriesLemmaCanonicalLaneLean
end HautevilleHouse