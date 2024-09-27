import Mathlib.Data.Nat.Defs
import Mathlib.Tactic


universe u

class Magma (α : Type u) where
  /-- `a ∘ b` computes a binary operation of `a` and `b`. -/
  op : α → α → α

@[inherit_doc] infixl:65 " ∘ "   => Magma.op


/- List of equational laws being studied -/
def Equation475 (G: Type*) [Magma G] := ∀ x y z : G, x = y ∘ (x ∘ (y ∘ (x ∘ z)))
def Equation613 (G: Type*) [Magma G] := ∀ x y z w u v : G, x = y ∘ (z ∘ (w ∘ (u ∘ v)))
def Equation678 (G: Type*) [Magma G] := ∀ x y z : G, x = y ∘ (x ∘ ((y ∘ x) ∘ z))
def Equation816 (G: Type*) [Magma G] := ∀ x y z w u v : G, x = y ∘ (z ∘ ((w ∘ u) ∘ v))
def Equation881 (G: Type*) [Magma G] := ∀ x y z : G, x = y ∘ ((x ∘ y) ∘ (x ∘ z))
def Equation1019 (G: Type*) [Magma G] := ∀ x y z w u v : G, x = y ∘ ((z ∘ w) ∘ (u ∘ v))
def Equation1084 (G: Type*) [Magma G] := ∀ x y z : G, x = y ∘ ((x ∘ (y ∘ x)) ∘ z)
def Equation1222 (G: Type*) [Magma G] := ∀ x y z w u v : G, x = y ∘ ((z ∘ (w ∘ u)) ∘ v)
def Equation1287 (G: Type*) [Magma G] := ∀ x y z : G, x = y ∘ (((x ∘ y) ∘ x) ∘ z)
def Equation1425 (G: Type*) [Magma G] := ∀ x y z w u v : G, x = y ∘ (((z ∘ w) ∘ u) ∘ v)
def Equation1490 (G: Type*) [Magma G] := ∀ x y z : G, x = (y ∘ x) ∘ (y ∘ (x ∘ z))
def Equation1628 (G: Type*) [Magma G] := ∀ x y z w u v : G, x = (y ∘ z) ∘ (w ∘ (u ∘ v))
def Equation1693 (G: Type*) [Magma G] := ∀ x y z : G, x = (y ∘ x) ∘ ((y ∘ x) ∘ z)
def Equation1831 (G: Type*) [Magma G] := ∀ x y z w u v : G, x = (y ∘ z) ∘ ((w ∘ u) ∘ v)
def Equation1896 (G: Type*) [Magma G] := ∀ x y z : G, x = (y ∘ (x ∘ y)) ∘ (x ∘ z)
def Equation2034 (G: Type*) [Magma G] := ∀ x y z w u v : G, x = (y ∘ (z ∘ w)) ∘ (u ∘ v)
def Equation2099 (G: Type*) [Magma G] := ∀ x y z : G, x = ((y ∘ x) ∘ y) ∘ (x ∘ z)
def Equation2237 (G: Type*) [Magma G] := ∀ x y z w u v : G, x = ((y ∘ z) ∘ w) ∘ (u ∘ v)
def Equation2302 (G: Type*) [Magma G] := ∀ x y z : G, x = (y ∘ (x ∘ (y ∘ x))) ∘ z
def Equation2440 (G: Type*) [Magma G] := ∀ x y z w u v : G, x = (y ∘ (z ∘ (w ∘ u))) ∘ v
def Equation2505 (G: Type*) [Magma G] := ∀ x y z : G, x = (y ∘ ((x ∘ y) ∘ x)) ∘ z
def Equation2643 (G: Type*) [Magma G] := ∀ x y z w u v : G, x = (y ∘ ((z ∘ w) ∘ u)) ∘ v
def Equation2708 (G: Type*) [Magma G] := ∀ x y z : G, x = ((y ∘ x) ∘ (y ∘ x)) ∘ z
def Equation2846 (G: Type*) [Magma G] := ∀ x y z w u v : G, x = ((y ∘ z) ∘ (w ∘ u)) ∘ v
def Equation2911 (G: Type*) [Magma G] := ∀ x y z : G, x = ((y ∘ (x ∘ y)) ∘ x) ∘ z
def Equation3049 (G: Type*) [Magma G] := ∀ x y z w u v : G, x = ((y ∘ (z ∘ w)) ∘ u) ∘ v
def Equation3114 (G: Type*) [Magma G] := ∀ x y z : G, x = (((y ∘ x) ∘ y) ∘ x) ∘ z
def Equation3252 (G: Type*) [Magma G] := ∀ x y z w u v : G, x = (((y ∘ z) ∘ w) ∘ u) ∘ v
def Equation3317 (G: Type*) [Magma G] := ∀ x y z : G, x ∘ y = x ∘ (y ∘ (x ∘ z))
def Equation3455 (G: Type*) [Magma G] := ∀ x y z w u v : G, x ∘ y = z ∘ (w ∘ (u ∘ v))
def Equation3520 (G: Type*) [Magma G] := ∀ x y z : G, x ∘ y = x ∘ ((y ∘ x) ∘ z)
def Equation3658 (G: Type*) [Magma G] := ∀ x y z w u v : G, x ∘ y = z ∘ ((w ∘ u) ∘ v)
def Equation3723 (G: Type*) [Magma G] := ∀ x y z : G, x ∘ y = (x ∘ y) ∘ (x ∘ z)
def Equation3861 (G: Type*) [Magma G] := ∀ x y z w u v : G, x ∘ y = (z ∘ w) ∘ (u ∘ v)
def Equation3926 (G: Type*) [Magma G] := ∀ x y z : G, x ∘ y = (x ∘ (y ∘ x)) ∘ z
def Equation4064 (G: Type*) [Magma G] := ∀ x y z w u v : G, x ∘ y = (z ∘ (w ∘ u)) ∘ v
def Equation4129 (G: Type*) [Magma G] := ∀ x y z : G, x ∘ y = ((x ∘ y) ∘ x) ∘ z
def Equation4267 (G: Type*) [Magma G] := ∀ x y z w u v : G, x ∘ y = ((z ∘ w) ∘ u) ∘ v
def Equation4322 (G: Type*) [Magma G] := ∀ x y z : G, x ∘ (y ∘ x) = y ∘ (x ∘ z)
def Equation4379 (G: Type*) [Magma G] := ∀ x y z w u v : G, x ∘ (y ∘ z) = w ∘ (u ∘ v)
def Equation4444 (G: Type*) [Magma G] := ∀ x y z : G, x ∘ (y ∘ x) = (y ∘ x) ∘ z
def Equation4582 (G: Type*) [Magma G] := ∀ x y z w u v : G, x ∘ (y ∘ z) = (w ∘ u) ∘ v
def Equation4637 (G: Type*) [Magma G] := ∀ x y z : G, (x ∘ y) ∘ x = (y ∘ x) ∘ z
def Equation4694 (G: Type*) [Magma G] := ∀ x y z w u v : G, (x ∘ y) ∘ z = (w ∘ u) ∘ v
theorem Equation613_implies_Equation475 (G : Type*) [Magma G] (h : Equation613 G) : Equation475 G := λ x y z => h x y x y x z
theorem Equation816_implies_Equation678 (G : Type*) [Magma G] (h : Equation816 G) : Equation678 G := λ x y z => h x y x y x z
theorem Equation1019_implies_Equation881 (G : Type*) [Magma G] (h : Equation1019 G) : Equation881 G := λ x y z => h x y x y x z
theorem Equation1222_implies_Equation1084 (G : Type*) [Magma G] (h : Equation1222 G) : Equation1084 G := λ x y z => h x y x y x z
theorem Equation1425_implies_Equation1287 (G : Type*) [Magma G] (h : Equation1425 G) : Equation1287 G := λ x y z => h x y x y x z
theorem Equation1628_implies_Equation1490 (G : Type*) [Magma G] (h : Equation1628 G) : Equation1490 G := λ x y z => h x y x y x z
theorem Equation1831_implies_Equation1693 (G : Type*) [Magma G] (h : Equation1831 G) : Equation1693 G := λ x y z => h x y x y x z
theorem Equation2034_implies_Equation1896 (G : Type*) [Magma G] (h : Equation2034 G) : Equation1896 G := λ x y z => h x y x y x z
theorem Equation2237_implies_Equation2099 (G : Type*) [Magma G] (h : Equation2237 G) : Equation2099 G := λ x y z => h x y x y x z
theorem Equation2440_implies_Equation2302 (G : Type*) [Magma G] (h : Equation2440 G) : Equation2302 G := λ x y z => h x y x y x z
theorem Equation2643_implies_Equation2505 (G : Type*) [Magma G] (h : Equation2643 G) : Equation2505 G := λ x y z => h x y x y x z
theorem Equation2846_implies_Equation2708 (G : Type*) [Magma G] (h : Equation2846 G) : Equation2708 G := λ x y z => h x y x y x z
theorem Equation3049_implies_Equation2911 (G : Type*) [Magma G] (h : Equation3049 G) : Equation2911 G := λ x y z => h x y x y x z
theorem Equation3252_implies_Equation3114 (G : Type*) [Magma G] (h : Equation3252 G) : Equation3114 G := λ x y z => h x y x y x z
theorem Equation3455_implies_Equation3317 (G : Type*) [Magma G] (h : Equation3455 G) : Equation3317 G := λ x y z => h x y x y x z
theorem Equation3658_implies_Equation3520 (G : Type*) [Magma G] (h : Equation3658 G) : Equation3520 G := λ x y z => h x y x y x z
theorem Equation3861_implies_Equation3723 (G : Type*) [Magma G] (h : Equation3861 G) : Equation3723 G := λ x y z => h x y x y x z
theorem Equation4064_implies_Equation3926 (G : Type*) [Magma G] (h : Equation4064 G) : Equation3926 G := λ x y z => h x y x y x z
theorem Equation4267_implies_Equation4129 (G : Type*) [Magma G] (h : Equation4267 G) : Equation4129 G := λ x y z => h x y x y x z
theorem Equation4379_implies_Equation4322 (G : Type*) [Magma G] (h : Equation4379 G) : Equation4322 G := λ x y z => h x y x y x z
theorem Equation4582_implies_Equation4444 (G : Type*) [Magma G] (h : Equation4582 G) : Equation4444 G := λ x y z => h x y x y x z
theorem Equation4694_implies_Equation4637 (G : Type*) [Magma G] (h : Equation4694 G) : Equation4637 G := λ x y z => h x y x y x z