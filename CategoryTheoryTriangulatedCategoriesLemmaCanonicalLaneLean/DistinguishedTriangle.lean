import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoryTheoryTriangulatedCategoriesLemmaCanonicalLaneLean

structure DistinguishedTriangle (C : TriangulatedCategory) where
  X : C.obj
  Y : C.obj
  Z : C.obj
  u : X ⟶ Y
  v : Y ⟶ Z
  w : Z ⟶ C.shift X
  isDistinguished : (X, Y, Z, u, v, w) ∈ C.triangles

structure DistinguishedTriangleMorphism (C : TriangulatedCategory) (T1 T2 : DistinguishedTriangle C) where
  a : T1.X ⟶ T2.X
  b : T1.Y ⟶ T2.Y
  c : T1.Z ⟶ T2.Z
  comm1 : T2.u ∘ a = b ∘ T1.u
  comm2 : T2.v ∘ b = c ∘ T1.v
  comm3 : C.shift a ∘ T2.w = T1.w ∘ c

def DistinguishedTriangleClosed (C : TriangulatedCategory) : Prop :=
  ∀ (X Y Z : C.obj) (u : X ⟶ Y) (v : Y ⟶ Z) (w : Z ⟶ C.shift X),
    (X, Y, Z, u, v, w) ∈ C.triangles → DistinguishedTriangle C

theorem distinguished_triangle_closed (C : TriangulatedCategory) : DistinguishedTriangleClosed C := by
  intro X Y Z u v w h
  exact ⟨X, Y, Z, u, v, w, h⟩

end CategoryTheoryTriangulatedCategoriesLemmaCanonicalLaneLean
end HautevilleHouse