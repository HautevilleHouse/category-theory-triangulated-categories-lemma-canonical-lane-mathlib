import HautevilleHouse.CategoryTheoryTriangulatedCategoriesLemmaCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace CategoryTheoryTriangulatedCategoriesLemmaCanonicalLaneLean

structure TriangulatedAdmittedObject where
  category : Type u
  shift : ℤ → category → category
  distinguishedTriangles : Set (Diagram category)
  octahedralAxiom : Prop
  conclusion : octahedralAxiom

def TriangulatedWitnessClosed (O : TriangulatedAdmittedObject) : Prop :=
  O.octahedralAxiom

end CategoryTheoryTriangulatedCategoriesLemmaCanonicalLaneLean
end HautevilleHouse