import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoryTheoryTriangulatedCategoriesLemmaCanonicalLaneLean

structure TriangulatedCategoryWitnessObject where
  space : Type u
  topology : TopologicalSpace space
  triangulatedStructure : Prop
  shiftCompatible : Prop
  octahedronValid : Prop
  conclusion : octahedronValid

structure TriangulatedCategoryAdmissibleObject where
  object : TriangulatedCategoryWitnessObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

structure AdmissibleClass where
  object : TriangulatedCategoryAdmissibleObject
  endpointSatisfied : Prop := object.endpointSatisfied
  remainderRecorded : Prop := object.remainderRecorded
  gateWitness : endpointSatisfied ∨ remainderRecorded := object.gateWitness

end CategoryTheoryTriangulatedCategoriesLemmaCanonicalLaneLean
end HautevilleHouse