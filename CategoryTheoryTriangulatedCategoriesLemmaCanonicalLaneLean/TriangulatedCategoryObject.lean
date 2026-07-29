import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoryTheoryTriangulatedCategoriesLemmaCanonicalLaneLean

structure TriangulatedCategoryObject where
  carrier : Type u
  shift : Type u → Type u
  distinguishedTriangles : Prop
  octahedralAxiom : Prop
  shiftAutoEquivalence : Prop
  triangleCompatibility : Prop
  conclusion : octahedralAxiom ∧ shiftAutoEquivalence

structure TriangulatedAdmittedObject where
  category : TriangulatedCategoryObject
  admitsTriangulation : Prop
  octahedralSatisfied : Prop
  witness : octahedralSatisfied

def TriangulatedWitnessClosed (O : TriangulatedAdmittedObject) : Prop :=
  O.octahedralSatisfied

end CategoryTheoryTriangulatedCategoriesLemmaCanonicalLaneLean
end HautevilleHouse