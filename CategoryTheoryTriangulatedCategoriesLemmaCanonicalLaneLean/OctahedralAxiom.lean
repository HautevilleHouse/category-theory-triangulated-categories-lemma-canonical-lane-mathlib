import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoryTheoryTriangulatedCategoriesLemmaCanonicalLaneLean

structure OctahedralAxiomPackage (C : Type u) [Category C] [Preadditive C] [HasCokernels C] where
  f : X ⟶ Y
  g : Y ⟶ Z
  composite : X ⟶ Z := f ≫ g
  coneF : MappingConePackage C
  coneG : MappingConePackage C
  coneComposite : MappingConePackage C
  distinguishedOctahedron : Octahedron f g

structure OctahedralAxiomEvidence (C : Type u) [Category C] [Preadditive C] [HasCokernels C] (O : OctahedralAxiomPackage C) where
  octahedronClosed : O.distinguishedOctahedron = octahedronAxiom O.f O.g

def OctahedralAxiomClosed (C : Type u) [Category C] [Preadditive C] [HasCokernels C] (O : OctahedralAxiomPackage C) : Prop :=
  O.distinguishedOctahedron

theorem octahedral_axiom_closed_from_evidence
    (C : Type u) [Category C] [Preadditive C] [HasCokernels C] (O : OctahedralAxiomPackage C)
    (E : OctahedralAxiomEvidence C O) : OctahedralAxiomClosed C O := by
  exact E.octahedronClosed

end CategoryTheoryTriangulatedCategoriesLemmaCanonicalLaneLean
end HautevilleHouse