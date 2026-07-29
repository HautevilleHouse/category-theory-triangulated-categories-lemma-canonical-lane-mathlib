import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoryTheoryTriangulatedCategoriesLemmaCanonicalLaneLean

structure MappingConePackage (C : Type u) [Category C] [Preadditive C] [HasCokernels C] where
  source : C
  target : C
  morphism : source ⟶ target
  cone : C
  triangle : ConeTriangle source target cone
  distinguishedCone : IsDistinguishedTriangle triangle

structure MappingConeEvidence (C : Type u) [Category C] [Preadditive C] [HasCokernels C] (M : MappingConePackage C) where
  coneClosed : M.cone = cokernel (M.morphism)
  triangleClosed : M.triangle = standardTriangle M.morphism
  distinguishedClosed : M.distinguishedCone = by
    exact isDistinguishedStandardTriangle M.morphism

def MappingConeClosed (C : Type u) [Category C] [Preadditive C] [HasCokernels C] (M : MappingConePackage C) : Prop :=
  M.cone = cokernel (M.morphism) ∧
  M.triangle = standardTriangle M.morphism ∧
  M.distinguishedCone

theorem mapping_cone_closed_from_evidence
    (C : Type u) [Category C] [Preadditive C] [HasCokernels C]
    (M : MappingConePackage C) (E : MappingConeEvidence C M) :
    MappingConeClosed C M := by
  exact And.intro E.coneClosed (And.intro E.triangleClosed E.distinguishedClosed)

end CategoryTheoryTriangulatedCategoriesLemmaCanonicalLaneLean
end HautevilleHouse