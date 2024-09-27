import Mathlib.Data.Nat.Defs
import Mathlib.Tactic


universe u

class Magma (α : Type u) where
  /-- `a ∘ b` computes a binary operation of `a` and `b`. -/
  op : α → α → α

@[inherit_doc] infixl:65 " ∘ "   => Magma.op


/- List of equational laws being studied -/
def Equation559 (G: Type*) [Magma G] := ∀ x y z : G, x = y ∘ (z ∘ (y ∘ (y ∘ y)))
def Equation613 (G: Type*) [Magma G] := ∀ x y z w u v : G, x = y ∘ (z ∘ (w ∘ (u ∘ v)))
def Equation762 (G: Type*) [Magma G] := ∀ x y z : G, x = y ∘ (z ∘ ((y ∘ y) ∘ y))
def Equation816 (G: Type*) [Magma G] := ∀ x y z w u v : G, x = y ∘ (z ∘ ((w ∘ u) ∘ v))
def Equation965 (G: Type*) [Magma G] := ∀ x y z : G, x = y ∘ ((z ∘ y) ∘ (y ∘ y))
def Equation1019 (G: Type*) [Magma G] := ∀ x y z w u v : G, x = y ∘ ((z ∘ w) ∘ (u ∘ v))
def Equation1168 (G: Type*) [Magma G] := ∀ x y z : G, x = y ∘ ((z ∘ (y ∘ y)) ∘ y)
def Equation1222 (G: Type*) [Magma G] := ∀ x y z w u v : G, x = y ∘ ((z ∘ (w ∘ u)) ∘ v)
def Equation1371 (G: Type*) [Magma G] := ∀ x y z : G, x = y ∘ (((z ∘ y) ∘ y) ∘ y)
def Equation1425 (G: Type*) [Magma G] := ∀ x y z w u v : G, x = y ∘ (((z ∘ w) ∘ u) ∘ v)
def Equation1574 (G: Type*) [Magma G] := ∀ x y z : G, x = (y ∘ z) ∘ (y ∘ (y ∘ y))
def Equation1628 (G: Type*) [Magma G] := ∀ x y z w u v : G, x = (y ∘ z) ∘ (w ∘ (u ∘ v))
def Equation1777 (G: Type*) [Magma G] := ∀ x y z : G, x = (y ∘ z) ∘ ((y ∘ y) ∘ y)
def Equation1831 (G: Type*) [Magma G] := ∀ x y z w u v : G, x = (y ∘ z) ∘ ((w ∘ u) ∘ v)
def Equation1980 (G: Type*) [Magma G] := ∀ x y z : G, x = (y ∘ (z ∘ y)) ∘ (y ∘ y)
def Equation2034 (G: Type*) [Magma G] := ∀ x y z w u v : G, x = (y ∘ (z ∘ w)) ∘ (u ∘ v)
def Equation2183 (G: Type*) [Magma G] := ∀ x y z : G, x = ((y ∘ z) ∘ y) ∘ (y ∘ y)
def Equation2237 (G: Type*) [Magma G] := ∀ x y z w u v : G, x = ((y ∘ z) ∘ w) ∘ (u ∘ v)
def Equation2386 (G: Type*) [Magma G] := ∀ x y z : G, x = (y ∘ (z ∘ (y ∘ y))) ∘ y
def Equation2440 (G: Type*) [Magma G] := ∀ x y z w u v : G, x = (y ∘ (z ∘ (w ∘ u))) ∘ v
def Equation2589 (G: Type*) [Magma G] := ∀ x y z : G, x = (y ∘ ((z ∘ y) ∘ y)) ∘ y
def Equation2643 (G: Type*) [Magma G] := ∀ x y z w u v : G, x = (y ∘ ((z ∘ w) ∘ u)) ∘ v
def Equation2792 (G: Type*) [Magma G] := ∀ x y z : G, x = ((y ∘ z) ∘ (y ∘ y)) ∘ y
def Equation2846 (G: Type*) [Magma G] := ∀ x y z w u v : G, x = ((y ∘ z) ∘ (w ∘ u)) ∘ v
def Equation2995 (G: Type*) [Magma G] := ∀ x y z : G, x = ((y ∘ (z ∘ y)) ∘ y) ∘ y
def Equation3049 (G: Type*) [Magma G] := ∀ x y z w u v : G, x = ((y ∘ (z ∘ w)) ∘ u) ∘ v
def Equation3198 (G: Type*) [Magma G] := ∀ x y z : G, x = (((y ∘ z) ∘ y) ∘ y) ∘ y
def Equation3252 (G: Type*) [Magma G] := ∀ x y z w u v : G, x = (((y ∘ z) ∘ w) ∘ u) ∘ v
def Equation3401 (G: Type*) [Magma G] := ∀ x y z : G, x ∘ y = z ∘ (y ∘ (y ∘ y))
def Equation3455 (G: Type*) [Magma G] := ∀ x y z w u v : G, x ∘ y = z ∘ (w ∘ (u ∘ v))
def Equation3604 (G: Type*) [Magma G] := ∀ x y z : G, x ∘ y = z ∘ ((y ∘ y) ∘ y)
def Equation3658 (G: Type*) [Magma G] := ∀ x y z w u v : G, x ∘ y = z ∘ ((w ∘ u) ∘ v)
def Equation3807 (G: Type*) [Magma G] := ∀ x y z : G, x ∘ y = (z ∘ y) ∘ (y ∘ y)
def Equation3861 (G: Type*) [Magma G] := ∀ x y z w u v : G, x ∘ y = (z ∘ w) ∘ (u ∘ v)
def Equation4010 (G: Type*) [Magma G] := ∀ x y z : G, x ∘ y = (z ∘ (y ∘ y)) ∘ y
def Equation4064 (G: Type*) [Magma G] := ∀ x y z w u v : G, x ∘ y = (z ∘ (w ∘ u)) ∘ v
def Equation4213 (G: Type*) [Magma G] := ∀ x y z : G, x ∘ y = ((z ∘ y) ∘ y) ∘ y
def Equation4267 (G: Type*) [Magma G] := ∀ x y z w u v : G, x ∘ y = ((z ∘ w) ∘ u) ∘ v
def Equation4528 (G: Type*) [Magma G] := ∀ x y z : G, x ∘ (y ∘ z) = (y ∘ y) ∘ y
def Equation4582 (G: Type*) [Magma G] := ∀ x y z w u v : G, x ∘ (y ∘ z) = (w ∘ u) ∘ v
theorem Equation613_implies_Equation559 (G : Type*) [Magma G] (h : Equation613 G) : Equation559 G := λ x y z => h x y z y y y
theorem Equation816_implies_Equation762 (G : Type*) [Magma G] (h : Equation816 G) : Equation762 G := λ x y z => h x y z y y y
theorem Equation1019_implies_Equation965 (G : Type*) [Magma G] (h : Equation1019 G) : Equation965 G := λ x y z => h x y z y y y
theorem Equation1222_implies_Equation1168 (G : Type*) [Magma G] (h : Equation1222 G) : Equation1168 G := λ x y z => h x y z y y y
theorem Equation1425_implies_Equation1371 (G : Type*) [Magma G] (h : Equation1425 G) : Equation1371 G := λ x y z => h x y z y y y
theorem Equation1628_implies_Equation1574 (G : Type*) [Magma G] (h : Equation1628 G) : Equation1574 G := λ x y z => h x y z y y y
theorem Equation1831_implies_Equation1777 (G : Type*) [Magma G] (h : Equation1831 G) : Equation1777 G := λ x y z => h x y z y y y
theorem Equation2034_implies_Equation1980 (G : Type*) [Magma G] (h : Equation2034 G) : Equation1980 G := λ x y z => h x y z y y y
theorem Equation2237_implies_Equation2183 (G : Type*) [Magma G] (h : Equation2237 G) : Equation2183 G := λ x y z => h x y z y y y
theorem Equation2440_implies_Equation2386 (G : Type*) [Magma G] (h : Equation2440 G) : Equation2386 G := λ x y z => h x y z y y y
theorem Equation2643_implies_Equation2589 (G : Type*) [Magma G] (h : Equation2643 G) : Equation2589 G := λ x y z => h x y z y y y
theorem Equation2846_implies_Equation2792 (G : Type*) [Magma G] (h : Equation2846 G) : Equation2792 G := λ x y z => h x y z y y y
theorem Equation3049_implies_Equation2995 (G : Type*) [Magma G] (h : Equation3049 G) : Equation2995 G := λ x y z => h x y z y y y
theorem Equation3252_implies_Equation3198 (G : Type*) [Magma G] (h : Equation3252 G) : Equation3198 G := λ x y z => h x y z y y y
theorem Equation3455_implies_Equation3401 (G : Type*) [Magma G] (h : Equation3455 G) : Equation3401 G := λ x y z => h x y z y y y
theorem Equation3658_implies_Equation3604 (G : Type*) [Magma G] (h : Equation3658 G) : Equation3604 G := λ x y z => h x y z y y y
theorem Equation3861_implies_Equation3807 (G : Type*) [Magma G] (h : Equation3861 G) : Equation3807 G := λ x y z => h x y z y y y
theorem Equation4064_implies_Equation4010 (G : Type*) [Magma G] (h : Equation4064 G) : Equation4010 G := λ x y z => h x y z y y y
theorem Equation4267_implies_Equation4213 (G : Type*) [Magma G] (h : Equation4267 G) : Equation4213 G := λ x y z => h x y z y y y
theorem Equation4582_implies_Equation4528 (G : Type*) [Magma G] (h : Equation4582 G) : Equation4528 G := λ x y z => h x y z y y y