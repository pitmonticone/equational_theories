import Mathlib.Data.Nat.Defs
import Mathlib.Tactic


universe u

class Magma (α : Type u) where
  /-- `a ∘ b` computes a binary operation of `a` and `b`. -/
  op : α → α → α

@[inherit_doc] infixl:65 " ∘ "   => Magma.op


/- List of equational laws being studied -/
def Equation69 (G: Type*) [Magma G] := ∀ x y z : G, x = y ∘ (x ∘ (z ∘ y))
def Equation98 (G: Type*) [Magma G] := ∀ x y z w u : G, x = y ∘ (z ∘ (w ∘ u))
def Equation121 (G: Type*) [Magma G] := ∀ x y z : G, x = y ∘ ((x ∘ z) ∘ y)
def Equation150 (G: Type*) [Magma G] := ∀ x y z w u : G, x = y ∘ ((z ∘ w) ∘ u)
def Equation173 (G: Type*) [Magma G] := ∀ x y z : G, x = (y ∘ x) ∘ (z ∘ y)
def Equation202 (G: Type*) [Magma G] := ∀ x y z w u : G, x = (y ∘ z) ∘ (w ∘ u)
def Equation225 (G: Type*) [Magma G] := ∀ x y z : G, x = (y ∘ (x ∘ z)) ∘ y
def Equation254 (G: Type*) [Magma G] := ∀ x y z w u : G, x = (y ∘ (z ∘ w)) ∘ u
def Equation277 (G: Type*) [Magma G] := ∀ x y z : G, x = ((y ∘ x) ∘ z) ∘ y
def Equation306 (G: Type*) [Magma G] := ∀ x y z w u : G, x = ((y ∘ z) ∘ w) ∘ u
def Equation329 (G: Type*) [Magma G] := ∀ x y z : G, x ∘ y = x ∘ (z ∘ y)
def Equation358 (G: Type*) [Magma G] := ∀ x y z w u : G, x ∘ y = z ∘ (w ∘ u)
def Equation381 (G: Type*) [Magma G] := ∀ x y z : G, x ∘ y = (x ∘ z) ∘ y
def Equation410 (G: Type*) [Magma G] := ∀ x y z w u : G, x ∘ y = (z ∘ w) ∘ u
def Equation433 (G: Type*) [Magma G] := ∀ x y z : G, x = x ∘ (y ∘ (x ∘ (z ∘ y)))
def Equation462 (G: Type*) [Magma G] := ∀ x y z w u : G, x = x ∘ (y ∘ (z ∘ (w ∘ u)))
def Equation470 (G: Type*) [Magma G] := ∀ x y z : G, x = y ∘ (x ∘ (x ∘ (z ∘ y)))
def Equation480 (G: Type*) [Magma G] := ∀ x y z : G, x = y ∘ (x ∘ (y ∘ (z ∘ y)))
def Equation484 (G: Type*) [Magma G] := ∀ x y z : G, x = y ∘ (x ∘ (z ∘ (x ∘ y)))
def Equation487 (G: Type*) [Magma G] := ∀ x y z : G, x = y ∘ (x ∘ (z ∘ (y ∘ x)))
def Equation488 (G: Type*) [Magma G] := ∀ x y z : G, x = y ∘ (x ∘ (z ∘ (y ∘ y)))
def Equation489 (G: Type*) [Magma G] := ∀ x y z : G, x = y ∘ (x ∘ (z ∘ (y ∘ z)))
def Equation492 (G: Type*) [Magma G] := ∀ x y z : G, x = y ∘ (x ∘ (z ∘ (z ∘ y)))
def Equation499 (G: Type*) [Magma G] := ∀ x y z w u : G, x = y ∘ (x ∘ (z ∘ (w ∘ u)))
def Equation507 (G: Type*) [Magma G] := ∀ x y z : G, x = y ∘ (y ∘ (x ∘ (z ∘ y)))
def Equation536 (G: Type*) [Magma G] := ∀ x y z w u : G, x = y ∘ (y ∘ (z ∘ (w ∘ u)))
def Equation553 (G: Type*) [Magma G] := ∀ x y z w u : G, x = y ∘ (z ∘ (x ∘ (w ∘ u)))
def Equation570 (G: Type*) [Magma G] := ∀ x y z w u : G, x = y ∘ (z ∘ (y ∘ (w ∘ u)))
def Equation587 (G: Type*) [Magma G] := ∀ x y z w u : G, x = y ∘ (z ∘ (z ∘ (w ∘ u)))
def Equation592 (G: Type*) [Magma G] := ∀ x y z w u : G, x = y ∘ (z ∘ (w ∘ (x ∘ u)))
def Equation597 (G: Type*) [Magma G] := ∀ x y z w u : G, x = y ∘ (z ∘ (w ∘ (y ∘ u)))
def Equation602 (G: Type*) [Magma G] := ∀ x y z w u : G, x = y ∘ (z ∘ (w ∘ (z ∘ u)))
def Equation607 (G: Type*) [Magma G] := ∀ x y z w u : G, x = y ∘ (z ∘ (w ∘ (w ∘ u)))
def Equation608 (G: Type*) [Magma G] := ∀ x y z w u : G, x = y ∘ (z ∘ (w ∘ (u ∘ x)))
def Equation609 (G: Type*) [Magma G] := ∀ x y z w u : G, x = y ∘ (z ∘ (w ∘ (u ∘ y)))
def Equation610 (G: Type*) [Magma G] := ∀ x y z w u : G, x = y ∘ (z ∘ (w ∘ (u ∘ z)))
def Equation611 (G: Type*) [Magma G] := ∀ x y z w u : G, x = y ∘ (z ∘ (w ∘ (u ∘ w)))
def Equation612 (G: Type*) [Magma G] := ∀ x y z w u : G, x = y ∘ (z ∘ (w ∘ (u ∘ u)))
def Equation636 (G: Type*) [Magma G] := ∀ x y z : G, x = x ∘ (y ∘ ((x ∘ z) ∘ y))
def Equation665 (G: Type*) [Magma G] := ∀ x y z w u : G, x = x ∘ (y ∘ ((z ∘ w) ∘ u))
def Equation673 (G: Type*) [Magma G] := ∀ x y z : G, x = y ∘ (x ∘ ((x ∘ z) ∘ y))
def Equation683 (G: Type*) [Magma G] := ∀ x y z : G, x = y ∘ (x ∘ ((y ∘ z) ∘ y))
def Equation687 (G: Type*) [Magma G] := ∀ x y z : G, x = y ∘ (x ∘ ((z ∘ x) ∘ y))
def Equation690 (G: Type*) [Magma G] := ∀ x y z : G, x = y ∘ (x ∘ ((z ∘ y) ∘ x))
def Equation691 (G: Type*) [Magma G] := ∀ x y z : G, x = y ∘ (x ∘ ((z ∘ y) ∘ y))
def Equation692 (G: Type*) [Magma G] := ∀ x y z : G, x = y ∘ (x ∘ ((z ∘ y) ∘ z))
def Equation695 (G: Type*) [Magma G] := ∀ x y z : G, x = y ∘ (x ∘ ((z ∘ z) ∘ y))
def Equation702 (G: Type*) [Magma G] := ∀ x y z w u : G, x = y ∘ (x ∘ ((z ∘ w) ∘ u))
def Equation710 (G: Type*) [Magma G] := ∀ x y z : G, x = y ∘ (y ∘ ((x ∘ z) ∘ y))
def Equation739 (G: Type*) [Magma G] := ∀ x y z w u : G, x = y ∘ (y ∘ ((z ∘ w) ∘ u))
def Equation756 (G: Type*) [Magma G] := ∀ x y z w u : G, x = y ∘ (z ∘ ((x ∘ w) ∘ u))
def Equation773 (G: Type*) [Magma G] := ∀ x y z w u : G, x = y ∘ (z ∘ ((y ∘ w) ∘ u))
def Equation790 (G: Type*) [Magma G] := ∀ x y z w u : G, x = y ∘ (z ∘ ((z ∘ w) ∘ u))
def Equation795 (G: Type*) [Magma G] := ∀ x y z w u : G, x = y ∘ (z ∘ ((w ∘ x) ∘ u))
def Equation800 (G: Type*) [Magma G] := ∀ x y z w u : G, x = y ∘ (z ∘ ((w ∘ y) ∘ u))
def Equation805 (G: Type*) [Magma G] := ∀ x y z w u : G, x = y ∘ (z ∘ ((w ∘ z) ∘ u))
def Equation810 (G: Type*) [Magma G] := ∀ x y z w u : G, x = y ∘ (z ∘ ((w ∘ w) ∘ u))
def Equation811 (G: Type*) [Magma G] := ∀ x y z w u : G, x = y ∘ (z ∘ ((w ∘ u) ∘ x))
def Equation812 (G: Type*) [Magma G] := ∀ x y z w u : G, x = y ∘ (z ∘ ((w ∘ u) ∘ y))
def Equation813 (G: Type*) [Magma G] := ∀ x y z w u : G, x = y ∘ (z ∘ ((w ∘ u) ∘ z))
def Equation814 (G: Type*) [Magma G] := ∀ x y z w u : G, x = y ∘ (z ∘ ((w ∘ u) ∘ w))
def Equation815 (G: Type*) [Magma G] := ∀ x y z w u : G, x = y ∘ (z ∘ ((w ∘ u) ∘ u))
def Equation839 (G: Type*) [Magma G] := ∀ x y z : G, x = x ∘ ((y ∘ x) ∘ (z ∘ y))
def Equation868 (G: Type*) [Magma G] := ∀ x y z w u : G, x = x ∘ ((y ∘ z) ∘ (w ∘ u))
def Equation876 (G: Type*) [Magma G] := ∀ x y z : G, x = y ∘ ((x ∘ x) ∘ (z ∘ y))
def Equation886 (G: Type*) [Magma G] := ∀ x y z : G, x = y ∘ ((x ∘ y) ∘ (z ∘ y))
def Equation890 (G: Type*) [Magma G] := ∀ x y z : G, x = y ∘ ((x ∘ z) ∘ (x ∘ y))
def Equation893 (G: Type*) [Magma G] := ∀ x y z : G, x = y ∘ ((x ∘ z) ∘ (y ∘ x))
def Equation894 (G: Type*) [Magma G] := ∀ x y z : G, x = y ∘ ((x ∘ z) ∘ (y ∘ y))
def Equation895 (G: Type*) [Magma G] := ∀ x y z : G, x = y ∘ ((x ∘ z) ∘ (y ∘ z))
def Equation898 (G: Type*) [Magma G] := ∀ x y z : G, x = y ∘ ((x ∘ z) ∘ (z ∘ y))
def Equation905 (G: Type*) [Magma G] := ∀ x y z w u : G, x = y ∘ ((x ∘ z) ∘ (w ∘ u))
def Equation913 (G: Type*) [Magma G] := ∀ x y z : G, x = y ∘ ((y ∘ x) ∘ (z ∘ y))
def Equation942 (G: Type*) [Magma G] := ∀ x y z w u : G, x = y ∘ ((y ∘ z) ∘ (w ∘ u))
def Equation959 (G: Type*) [Magma G] := ∀ x y z w u : G, x = y ∘ ((z ∘ x) ∘ (w ∘ u))
def Equation976 (G: Type*) [Magma G] := ∀ x y z w u : G, x = y ∘ ((z ∘ y) ∘ (w ∘ u))
def Equation993 (G: Type*) [Magma G] := ∀ x y z w u : G, x = y ∘ ((z ∘ z) ∘ (w ∘ u))
def Equation998 (G: Type*) [Magma G] := ∀ x y z w u : G, x = y ∘ ((z ∘ w) ∘ (x ∘ u))
def Equation1003 (G: Type*) [Magma G] := ∀ x y z w u : G, x = y ∘ ((z ∘ w) ∘ (y ∘ u))
def Equation1008 (G: Type*) [Magma G] := ∀ x y z w u : G, x = y ∘ ((z ∘ w) ∘ (z ∘ u))
def Equation1013 (G: Type*) [Magma G] := ∀ x y z w u : G, x = y ∘ ((z ∘ w) ∘ (w ∘ u))
def Equation1014 (G: Type*) [Magma G] := ∀ x y z w u : G, x = y ∘ ((z ∘ w) ∘ (u ∘ x))
def Equation1015 (G: Type*) [Magma G] := ∀ x y z w u : G, x = y ∘ ((z ∘ w) ∘ (u ∘ y))
def Equation1016 (G: Type*) [Magma G] := ∀ x y z w u : G, x = y ∘ ((z ∘ w) ∘ (u ∘ z))
def Equation1017 (G: Type*) [Magma G] := ∀ x y z w u : G, x = y ∘ ((z ∘ w) ∘ (u ∘ w))
def Equation1018 (G: Type*) [Magma G] := ∀ x y z w u : G, x = y ∘ ((z ∘ w) ∘ (u ∘ u))
def Equation1042 (G: Type*) [Magma G] := ∀ x y z : G, x = x ∘ ((y ∘ (x ∘ z)) ∘ y)
def Equation1071 (G: Type*) [Magma G] := ∀ x y z w u : G, x = x ∘ ((y ∘ (z ∘ w)) ∘ u)
def Equation1079 (G: Type*) [Magma G] := ∀ x y z : G, x = y ∘ ((x ∘ (x ∘ z)) ∘ y)
def Equation1089 (G: Type*) [Magma G] := ∀ x y z : G, x = y ∘ ((x ∘ (y ∘ z)) ∘ y)
def Equation1093 (G: Type*) [Magma G] := ∀ x y z : G, x = y ∘ ((x ∘ (z ∘ x)) ∘ y)
def Equation1096 (G: Type*) [Magma G] := ∀ x y z : G, x = y ∘ ((x ∘ (z ∘ y)) ∘ x)
def Equation1097 (G: Type*) [Magma G] := ∀ x y z : G, x = y ∘ ((x ∘ (z ∘ y)) ∘ y)
def Equation1098 (G: Type*) [Magma G] := ∀ x y z : G, x = y ∘ ((x ∘ (z ∘ y)) ∘ z)
def Equation1101 (G: Type*) [Magma G] := ∀ x y z : G, x = y ∘ ((x ∘ (z ∘ z)) ∘ y)
def Equation1108 (G: Type*) [Magma G] := ∀ x y z w u : G, x = y ∘ ((x ∘ (z ∘ w)) ∘ u)
def Equation1116 (G: Type*) [Magma G] := ∀ x y z : G, x = y ∘ ((y ∘ (x ∘ z)) ∘ y)
def Equation1145 (G: Type*) [Magma G] := ∀ x y z w u : G, x = y ∘ ((y ∘ (z ∘ w)) ∘ u)
def Equation1162 (G: Type*) [Magma G] := ∀ x y z w u : G, x = y ∘ ((z ∘ (x ∘ w)) ∘ u)
def Equation1179 (G: Type*) [Magma G] := ∀ x y z w u : G, x = y ∘ ((z ∘ (y ∘ w)) ∘ u)
def Equation1196 (G: Type*) [Magma G] := ∀ x y z w u : G, x = y ∘ ((z ∘ (z ∘ w)) ∘ u)
def Equation1201 (G: Type*) [Magma G] := ∀ x y z w u : G, x = y ∘ ((z ∘ (w ∘ x)) ∘ u)
def Equation1206 (G: Type*) [Magma G] := ∀ x y z w u : G, x = y ∘ ((z ∘ (w ∘ y)) ∘ u)
def Equation1211 (G: Type*) [Magma G] := ∀ x y z w u : G, x = y ∘ ((z ∘ (w ∘ z)) ∘ u)
def Equation1216 (G: Type*) [Magma G] := ∀ x y z w u : G, x = y ∘ ((z ∘ (w ∘ w)) ∘ u)
def Equation1217 (G: Type*) [Magma G] := ∀ x y z w u : G, x = y ∘ ((z ∘ (w ∘ u)) ∘ x)
def Equation1218 (G: Type*) [Magma G] := ∀ x y z w u : G, x = y ∘ ((z ∘ (w ∘ u)) ∘ y)
def Equation1219 (G: Type*) [Magma G] := ∀ x y z w u : G, x = y ∘ ((z ∘ (w ∘ u)) ∘ z)
def Equation1220 (G: Type*) [Magma G] := ∀ x y z w u : G, x = y ∘ ((z ∘ (w ∘ u)) ∘ w)
def Equation1221 (G: Type*) [Magma G] := ∀ x y z w u : G, x = y ∘ ((z ∘ (w ∘ u)) ∘ u)
def Equation1245 (G: Type*) [Magma G] := ∀ x y z : G, x = x ∘ (((y ∘ x) ∘ z) ∘ y)
def Equation1274 (G: Type*) [Magma G] := ∀ x y z w u : G, x = x ∘ (((y ∘ z) ∘ w) ∘ u)
def Equation1282 (G: Type*) [Magma G] := ∀ x y z : G, x = y ∘ (((x ∘ x) ∘ z) ∘ y)
def Equation1292 (G: Type*) [Magma G] := ∀ x y z : G, x = y ∘ (((x ∘ y) ∘ z) ∘ y)
def Equation1296 (G: Type*) [Magma G] := ∀ x y z : G, x = y ∘ (((x ∘ z) ∘ x) ∘ y)
def Equation1299 (G: Type*) [Magma G] := ∀ x y z : G, x = y ∘ (((x ∘ z) ∘ y) ∘ x)
def Equation1300 (G: Type*) [Magma G] := ∀ x y z : G, x = y ∘ (((x ∘ z) ∘ y) ∘ y)
def Equation1301 (G: Type*) [Magma G] := ∀ x y z : G, x = y ∘ (((x ∘ z) ∘ y) ∘ z)
def Equation1304 (G: Type*) [Magma G] := ∀ x y z : G, x = y ∘ (((x ∘ z) ∘ z) ∘ y)
def Equation1311 (G: Type*) [Magma G] := ∀ x y z w u : G, x = y ∘ (((x ∘ z) ∘ w) ∘ u)
def Equation1319 (G: Type*) [Magma G] := ∀ x y z : G, x = y ∘ (((y ∘ x) ∘ z) ∘ y)
def Equation1348 (G: Type*) [Magma G] := ∀ x y z w u : G, x = y ∘ (((y ∘ z) ∘ w) ∘ u)
def Equation1365 (G: Type*) [Magma G] := ∀ x y z w u : G, x = y ∘ (((z ∘ x) ∘ w) ∘ u)
def Equation1382 (G: Type*) [Magma G] := ∀ x y z w u : G, x = y ∘ (((z ∘ y) ∘ w) ∘ u)
def Equation1399 (G: Type*) [Magma G] := ∀ x y z w u : G, x = y ∘ (((z ∘ z) ∘ w) ∘ u)
def Equation1404 (G: Type*) [Magma G] := ∀ x y z w u : G, x = y ∘ (((z ∘ w) ∘ x) ∘ u)
def Equation1409 (G: Type*) [Magma G] := ∀ x y z w u : G, x = y ∘ (((z ∘ w) ∘ y) ∘ u)
def Equation1414 (G: Type*) [Magma G] := ∀ x y z w u : G, x = y ∘ (((z ∘ w) ∘ z) ∘ u)
def Equation1419 (G: Type*) [Magma G] := ∀ x y z w u : G, x = y ∘ (((z ∘ w) ∘ w) ∘ u)
def Equation1420 (G: Type*) [Magma G] := ∀ x y z w u : G, x = y ∘ (((z ∘ w) ∘ u) ∘ x)
def Equation1421 (G: Type*) [Magma G] := ∀ x y z w u : G, x = y ∘ (((z ∘ w) ∘ u) ∘ y)
def Equation1422 (G: Type*) [Magma G] := ∀ x y z w u : G, x = y ∘ (((z ∘ w) ∘ u) ∘ z)
def Equation1423 (G: Type*) [Magma G] := ∀ x y z w u : G, x = y ∘ (((z ∘ w) ∘ u) ∘ w)
def Equation1424 (G: Type*) [Magma G] := ∀ x y z w u : G, x = y ∘ (((z ∘ w) ∘ u) ∘ u)
def Equation1448 (G: Type*) [Magma G] := ∀ x y z : G, x = (x ∘ y) ∘ (x ∘ (z ∘ y))
def Equation1477 (G: Type*) [Magma G] := ∀ x y z w u : G, x = (x ∘ y) ∘ (z ∘ (w ∘ u))
def Equation1485 (G: Type*) [Magma G] := ∀ x y z : G, x = (y ∘ x) ∘ (x ∘ (z ∘ y))
def Equation1495 (G: Type*) [Magma G] := ∀ x y z : G, x = (y ∘ x) ∘ (y ∘ (z ∘ y))
def Equation1499 (G: Type*) [Magma G] := ∀ x y z : G, x = (y ∘ x) ∘ (z ∘ (x ∘ y))
def Equation1502 (G: Type*) [Magma G] := ∀ x y z : G, x = (y ∘ x) ∘ (z ∘ (y ∘ x))
def Equation1503 (G: Type*) [Magma G] := ∀ x y z : G, x = (y ∘ x) ∘ (z ∘ (y ∘ y))
def Equation1504 (G: Type*) [Magma G] := ∀ x y z : G, x = (y ∘ x) ∘ (z ∘ (y ∘ z))
def Equation1507 (G: Type*) [Magma G] := ∀ x y z : G, x = (y ∘ x) ∘ (z ∘ (z ∘ y))
def Equation1514 (G: Type*) [Magma G] := ∀ x y z w u : G, x = (y ∘ x) ∘ (z ∘ (w ∘ u))
def Equation1522 (G: Type*) [Magma G] := ∀ x y z : G, x = (y ∘ y) ∘ (x ∘ (z ∘ y))
def Equation1551 (G: Type*) [Magma G] := ∀ x y z w u : G, x = (y ∘ y) ∘ (z ∘ (w ∘ u))
def Equation1568 (G: Type*) [Magma G] := ∀ x y z w u : G, x = (y ∘ z) ∘ (x ∘ (w ∘ u))
def Equation1585 (G: Type*) [Magma G] := ∀ x y z w u : G, x = (y ∘ z) ∘ (y ∘ (w ∘ u))
def Equation1602 (G: Type*) [Magma G] := ∀ x y z w u : G, x = (y ∘ z) ∘ (z ∘ (w ∘ u))
def Equation1607 (G: Type*) [Magma G] := ∀ x y z w u : G, x = (y ∘ z) ∘ (w ∘ (x ∘ u))
def Equation1612 (G: Type*) [Magma G] := ∀ x y z w u : G, x = (y ∘ z) ∘ (w ∘ (y ∘ u))
def Equation1617 (G: Type*) [Magma G] := ∀ x y z w u : G, x = (y ∘ z) ∘ (w ∘ (z ∘ u))
def Equation1622 (G: Type*) [Magma G] := ∀ x y z w u : G, x = (y ∘ z) ∘ (w ∘ (w ∘ u))
def Equation1623 (G: Type*) [Magma G] := ∀ x y z w u : G, x = (y ∘ z) ∘ (w ∘ (u ∘ x))
def Equation1624 (G: Type*) [Magma G] := ∀ x y z w u : G, x = (y ∘ z) ∘ (w ∘ (u ∘ y))
def Equation1625 (G: Type*) [Magma G] := ∀ x y z w u : G, x = (y ∘ z) ∘ (w ∘ (u ∘ z))
def Equation1626 (G: Type*) [Magma G] := ∀ x y z w u : G, x = (y ∘ z) ∘ (w ∘ (u ∘ w))
def Equation1627 (G: Type*) [Magma G] := ∀ x y z w u : G, x = (y ∘ z) ∘ (w ∘ (u ∘ u))
def Equation1651 (G: Type*) [Magma G] := ∀ x y z : G, x = (x ∘ y) ∘ ((x ∘ z) ∘ y)
def Equation1680 (G: Type*) [Magma G] := ∀ x y z w u : G, x = (x ∘ y) ∘ ((z ∘ w) ∘ u)
def Equation1688 (G: Type*) [Magma G] := ∀ x y z : G, x = (y ∘ x) ∘ ((x ∘ z) ∘ y)
def Equation1698 (G: Type*) [Magma G] := ∀ x y z : G, x = (y ∘ x) ∘ ((y ∘ z) ∘ y)
def Equation1702 (G: Type*) [Magma G] := ∀ x y z : G, x = (y ∘ x) ∘ ((z ∘ x) ∘ y)
def Equation1705 (G: Type*) [Magma G] := ∀ x y z : G, x = (y ∘ x) ∘ ((z ∘ y) ∘ x)
def Equation1706 (G: Type*) [Magma G] := ∀ x y z : G, x = (y ∘ x) ∘ ((z ∘ y) ∘ y)
def Equation1707 (G: Type*) [Magma G] := ∀ x y z : G, x = (y ∘ x) ∘ ((z ∘ y) ∘ z)
def Equation1710 (G: Type*) [Magma G] := ∀ x y z : G, x = (y ∘ x) ∘ ((z ∘ z) ∘ y)
def Equation1717 (G: Type*) [Magma G] := ∀ x y z w u : G, x = (y ∘ x) ∘ ((z ∘ w) ∘ u)
def Equation1725 (G: Type*) [Magma G] := ∀ x y z : G, x = (y ∘ y) ∘ ((x ∘ z) ∘ y)
def Equation1754 (G: Type*) [Magma G] := ∀ x y z w u : G, x = (y ∘ y) ∘ ((z ∘ w) ∘ u)
def Equation1771 (G: Type*) [Magma G] := ∀ x y z w u : G, x = (y ∘ z) ∘ ((x ∘ w) ∘ u)
def Equation1788 (G: Type*) [Magma G] := ∀ x y z w u : G, x = (y ∘ z) ∘ ((y ∘ w) ∘ u)
def Equation1805 (G: Type*) [Magma G] := ∀ x y z w u : G, x = (y ∘ z) ∘ ((z ∘ w) ∘ u)
def Equation1810 (G: Type*) [Magma G] := ∀ x y z w u : G, x = (y ∘ z) ∘ ((w ∘ x) ∘ u)
def Equation1815 (G: Type*) [Magma G] := ∀ x y z w u : G, x = (y ∘ z) ∘ ((w ∘ y) ∘ u)
def Equation1820 (G: Type*) [Magma G] := ∀ x y z w u : G, x = (y ∘ z) ∘ ((w ∘ z) ∘ u)
def Equation1825 (G: Type*) [Magma G] := ∀ x y z w u : G, x = (y ∘ z) ∘ ((w ∘ w) ∘ u)
def Equation1826 (G: Type*) [Magma G] := ∀ x y z w u : G, x = (y ∘ z) ∘ ((w ∘ u) ∘ x)
def Equation1827 (G: Type*) [Magma G] := ∀ x y z w u : G, x = (y ∘ z) ∘ ((w ∘ u) ∘ y)
def Equation1828 (G: Type*) [Magma G] := ∀ x y z w u : G, x = (y ∘ z) ∘ ((w ∘ u) ∘ z)
def Equation1829 (G: Type*) [Magma G] := ∀ x y z w u : G, x = (y ∘ z) ∘ ((w ∘ u) ∘ w)
def Equation1830 (G: Type*) [Magma G] := ∀ x y z w u : G, x = (y ∘ z) ∘ ((w ∘ u) ∘ u)
def Equation1854 (G: Type*) [Magma G] := ∀ x y z : G, x = (x ∘ (y ∘ x)) ∘ (z ∘ y)
def Equation1883 (G: Type*) [Magma G] := ∀ x y z w u : G, x = (x ∘ (y ∘ z)) ∘ (w ∘ u)
def Equation1891 (G: Type*) [Magma G] := ∀ x y z : G, x = (y ∘ (x ∘ x)) ∘ (z ∘ y)
def Equation1901 (G: Type*) [Magma G] := ∀ x y z : G, x = (y ∘ (x ∘ y)) ∘ (z ∘ y)
def Equation1905 (G: Type*) [Magma G] := ∀ x y z : G, x = (y ∘ (x ∘ z)) ∘ (x ∘ y)
def Equation1908 (G: Type*) [Magma G] := ∀ x y z : G, x = (y ∘ (x ∘ z)) ∘ (y ∘ x)
def Equation1909 (G: Type*) [Magma G] := ∀ x y z : G, x = (y ∘ (x ∘ z)) ∘ (y ∘ y)
def Equation1910 (G: Type*) [Magma G] := ∀ x y z : G, x = (y ∘ (x ∘ z)) ∘ (y ∘ z)
def Equation1913 (G: Type*) [Magma G] := ∀ x y z : G, x = (y ∘ (x ∘ z)) ∘ (z ∘ y)
def Equation1920 (G: Type*) [Magma G] := ∀ x y z w u : G, x = (y ∘ (x ∘ z)) ∘ (w ∘ u)
def Equation1928 (G: Type*) [Magma G] := ∀ x y z : G, x = (y ∘ (y ∘ x)) ∘ (z ∘ y)
def Equation1957 (G: Type*) [Magma G] := ∀ x y z w u : G, x = (y ∘ (y ∘ z)) ∘ (w ∘ u)
def Equation1974 (G: Type*) [Magma G] := ∀ x y z w u : G, x = (y ∘ (z ∘ x)) ∘ (w ∘ u)
def Equation1991 (G: Type*) [Magma G] := ∀ x y z w u : G, x = (y ∘ (z ∘ y)) ∘ (w ∘ u)
def Equation2008 (G: Type*) [Magma G] := ∀ x y z w u : G, x = (y ∘ (z ∘ z)) ∘ (w ∘ u)
def Equation2013 (G: Type*) [Magma G] := ∀ x y z w u : G, x = (y ∘ (z ∘ w)) ∘ (x ∘ u)
def Equation2018 (G: Type*) [Magma G] := ∀ x y z w u : G, x = (y ∘ (z ∘ w)) ∘ (y ∘ u)
def Equation2023 (G: Type*) [Magma G] := ∀ x y z w u : G, x = (y ∘ (z ∘ w)) ∘ (z ∘ u)
def Equation2028 (G: Type*) [Magma G] := ∀ x y z w u : G, x = (y ∘ (z ∘ w)) ∘ (w ∘ u)
def Equation2029 (G: Type*) [Magma G] := ∀ x y z w u : G, x = (y ∘ (z ∘ w)) ∘ (u ∘ x)
def Equation2030 (G: Type*) [Magma G] := ∀ x y z w u : G, x = (y ∘ (z ∘ w)) ∘ (u ∘ y)
def Equation2031 (G: Type*) [Magma G] := ∀ x y z w u : G, x = (y ∘ (z ∘ w)) ∘ (u ∘ z)
def Equation2032 (G: Type*) [Magma G] := ∀ x y z w u : G, x = (y ∘ (z ∘ w)) ∘ (u ∘ w)
def Equation2033 (G: Type*) [Magma G] := ∀ x y z w u : G, x = (y ∘ (z ∘ w)) ∘ (u ∘ u)
def Equation2057 (G: Type*) [Magma G] := ∀ x y z : G, x = ((x ∘ y) ∘ x) ∘ (z ∘ y)
def Equation2086 (G: Type*) [Magma G] := ∀ x y z w u : G, x = ((x ∘ y) ∘ z) ∘ (w ∘ u)
def Equation2094 (G: Type*) [Magma G] := ∀ x y z : G, x = ((y ∘ x) ∘ x) ∘ (z ∘ y)
def Equation2104 (G: Type*) [Magma G] := ∀ x y z : G, x = ((y ∘ x) ∘ y) ∘ (z ∘ y)
def Equation2108 (G: Type*) [Magma G] := ∀ x y z : G, x = ((y ∘ x) ∘ z) ∘ (x ∘ y)
def Equation2111 (G: Type*) [Magma G] := ∀ x y z : G, x = ((y ∘ x) ∘ z) ∘ (y ∘ x)
def Equation2112 (G: Type*) [Magma G] := ∀ x y z : G, x = ((y ∘ x) ∘ z) ∘ (y ∘ y)
def Equation2113 (G: Type*) [Magma G] := ∀ x y z : G, x = ((y ∘ x) ∘ z) ∘ (y ∘ z)
def Equation2116 (G: Type*) [Magma G] := ∀ x y z : G, x = ((y ∘ x) ∘ z) ∘ (z ∘ y)
def Equation2123 (G: Type*) [Magma G] := ∀ x y z w u : G, x = ((y ∘ x) ∘ z) ∘ (w ∘ u)
def Equation2131 (G: Type*) [Magma G] := ∀ x y z : G, x = ((y ∘ y) ∘ x) ∘ (z ∘ y)
def Equation2160 (G: Type*) [Magma G] := ∀ x y z w u : G, x = ((y ∘ y) ∘ z) ∘ (w ∘ u)
def Equation2177 (G: Type*) [Magma G] := ∀ x y z w u : G, x = ((y ∘ z) ∘ x) ∘ (w ∘ u)
def Equation2194 (G: Type*) [Magma G] := ∀ x y z w u : G, x = ((y ∘ z) ∘ y) ∘ (w ∘ u)
def Equation2211 (G: Type*) [Magma G] := ∀ x y z w u : G, x = ((y ∘ z) ∘ z) ∘ (w ∘ u)
def Equation2216 (G: Type*) [Magma G] := ∀ x y z w u : G, x = ((y ∘ z) ∘ w) ∘ (x ∘ u)
def Equation2221 (G: Type*) [Magma G] := ∀ x y z w u : G, x = ((y ∘ z) ∘ w) ∘ (y ∘ u)
def Equation2226 (G: Type*) [Magma G] := ∀ x y z w u : G, x = ((y ∘ z) ∘ w) ∘ (z ∘ u)
def Equation2231 (G: Type*) [Magma G] := ∀ x y z w u : G, x = ((y ∘ z) ∘ w) ∘ (w ∘ u)
def Equation2232 (G: Type*) [Magma G] := ∀ x y z w u : G, x = ((y ∘ z) ∘ w) ∘ (u ∘ x)
def Equation2233 (G: Type*) [Magma G] := ∀ x y z w u : G, x = ((y ∘ z) ∘ w) ∘ (u ∘ y)
def Equation2234 (G: Type*) [Magma G] := ∀ x y z w u : G, x = ((y ∘ z) ∘ w) ∘ (u ∘ z)
def Equation2235 (G: Type*) [Magma G] := ∀ x y z w u : G, x = ((y ∘ z) ∘ w) ∘ (u ∘ w)
def Equation2236 (G: Type*) [Magma G] := ∀ x y z w u : G, x = ((y ∘ z) ∘ w) ∘ (u ∘ u)
def Equation2260 (G: Type*) [Magma G] := ∀ x y z : G, x = (x ∘ (y ∘ (x ∘ z))) ∘ y
def Equation2289 (G: Type*) [Magma G] := ∀ x y z w u : G, x = (x ∘ (y ∘ (z ∘ w))) ∘ u
def Equation2297 (G: Type*) [Magma G] := ∀ x y z : G, x = (y ∘ (x ∘ (x ∘ z))) ∘ y
def Equation2307 (G: Type*) [Magma G] := ∀ x y z : G, x = (y ∘ (x ∘ (y ∘ z))) ∘ y
def Equation2311 (G: Type*) [Magma G] := ∀ x y z : G, x = (y ∘ (x ∘ (z ∘ x))) ∘ y
def Equation2314 (G: Type*) [Magma G] := ∀ x y z : G, x = (y ∘ (x ∘ (z ∘ y))) ∘ x
def Equation2315 (G: Type*) [Magma G] := ∀ x y z : G, x = (y ∘ (x ∘ (z ∘ y))) ∘ y
def Equation2316 (G: Type*) [Magma G] := ∀ x y z : G, x = (y ∘ (x ∘ (z ∘ y))) ∘ z
def Equation2319 (G: Type*) [Magma G] := ∀ x y z : G, x = (y ∘ (x ∘ (z ∘ z))) ∘ y
def Equation2326 (G: Type*) [Magma G] := ∀ x y z w u : G, x = (y ∘ (x ∘ (z ∘ w))) ∘ u
def Equation2334 (G: Type*) [Magma G] := ∀ x y z : G, x = (y ∘ (y ∘ (x ∘ z))) ∘ y
def Equation2363 (G: Type*) [Magma G] := ∀ x y z w u : G, x = (y ∘ (y ∘ (z ∘ w))) ∘ u
def Equation2380 (G: Type*) [Magma G] := ∀ x y z w u : G, x = (y ∘ (z ∘ (x ∘ w))) ∘ u
def Equation2397 (G: Type*) [Magma G] := ∀ x y z w u : G, x = (y ∘ (z ∘ (y ∘ w))) ∘ u
def Equation2414 (G: Type*) [Magma G] := ∀ x y z w u : G, x = (y ∘ (z ∘ (z ∘ w))) ∘ u
def Equation2419 (G: Type*) [Magma G] := ∀ x y z w u : G, x = (y ∘ (z ∘ (w ∘ x))) ∘ u
def Equation2424 (G: Type*) [Magma G] := ∀ x y z w u : G, x = (y ∘ (z ∘ (w ∘ y))) ∘ u
def Equation2429 (G: Type*) [Magma G] := ∀ x y z w u : G, x = (y ∘ (z ∘ (w ∘ z))) ∘ u
def Equation2434 (G: Type*) [Magma G] := ∀ x y z w u : G, x = (y ∘ (z ∘ (w ∘ w))) ∘ u
def Equation2435 (G: Type*) [Magma G] := ∀ x y z w u : G, x = (y ∘ (z ∘ (w ∘ u))) ∘ x
def Equation2436 (G: Type*) [Magma G] := ∀ x y z w u : G, x = (y ∘ (z ∘ (w ∘ u))) ∘ y
def Equation2437 (G: Type*) [Magma G] := ∀ x y z w u : G, x = (y ∘ (z ∘ (w ∘ u))) ∘ z
def Equation2438 (G: Type*) [Magma G] := ∀ x y z w u : G, x = (y ∘ (z ∘ (w ∘ u))) ∘ w
def Equation2439 (G: Type*) [Magma G] := ∀ x y z w u : G, x = (y ∘ (z ∘ (w ∘ u))) ∘ u
def Equation2463 (G: Type*) [Magma G] := ∀ x y z : G, x = (x ∘ ((y ∘ x) ∘ z)) ∘ y
def Equation2492 (G: Type*) [Magma G] := ∀ x y z w u : G, x = (x ∘ ((y ∘ z) ∘ w)) ∘ u
def Equation2500 (G: Type*) [Magma G] := ∀ x y z : G, x = (y ∘ ((x ∘ x) ∘ z)) ∘ y
def Equation2510 (G: Type*) [Magma G] := ∀ x y z : G, x = (y ∘ ((x ∘ y) ∘ z)) ∘ y
def Equation2514 (G: Type*) [Magma G] := ∀ x y z : G, x = (y ∘ ((x ∘ z) ∘ x)) ∘ y
def Equation2517 (G: Type*) [Magma G] := ∀ x y z : G, x = (y ∘ ((x ∘ z) ∘ y)) ∘ x
def Equation2518 (G: Type*) [Magma G] := ∀ x y z : G, x = (y ∘ ((x ∘ z) ∘ y)) ∘ y
def Equation2519 (G: Type*) [Magma G] := ∀ x y z : G, x = (y ∘ ((x ∘ z) ∘ y)) ∘ z
def Equation2522 (G: Type*) [Magma G] := ∀ x y z : G, x = (y ∘ ((x ∘ z) ∘ z)) ∘ y
def Equation2529 (G: Type*) [Magma G] := ∀ x y z w u : G, x = (y ∘ ((x ∘ z) ∘ w)) ∘ u
def Equation2537 (G: Type*) [Magma G] := ∀ x y z : G, x = (y ∘ ((y ∘ x) ∘ z)) ∘ y
def Equation2566 (G: Type*) [Magma G] := ∀ x y z w u : G, x = (y ∘ ((y ∘ z) ∘ w)) ∘ u
def Equation2583 (G: Type*) [Magma G] := ∀ x y z w u : G, x = (y ∘ ((z ∘ x) ∘ w)) ∘ u
def Equation2600 (G: Type*) [Magma G] := ∀ x y z w u : G, x = (y ∘ ((z ∘ y) ∘ w)) ∘ u
def Equation2617 (G: Type*) [Magma G] := ∀ x y z w u : G, x = (y ∘ ((z ∘ z) ∘ w)) ∘ u
def Equation2622 (G: Type*) [Magma G] := ∀ x y z w u : G, x = (y ∘ ((z ∘ w) ∘ x)) ∘ u
def Equation2627 (G: Type*) [Magma G] := ∀ x y z w u : G, x = (y ∘ ((z ∘ w) ∘ y)) ∘ u
def Equation2632 (G: Type*) [Magma G] := ∀ x y z w u : G, x = (y ∘ ((z ∘ w) ∘ z)) ∘ u
def Equation2637 (G: Type*) [Magma G] := ∀ x y z w u : G, x = (y ∘ ((z ∘ w) ∘ w)) ∘ u
def Equation2638 (G: Type*) [Magma G] := ∀ x y z w u : G, x = (y ∘ ((z ∘ w) ∘ u)) ∘ x
def Equation2639 (G: Type*) [Magma G] := ∀ x y z w u : G, x = (y ∘ ((z ∘ w) ∘ u)) ∘ y
def Equation2640 (G: Type*) [Magma G] := ∀ x y z w u : G, x = (y ∘ ((z ∘ w) ∘ u)) ∘ z
def Equation2641 (G: Type*) [Magma G] := ∀ x y z w u : G, x = (y ∘ ((z ∘ w) ∘ u)) ∘ w
def Equation2642 (G: Type*) [Magma G] := ∀ x y z w u : G, x = (y ∘ ((z ∘ w) ∘ u)) ∘ u
def Equation2666 (G: Type*) [Magma G] := ∀ x y z : G, x = ((x ∘ y) ∘ (x ∘ z)) ∘ y
def Equation2695 (G: Type*) [Magma G] := ∀ x y z w u : G, x = ((x ∘ y) ∘ (z ∘ w)) ∘ u
def Equation2703 (G: Type*) [Magma G] := ∀ x y z : G, x = ((y ∘ x) ∘ (x ∘ z)) ∘ y
def Equation2713 (G: Type*) [Magma G] := ∀ x y z : G, x = ((y ∘ x) ∘ (y ∘ z)) ∘ y
def Equation2717 (G: Type*) [Magma G] := ∀ x y z : G, x = ((y ∘ x) ∘ (z ∘ x)) ∘ y
def Equation2720 (G: Type*) [Magma G] := ∀ x y z : G, x = ((y ∘ x) ∘ (z ∘ y)) ∘ x
def Equation2721 (G: Type*) [Magma G] := ∀ x y z : G, x = ((y ∘ x) ∘ (z ∘ y)) ∘ y
def Equation2722 (G: Type*) [Magma G] := ∀ x y z : G, x = ((y ∘ x) ∘ (z ∘ y)) ∘ z
def Equation2725 (G: Type*) [Magma G] := ∀ x y z : G, x = ((y ∘ x) ∘ (z ∘ z)) ∘ y
def Equation2732 (G: Type*) [Magma G] := ∀ x y z w u : G, x = ((y ∘ x) ∘ (z ∘ w)) ∘ u
def Equation2740 (G: Type*) [Magma G] := ∀ x y z : G, x = ((y ∘ y) ∘ (x ∘ z)) ∘ y
def Equation2769 (G: Type*) [Magma G] := ∀ x y z w u : G, x = ((y ∘ y) ∘ (z ∘ w)) ∘ u
def Equation2786 (G: Type*) [Magma G] := ∀ x y z w u : G, x = ((y ∘ z) ∘ (x ∘ w)) ∘ u
def Equation2803 (G: Type*) [Magma G] := ∀ x y z w u : G, x = ((y ∘ z) ∘ (y ∘ w)) ∘ u
def Equation2820 (G: Type*) [Magma G] := ∀ x y z w u : G, x = ((y ∘ z) ∘ (z ∘ w)) ∘ u
def Equation2825 (G: Type*) [Magma G] := ∀ x y z w u : G, x = ((y ∘ z) ∘ (w ∘ x)) ∘ u
def Equation2830 (G: Type*) [Magma G] := ∀ x y z w u : G, x = ((y ∘ z) ∘ (w ∘ y)) ∘ u
def Equation2835 (G: Type*) [Magma G] := ∀ x y z w u : G, x = ((y ∘ z) ∘ (w ∘ z)) ∘ u
def Equation2840 (G: Type*) [Magma G] := ∀ x y z w u : G, x = ((y ∘ z) ∘ (w ∘ w)) ∘ u
def Equation2841 (G: Type*) [Magma G] := ∀ x y z w u : G, x = ((y ∘ z) ∘ (w ∘ u)) ∘ x
def Equation2842 (G: Type*) [Magma G] := ∀ x y z w u : G, x = ((y ∘ z) ∘ (w ∘ u)) ∘ y
def Equation2843 (G: Type*) [Magma G] := ∀ x y z w u : G, x = ((y ∘ z) ∘ (w ∘ u)) ∘ z
def Equation2844 (G: Type*) [Magma G] := ∀ x y z w u : G, x = ((y ∘ z) ∘ (w ∘ u)) ∘ w
def Equation2845 (G: Type*) [Magma G] := ∀ x y z w u : G, x = ((y ∘ z) ∘ (w ∘ u)) ∘ u
def Equation2869 (G: Type*) [Magma G] := ∀ x y z : G, x = ((x ∘ (y ∘ x)) ∘ z) ∘ y
def Equation2898 (G: Type*) [Magma G] := ∀ x y z w u : G, x = ((x ∘ (y ∘ z)) ∘ w) ∘ u
def Equation2906 (G: Type*) [Magma G] := ∀ x y z : G, x = ((y ∘ (x ∘ x)) ∘ z) ∘ y
def Equation2916 (G: Type*) [Magma G] := ∀ x y z : G, x = ((y ∘ (x ∘ y)) ∘ z) ∘ y
def Equation2920 (G: Type*) [Magma G] := ∀ x y z : G, x = ((y ∘ (x ∘ z)) ∘ x) ∘ y
def Equation2923 (G: Type*) [Magma G] := ∀ x y z : G, x = ((y ∘ (x ∘ z)) ∘ y) ∘ x
def Equation2924 (G: Type*) [Magma G] := ∀ x y z : G, x = ((y ∘ (x ∘ z)) ∘ y) ∘ y
def Equation2925 (G: Type*) [Magma G] := ∀ x y z : G, x = ((y ∘ (x ∘ z)) ∘ y) ∘ z
def Equation2928 (G: Type*) [Magma G] := ∀ x y z : G, x = ((y ∘ (x ∘ z)) ∘ z) ∘ y
def Equation2935 (G: Type*) [Magma G] := ∀ x y z w u : G, x = ((y ∘ (x ∘ z)) ∘ w) ∘ u
def Equation2943 (G: Type*) [Magma G] := ∀ x y z : G, x = ((y ∘ (y ∘ x)) ∘ z) ∘ y
def Equation2972 (G: Type*) [Magma G] := ∀ x y z w u : G, x = ((y ∘ (y ∘ z)) ∘ w) ∘ u
def Equation2989 (G: Type*) [Magma G] := ∀ x y z w u : G, x = ((y ∘ (z ∘ x)) ∘ w) ∘ u
def Equation3006 (G: Type*) [Magma G] := ∀ x y z w u : G, x = ((y ∘ (z ∘ y)) ∘ w) ∘ u
def Equation3023 (G: Type*) [Magma G] := ∀ x y z w u : G, x = ((y ∘ (z ∘ z)) ∘ w) ∘ u
def Equation3028 (G: Type*) [Magma G] := ∀ x y z w u : G, x = ((y ∘ (z ∘ w)) ∘ x) ∘ u
def Equation3033 (G: Type*) [Magma G] := ∀ x y z w u : G, x = ((y ∘ (z ∘ w)) ∘ y) ∘ u
def Equation3038 (G: Type*) [Magma G] := ∀ x y z w u : G, x = ((y ∘ (z ∘ w)) ∘ z) ∘ u
def Equation3043 (G: Type*) [Magma G] := ∀ x y z w u : G, x = ((y ∘ (z ∘ w)) ∘ w) ∘ u
def Equation3044 (G: Type*) [Magma G] := ∀ x y z w u : G, x = ((y ∘ (z ∘ w)) ∘ u) ∘ x
def Equation3045 (G: Type*) [Magma G] := ∀ x y z w u : G, x = ((y ∘ (z ∘ w)) ∘ u) ∘ y
def Equation3046 (G: Type*) [Magma G] := ∀ x y z w u : G, x = ((y ∘ (z ∘ w)) ∘ u) ∘ z
def Equation3047 (G: Type*) [Magma G] := ∀ x y z w u : G, x = ((y ∘ (z ∘ w)) ∘ u) ∘ w
def Equation3048 (G: Type*) [Magma G] := ∀ x y z w u : G, x = ((y ∘ (z ∘ w)) ∘ u) ∘ u
def Equation3072 (G: Type*) [Magma G] := ∀ x y z : G, x = (((x ∘ y) ∘ x) ∘ z) ∘ y
def Equation3101 (G: Type*) [Magma G] := ∀ x y z w u : G, x = (((x ∘ y) ∘ z) ∘ w) ∘ u
def Equation3109 (G: Type*) [Magma G] := ∀ x y z : G, x = (((y ∘ x) ∘ x) ∘ z) ∘ y
def Equation3119 (G: Type*) [Magma G] := ∀ x y z : G, x = (((y ∘ x) ∘ y) ∘ z) ∘ y
def Equation3123 (G: Type*) [Magma G] := ∀ x y z : G, x = (((y ∘ x) ∘ z) ∘ x) ∘ y
def Equation3126 (G: Type*) [Magma G] := ∀ x y z : G, x = (((y ∘ x) ∘ z) ∘ y) ∘ x
def Equation3127 (G: Type*) [Magma G] := ∀ x y z : G, x = (((y ∘ x) ∘ z) ∘ y) ∘ y
def Equation3128 (G: Type*) [Magma G] := ∀ x y z : G, x = (((y ∘ x) ∘ z) ∘ y) ∘ z
def Equation3131 (G: Type*) [Magma G] := ∀ x y z : G, x = (((y ∘ x) ∘ z) ∘ z) ∘ y
def Equation3138 (G: Type*) [Magma G] := ∀ x y z w u : G, x = (((y ∘ x) ∘ z) ∘ w) ∘ u
def Equation3146 (G: Type*) [Magma G] := ∀ x y z : G, x = (((y ∘ y) ∘ x) ∘ z) ∘ y
def Equation3175 (G: Type*) [Magma G] := ∀ x y z w u : G, x = (((y ∘ y) ∘ z) ∘ w) ∘ u
def Equation3192 (G: Type*) [Magma G] := ∀ x y z w u : G, x = (((y ∘ z) ∘ x) ∘ w) ∘ u
def Equation3209 (G: Type*) [Magma G] := ∀ x y z w u : G, x = (((y ∘ z) ∘ y) ∘ w) ∘ u
def Equation3226 (G: Type*) [Magma G] := ∀ x y z w u : G, x = (((y ∘ z) ∘ z) ∘ w) ∘ u
def Equation3231 (G: Type*) [Magma G] := ∀ x y z w u : G, x = (((y ∘ z) ∘ w) ∘ x) ∘ u
def Equation3236 (G: Type*) [Magma G] := ∀ x y z w u : G, x = (((y ∘ z) ∘ w) ∘ y) ∘ u
def Equation3241 (G: Type*) [Magma G] := ∀ x y z w u : G, x = (((y ∘ z) ∘ w) ∘ z) ∘ u
def Equation3246 (G: Type*) [Magma G] := ∀ x y z w u : G, x = (((y ∘ z) ∘ w) ∘ w) ∘ u
def Equation3247 (G: Type*) [Magma G] := ∀ x y z w u : G, x = (((y ∘ z) ∘ w) ∘ u) ∘ x
def Equation3248 (G: Type*) [Magma G] := ∀ x y z w u : G, x = (((y ∘ z) ∘ w) ∘ u) ∘ y
def Equation3249 (G: Type*) [Magma G] := ∀ x y z w u : G, x = (((y ∘ z) ∘ w) ∘ u) ∘ z
def Equation3250 (G: Type*) [Magma G] := ∀ x y z w u : G, x = (((y ∘ z) ∘ w) ∘ u) ∘ w
def Equation3251 (G: Type*) [Magma G] := ∀ x y z w u : G, x = (((y ∘ z) ∘ w) ∘ u) ∘ u
def Equation3275 (G: Type*) [Magma G] := ∀ x y z : G, x ∘ x = y ∘ (x ∘ (z ∘ y))
def Equation3304 (G: Type*) [Magma G] := ∀ x y z w u : G, x ∘ x = y ∘ (z ∘ (w ∘ u))
def Equation3312 (G: Type*) [Magma G] := ∀ x y z : G, x ∘ y = x ∘ (x ∘ (z ∘ y))
def Equation3322 (G: Type*) [Magma G] := ∀ x y z : G, x ∘ y = x ∘ (y ∘ (z ∘ y))
def Equation3326 (G: Type*) [Magma G] := ∀ x y z : G, x ∘ y = x ∘ (z ∘ (x ∘ y))
def Equation3329 (G: Type*) [Magma G] := ∀ x y z : G, x ∘ y = x ∘ (z ∘ (y ∘ x))
def Equation3330 (G: Type*) [Magma G] := ∀ x y z : G, x ∘ y = x ∘ (z ∘ (y ∘ y))
def Equation3331 (G: Type*) [Magma G] := ∀ x y z : G, x ∘ y = x ∘ (z ∘ (y ∘ z))
def Equation3334 (G: Type*) [Magma G] := ∀ x y z : G, x ∘ y = x ∘ (z ∘ (z ∘ y))
def Equation3341 (G: Type*) [Magma G] := ∀ x y z w u : G, x ∘ y = x ∘ (z ∘ (w ∘ u))
def Equation3349 (G: Type*) [Magma G] := ∀ x y z : G, x ∘ y = y ∘ (x ∘ (z ∘ y))
def Equation3378 (G: Type*) [Magma G] := ∀ x y z w u : G, x ∘ y = y ∘ (z ∘ (w ∘ u))
def Equation3395 (G: Type*) [Magma G] := ∀ x y z w u : G, x ∘ y = z ∘ (x ∘ (w ∘ u))
def Equation3412 (G: Type*) [Magma G] := ∀ x y z w u : G, x ∘ y = z ∘ (y ∘ (w ∘ u))
def Equation3429 (G: Type*) [Magma G] := ∀ x y z w u : G, x ∘ y = z ∘ (z ∘ (w ∘ u))
def Equation3434 (G: Type*) [Magma G] := ∀ x y z w u : G, x ∘ y = z ∘ (w ∘ (x ∘ u))
def Equation3439 (G: Type*) [Magma G] := ∀ x y z w u : G, x ∘ y = z ∘ (w ∘ (y ∘ u))
def Equation3444 (G: Type*) [Magma G] := ∀ x y z w u : G, x ∘ y = z ∘ (w ∘ (z ∘ u))
def Equation3449 (G: Type*) [Magma G] := ∀ x y z w u : G, x ∘ y = z ∘ (w ∘ (w ∘ u))
def Equation3450 (G: Type*) [Magma G] := ∀ x y z w u : G, x ∘ y = z ∘ (w ∘ (u ∘ x))
def Equation3451 (G: Type*) [Magma G] := ∀ x y z w u : G, x ∘ y = z ∘ (w ∘ (u ∘ y))
def Equation3452 (G: Type*) [Magma G] := ∀ x y z w u : G, x ∘ y = z ∘ (w ∘ (u ∘ z))
def Equation3453 (G: Type*) [Magma G] := ∀ x y z w u : G, x ∘ y = z ∘ (w ∘ (u ∘ w))
def Equation3454 (G: Type*) [Magma G] := ∀ x y z w u : G, x ∘ y = z ∘ (w ∘ (u ∘ u))
def Equation3478 (G: Type*) [Magma G] := ∀ x y z : G, x ∘ x = y ∘ ((x ∘ z) ∘ y)
def Equation3507 (G: Type*) [Magma G] := ∀ x y z w u : G, x ∘ x = y ∘ ((z ∘ w) ∘ u)
def Equation3515 (G: Type*) [Magma G] := ∀ x y z : G, x ∘ y = x ∘ ((x ∘ z) ∘ y)
def Equation3525 (G: Type*) [Magma G] := ∀ x y z : G, x ∘ y = x ∘ ((y ∘ z) ∘ y)
def Equation3529 (G: Type*) [Magma G] := ∀ x y z : G, x ∘ y = x ∘ ((z ∘ x) ∘ y)
def Equation3532 (G: Type*) [Magma G] := ∀ x y z : G, x ∘ y = x ∘ ((z ∘ y) ∘ x)
def Equation3533 (G: Type*) [Magma G] := ∀ x y z : G, x ∘ y = x ∘ ((z ∘ y) ∘ y)
def Equation3534 (G: Type*) [Magma G] := ∀ x y z : G, x ∘ y = x ∘ ((z ∘ y) ∘ z)
def Equation3537 (G: Type*) [Magma G] := ∀ x y z : G, x ∘ y = x ∘ ((z ∘ z) ∘ y)
def Equation3544 (G: Type*) [Magma G] := ∀ x y z w u : G, x ∘ y = x ∘ ((z ∘ w) ∘ u)
def Equation3552 (G: Type*) [Magma G] := ∀ x y z : G, x ∘ y = y ∘ ((x ∘ z) ∘ y)
def Equation3581 (G: Type*) [Magma G] := ∀ x y z w u : G, x ∘ y = y ∘ ((z ∘ w) ∘ u)
def Equation3598 (G: Type*) [Magma G] := ∀ x y z w u : G, x ∘ y = z ∘ ((x ∘ w) ∘ u)
def Equation3615 (G: Type*) [Magma G] := ∀ x y z w u : G, x ∘ y = z ∘ ((y ∘ w) ∘ u)
def Equation3632 (G: Type*) [Magma G] := ∀ x y z w u : G, x ∘ y = z ∘ ((z ∘ w) ∘ u)
def Equation3637 (G: Type*) [Magma G] := ∀ x y z w u : G, x ∘ y = z ∘ ((w ∘ x) ∘ u)
def Equation3642 (G: Type*) [Magma G] := ∀ x y z w u : G, x ∘ y = z ∘ ((w ∘ y) ∘ u)
def Equation3647 (G: Type*) [Magma G] := ∀ x y z w u : G, x ∘ y = z ∘ ((w ∘ z) ∘ u)
def Equation3652 (G: Type*) [Magma G] := ∀ x y z w u : G, x ∘ y = z ∘ ((w ∘ w) ∘ u)
def Equation3653 (G: Type*) [Magma G] := ∀ x y z w u : G, x ∘ y = z ∘ ((w ∘ u) ∘ x)
def Equation3654 (G: Type*) [Magma G] := ∀ x y z w u : G, x ∘ y = z ∘ ((w ∘ u) ∘ y)
def Equation3655 (G: Type*) [Magma G] := ∀ x y z w u : G, x ∘ y = z ∘ ((w ∘ u) ∘ z)
def Equation3656 (G: Type*) [Magma G] := ∀ x y z w u : G, x ∘ y = z ∘ ((w ∘ u) ∘ w)
def Equation3657 (G: Type*) [Magma G] := ∀ x y z w u : G, x ∘ y = z ∘ ((w ∘ u) ∘ u)
def Equation3681 (G: Type*) [Magma G] := ∀ x y z : G, x ∘ x = (y ∘ x) ∘ (z ∘ y)
def Equation3710 (G: Type*) [Magma G] := ∀ x y z w u : G, x ∘ x = (y ∘ z) ∘ (w ∘ u)
def Equation3718 (G: Type*) [Magma G] := ∀ x y z : G, x ∘ y = (x ∘ x) ∘ (z ∘ y)
def Equation3728 (G: Type*) [Magma G] := ∀ x y z : G, x ∘ y = (x ∘ y) ∘ (z ∘ y)
def Equation3732 (G: Type*) [Magma G] := ∀ x y z : G, x ∘ y = (x ∘ z) ∘ (x ∘ y)
def Equation3735 (G: Type*) [Magma G] := ∀ x y z : G, x ∘ y = (x ∘ z) ∘ (y ∘ x)
def Equation3736 (G: Type*) [Magma G] := ∀ x y z : G, x ∘ y = (x ∘ z) ∘ (y ∘ y)
def Equation3737 (G: Type*) [Magma G] := ∀ x y z : G, x ∘ y = (x ∘ z) ∘ (y ∘ z)
def Equation3740 (G: Type*) [Magma G] := ∀ x y z : G, x ∘ y = (x ∘ z) ∘ (z ∘ y)
def Equation3747 (G: Type*) [Magma G] := ∀ x y z w u : G, x ∘ y = (x ∘ z) ∘ (w ∘ u)
def Equation3755 (G: Type*) [Magma G] := ∀ x y z : G, x ∘ y = (y ∘ x) ∘ (z ∘ y)
def Equation3784 (G: Type*) [Magma G] := ∀ x y z w u : G, x ∘ y = (y ∘ z) ∘ (w ∘ u)
def Equation3801 (G: Type*) [Magma G] := ∀ x y z w u : G, x ∘ y = (z ∘ x) ∘ (w ∘ u)
def Equation3818 (G: Type*) [Magma G] := ∀ x y z w u : G, x ∘ y = (z ∘ y) ∘ (w ∘ u)
def Equation3835 (G: Type*) [Magma G] := ∀ x y z w u : G, x ∘ y = (z ∘ z) ∘ (w ∘ u)
def Equation3840 (G: Type*) [Magma G] := ∀ x y z w u : G, x ∘ y = (z ∘ w) ∘ (x ∘ u)
def Equation3845 (G: Type*) [Magma G] := ∀ x y z w u : G, x ∘ y = (z ∘ w) ∘ (y ∘ u)
def Equation3850 (G: Type*) [Magma G] := ∀ x y z w u : G, x ∘ y = (z ∘ w) ∘ (z ∘ u)
def Equation3855 (G: Type*) [Magma G] := ∀ x y z w u : G, x ∘ y = (z ∘ w) ∘ (w ∘ u)
def Equation3856 (G: Type*) [Magma G] := ∀ x y z w u : G, x ∘ y = (z ∘ w) ∘ (u ∘ x)
def Equation3857 (G: Type*) [Magma G] := ∀ x y z w u : G, x ∘ y = (z ∘ w) ∘ (u ∘ y)
def Equation3858 (G: Type*) [Magma G] := ∀ x y z w u : G, x ∘ y = (z ∘ w) ∘ (u ∘ z)
def Equation3859 (G: Type*) [Magma G] := ∀ x y z w u : G, x ∘ y = (z ∘ w) ∘ (u ∘ w)
def Equation3860 (G: Type*) [Magma G] := ∀ x y z w u : G, x ∘ y = (z ∘ w) ∘ (u ∘ u)
def Equation3884 (G: Type*) [Magma G] := ∀ x y z : G, x ∘ x = (y ∘ (x ∘ z)) ∘ y
def Equation3913 (G: Type*) [Magma G] := ∀ x y z w u : G, x ∘ x = (y ∘ (z ∘ w)) ∘ u
def Equation3921 (G: Type*) [Magma G] := ∀ x y z : G, x ∘ y = (x ∘ (x ∘ z)) ∘ y
def Equation3931 (G: Type*) [Magma G] := ∀ x y z : G, x ∘ y = (x ∘ (y ∘ z)) ∘ y
def Equation3935 (G: Type*) [Magma G] := ∀ x y z : G, x ∘ y = (x ∘ (z ∘ x)) ∘ y
def Equation3938 (G: Type*) [Magma G] := ∀ x y z : G, x ∘ y = (x ∘ (z ∘ y)) ∘ x
def Equation3939 (G: Type*) [Magma G] := ∀ x y z : G, x ∘ y = (x ∘ (z ∘ y)) ∘ y
def Equation3940 (G: Type*) [Magma G] := ∀ x y z : G, x ∘ y = (x ∘ (z ∘ y)) ∘ z
def Equation3943 (G: Type*) [Magma G] := ∀ x y z : G, x ∘ y = (x ∘ (z ∘ z)) ∘ y
def Equation3950 (G: Type*) [Magma G] := ∀ x y z w u : G, x ∘ y = (x ∘ (z ∘ w)) ∘ u
def Equation3958 (G: Type*) [Magma G] := ∀ x y z : G, x ∘ y = (y ∘ (x ∘ z)) ∘ y
def Equation3987 (G: Type*) [Magma G] := ∀ x y z w u : G, x ∘ y = (y ∘ (z ∘ w)) ∘ u
def Equation4004 (G: Type*) [Magma G] := ∀ x y z w u : G, x ∘ y = (z ∘ (x ∘ w)) ∘ u
def Equation4021 (G: Type*) [Magma G] := ∀ x y z w u : G, x ∘ y = (z ∘ (y ∘ w)) ∘ u
def Equation4038 (G: Type*) [Magma G] := ∀ x y z w u : G, x ∘ y = (z ∘ (z ∘ w)) ∘ u
def Equation4043 (G: Type*) [Magma G] := ∀ x y z w u : G, x ∘ y = (z ∘ (w ∘ x)) ∘ u
def Equation4048 (G: Type*) [Magma G] := ∀ x y z w u : G, x ∘ y = (z ∘ (w ∘ y)) ∘ u
def Equation4053 (G: Type*) [Magma G] := ∀ x y z w u : G, x ∘ y = (z ∘ (w ∘ z)) ∘ u
def Equation4058 (G: Type*) [Magma G] := ∀ x y z w u : G, x ∘ y = (z ∘ (w ∘ w)) ∘ u
def Equation4059 (G: Type*) [Magma G] := ∀ x y z w u : G, x ∘ y = (z ∘ (w ∘ u)) ∘ x
def Equation4060 (G: Type*) [Magma G] := ∀ x y z w u : G, x ∘ y = (z ∘ (w ∘ u)) ∘ y
def Equation4061 (G: Type*) [Magma G] := ∀ x y z w u : G, x ∘ y = (z ∘ (w ∘ u)) ∘ z
def Equation4062 (G: Type*) [Magma G] := ∀ x y z w u : G, x ∘ y = (z ∘ (w ∘ u)) ∘ w
def Equation4063 (G: Type*) [Magma G] := ∀ x y z w u : G, x ∘ y = (z ∘ (w ∘ u)) ∘ u
def Equation4087 (G: Type*) [Magma G] := ∀ x y z : G, x ∘ x = ((y ∘ x) ∘ z) ∘ y
def Equation4116 (G: Type*) [Magma G] := ∀ x y z w u : G, x ∘ x = ((y ∘ z) ∘ w) ∘ u
def Equation4124 (G: Type*) [Magma G] := ∀ x y z : G, x ∘ y = ((x ∘ x) ∘ z) ∘ y
def Equation4134 (G: Type*) [Magma G] := ∀ x y z : G, x ∘ y = ((x ∘ y) ∘ z) ∘ y
def Equation4138 (G: Type*) [Magma G] := ∀ x y z : G, x ∘ y = ((x ∘ z) ∘ x) ∘ y
def Equation4141 (G: Type*) [Magma G] := ∀ x y z : G, x ∘ y = ((x ∘ z) ∘ y) ∘ x
def Equation4142 (G: Type*) [Magma G] := ∀ x y z : G, x ∘ y = ((x ∘ z) ∘ y) ∘ y
def Equation4143 (G: Type*) [Magma G] := ∀ x y z : G, x ∘ y = ((x ∘ z) ∘ y) ∘ z
def Equation4146 (G: Type*) [Magma G] := ∀ x y z : G, x ∘ y = ((x ∘ z) ∘ z) ∘ y
def Equation4153 (G: Type*) [Magma G] := ∀ x y z w u : G, x ∘ y = ((x ∘ z) ∘ w) ∘ u
def Equation4161 (G: Type*) [Magma G] := ∀ x y z : G, x ∘ y = ((y ∘ x) ∘ z) ∘ y
def Equation4190 (G: Type*) [Magma G] := ∀ x y z w u : G, x ∘ y = ((y ∘ z) ∘ w) ∘ u
def Equation4207 (G: Type*) [Magma G] := ∀ x y z w u : G, x ∘ y = ((z ∘ x) ∘ w) ∘ u
def Equation4224 (G: Type*) [Magma G] := ∀ x y z w u : G, x ∘ y = ((z ∘ y) ∘ w) ∘ u
def Equation4241 (G: Type*) [Magma G] := ∀ x y z w u : G, x ∘ y = ((z ∘ z) ∘ w) ∘ u
def Equation4246 (G: Type*) [Magma G] := ∀ x y z w u : G, x ∘ y = ((z ∘ w) ∘ x) ∘ u
def Equation4251 (G: Type*) [Magma G] := ∀ x y z w u : G, x ∘ y = ((z ∘ w) ∘ y) ∘ u
def Equation4256 (G: Type*) [Magma G] := ∀ x y z w u : G, x ∘ y = ((z ∘ w) ∘ z) ∘ u
def Equation4261 (G: Type*) [Magma G] := ∀ x y z w u : G, x ∘ y = ((z ∘ w) ∘ w) ∘ u
def Equation4262 (G: Type*) [Magma G] := ∀ x y z w u : G, x ∘ y = ((z ∘ w) ∘ u) ∘ x
def Equation4263 (G: Type*) [Magma G] := ∀ x y z w u : G, x ∘ y = ((z ∘ w) ∘ u) ∘ y
def Equation4264 (G: Type*) [Magma G] := ∀ x y z w u : G, x ∘ y = ((z ∘ w) ∘ u) ∘ z
def Equation4265 (G: Type*) [Magma G] := ∀ x y z w u : G, x ∘ y = ((z ∘ w) ∘ u) ∘ w
def Equation4266 (G: Type*) [Magma G] := ∀ x y z w u : G, x ∘ y = ((z ∘ w) ∘ u) ∘ u
def Equation4287 (G: Type*) [Magma G] := ∀ x y z : G, x ∘ (x ∘ y) = x ∘ (z ∘ y)
def Equation4313 (G: Type*) [Magma G] := ∀ x y z w u : G, x ∘ (x ∘ y) = z ∘ (w ∘ u)
def Equation4317 (G: Type*) [Magma G] := ∀ x y z : G, x ∘ (y ∘ x) = x ∘ (z ∘ y)
def Equation4324 (G: Type*) [Magma G] := ∀ x y z : G, x ∘ (y ∘ x) = y ∘ (z ∘ y)
def Equation4328 (G: Type*) [Magma G] := ∀ x y z : G, x ∘ (y ∘ x) = z ∘ (x ∘ y)
def Equation4330 (G: Type*) [Magma G] := ∀ x y z : G, x ∘ (y ∘ x) = z ∘ (y ∘ x)
def Equation4331 (G: Type*) [Magma G] := ∀ x y z : G, x ∘ (y ∘ x) = z ∘ (y ∘ y)
def Equation4338 (G: Type*) [Magma G] := ∀ x y z w u : G, x ∘ (y ∘ x) = z ∘ (w ∘ u)
def Equation4340 (G: Type*) [Magma G] := ∀ x y z : G, x ∘ (y ∘ y) = x ∘ (z ∘ y)
def Equation4356 (G: Type*) [Magma G] := ∀ x y z w u : G, x ∘ (y ∘ y) = z ∘ (w ∘ u)
def Equation4361 (G: Type*) [Magma G] := ∀ x y z w u : G, x ∘ (y ∘ z) = x ∘ (w ∘ u)
def Equation4368 (G: Type*) [Magma G] := ∀ x y z w u : G, x ∘ (y ∘ z) = y ∘ (w ∘ u)
def Equation4373 (G: Type*) [Magma G] := ∀ x y z w u : G, x ∘ (y ∘ z) = z ∘ (w ∘ u)
def Equation4375 (G: Type*) [Magma G] := ∀ x y z w u : G, x ∘ (y ∘ z) = w ∘ (y ∘ u)
def Equation4377 (G: Type*) [Magma G] := ∀ x y z w u : G, x ∘ (y ∘ z) = w ∘ (z ∘ u)
def Equation4378 (G: Type*) [Magma G] := ∀ x y z w u : G, x ∘ (y ∘ z) = w ∘ (u ∘ z)
def Equation4402 (G: Type*) [Magma G] := ∀ x y z : G, x ∘ (x ∘ y) = (x ∘ z) ∘ y
def Equation4431 (G: Type*) [Magma G] := ∀ x y z w u : G, x ∘ (x ∘ y) = (z ∘ w) ∘ u
def Equation4439 (G: Type*) [Magma G] := ∀ x y z : G, x ∘ (y ∘ x) = (x ∘ z) ∘ y
def Equation4449 (G: Type*) [Magma G] := ∀ x y z : G, x ∘ (y ∘ x) = (y ∘ z) ∘ y
def Equation4453 (G: Type*) [Magma G] := ∀ x y z : G, x ∘ (y ∘ x) = (z ∘ x) ∘ y
def Equation4456 (G: Type*) [Magma G] := ∀ x y z : G, x ∘ (y ∘ x) = (z ∘ y) ∘ x
def Equation4457 (G: Type*) [Magma G] := ∀ x y z : G, x ∘ (y ∘ x) = (z ∘ y) ∘ y
def Equation4458 (G: Type*) [Magma G] := ∀ x y z : G, x ∘ (y ∘ x) = (z ∘ y) ∘ z
def Equation4461 (G: Type*) [Magma G] := ∀ x y z : G, x ∘ (y ∘ x) = (z ∘ z) ∘ y
def Equation4468 (G: Type*) [Magma G] := ∀ x y z w u : G, x ∘ (y ∘ x) = (z ∘ w) ∘ u
def Equation4476 (G: Type*) [Magma G] := ∀ x y z : G, x ∘ (y ∘ y) = (x ∘ z) ∘ y
def Equation4505 (G: Type*) [Magma G] := ∀ x y z w u : G, x ∘ (y ∘ y) = (z ∘ w) ∘ u
def Equation4522 (G: Type*) [Magma G] := ∀ x y z w u : G, x ∘ (y ∘ z) = (x ∘ w) ∘ u
def Equation4539 (G: Type*) [Magma G] := ∀ x y z w u : G, x ∘ (y ∘ z) = (y ∘ w) ∘ u
def Equation4556 (G: Type*) [Magma G] := ∀ x y z w u : G, x ∘ (y ∘ z) = (z ∘ w) ∘ u
def Equation4561 (G: Type*) [Magma G] := ∀ x y z w u : G, x ∘ (y ∘ z) = (w ∘ x) ∘ u
def Equation4566 (G: Type*) [Magma G] := ∀ x y z w u : G, x ∘ (y ∘ z) = (w ∘ y) ∘ u
def Equation4571 (G: Type*) [Magma G] := ∀ x y z w u : G, x ∘ (y ∘ z) = (w ∘ z) ∘ u
def Equation4576 (G: Type*) [Magma G] := ∀ x y z w u : G, x ∘ (y ∘ z) = (w ∘ w) ∘ u
def Equation4577 (G: Type*) [Magma G] := ∀ x y z w u : G, x ∘ (y ∘ z) = (w ∘ u) ∘ x
def Equation4578 (G: Type*) [Magma G] := ∀ x y z w u : G, x ∘ (y ∘ z) = (w ∘ u) ∘ y
def Equation4579 (G: Type*) [Magma G] := ∀ x y z w u : G, x ∘ (y ∘ z) = (w ∘ u) ∘ z
def Equation4580 (G: Type*) [Magma G] := ∀ x y z w u : G, x ∘ (y ∘ z) = (w ∘ u) ∘ w
def Equation4581 (G: Type*) [Magma G] := ∀ x y z w u : G, x ∘ (y ∘ z) = (w ∘ u) ∘ u
def Equation4602 (G: Type*) [Magma G] := ∀ x y z : G, (x ∘ x) ∘ y = (x ∘ z) ∘ y
def Equation4628 (G: Type*) [Magma G] := ∀ x y z w u : G, (x ∘ x) ∘ y = (z ∘ w) ∘ u
def Equation4632 (G: Type*) [Magma G] := ∀ x y z : G, (x ∘ y) ∘ x = (x ∘ z) ∘ y
def Equation4639 (G: Type*) [Magma G] := ∀ x y z : G, (x ∘ y) ∘ x = (y ∘ z) ∘ y
def Equation4643 (G: Type*) [Magma G] := ∀ x y z : G, (x ∘ y) ∘ x = (z ∘ x) ∘ y
def Equation4645 (G: Type*) [Magma G] := ∀ x y z : G, (x ∘ y) ∘ x = (z ∘ y) ∘ x
def Equation4646 (G: Type*) [Magma G] := ∀ x y z : G, (x ∘ y) ∘ x = (z ∘ y) ∘ y
def Equation4653 (G: Type*) [Magma G] := ∀ x y z w u : G, (x ∘ y) ∘ x = (z ∘ w) ∘ u
def Equation4655 (G: Type*) [Magma G] := ∀ x y z : G, (x ∘ y) ∘ y = (x ∘ z) ∘ y
def Equation4671 (G: Type*) [Magma G] := ∀ x y z w u : G, (x ∘ y) ∘ y = (z ∘ w) ∘ u
def Equation4676 (G: Type*) [Magma G] := ∀ x y z w u : G, (x ∘ y) ∘ z = (x ∘ w) ∘ u
def Equation4683 (G: Type*) [Magma G] := ∀ x y z w u : G, (x ∘ y) ∘ z = (y ∘ w) ∘ u
def Equation4688 (G: Type*) [Magma G] := ∀ x y z w u : G, (x ∘ y) ∘ z = (z ∘ w) ∘ u
def Equation4690 (G: Type*) [Magma G] := ∀ x y z w u : G, (x ∘ y) ∘ z = (w ∘ y) ∘ u
def Equation4692 (G: Type*) [Magma G] := ∀ x y z w u : G, (x ∘ y) ∘ z = (w ∘ z) ∘ u
def Equation4693 (G: Type*) [Magma G] := ∀ x y z w u : G, (x ∘ y) ∘ z = (w ∘ u) ∘ z
theorem Equation98_implies_Equation69 (G : Type*) [Magma G] (h : Equation98 G) : Equation69 G := λ x y z => h x y x z y
theorem Equation150_implies_Equation121 (G : Type*) [Magma G] (h : Equation150 G) : Equation121 G := λ x y z => h x y x z y
theorem Equation202_implies_Equation173 (G : Type*) [Magma G] (h : Equation202 G) : Equation173 G := λ x y z => h x y x z y
theorem Equation254_implies_Equation225 (G : Type*) [Magma G] (h : Equation254 G) : Equation225 G := λ x y z => h x y x z y
theorem Equation306_implies_Equation277 (G : Type*) [Magma G] (h : Equation306 G) : Equation277 G := λ x y z => h x y x z y
theorem Equation358_implies_Equation329 (G : Type*) [Magma G] (h : Equation358 G) : Equation329 G := λ x y z => h x y x z y
theorem Equation410_implies_Equation381 (G : Type*) [Magma G] (h : Equation410 G) : Equation381 G := λ x y z => h x y x z y
theorem Equation462_implies_Equation433 (G : Type*) [Magma G] (h : Equation462 G) : Equation433 G := λ x y z => h x y x z y
theorem Equation499_implies_Equation470 (G : Type*) [Magma G] (h : Equation499 G) : Equation470 G := λ x y z => h x y x z y
theorem Equation536_implies_Equation507 (G : Type*) [Magma G] (h : Equation536 G) : Equation507 G := λ x y z => h x y x z y
theorem Equation553_implies_Equation470 (G : Type*) [Magma G] (h : Equation553 G) : Equation470 G := λ x y z => h x y x z y
theorem Equation570_implies_Equation480 (G : Type*) [Magma G] (h : Equation570 G) : Equation480 G := λ x y z => h x y x z y
theorem Equation587_implies_Equation470 (G : Type*) [Magma G] (h : Equation587 G) : Equation470 G := λ x y z => h x y x z y
theorem Equation592_implies_Equation484 (G : Type*) [Magma G] (h : Equation592 G) : Equation484 G := λ x y z => h x y x z y
theorem Equation597_implies_Equation488 (G : Type*) [Magma G] (h : Equation597 G) : Equation488 G := λ x y z => h x y x z y
theorem Equation602_implies_Equation484 (G : Type*) [Magma G] (h : Equation602 G) : Equation484 G := λ x y z => h x y x z y
theorem Equation607_implies_Equation492 (G : Type*) [Magma G] (h : Equation607 G) : Equation492 G := λ x y z => h x y x z y
theorem Equation608_implies_Equation487 (G : Type*) [Magma G] (h : Equation608 G) : Equation487 G := λ x y z => h x y x z y
theorem Equation609_implies_Equation488 (G : Type*) [Magma G] (h : Equation609 G) : Equation488 G := λ x y z => h x y x z y
theorem Equation610_implies_Equation487 (G : Type*) [Magma G] (h : Equation610 G) : Equation487 G := λ x y z => h x y x z y
theorem Equation611_implies_Equation489 (G : Type*) [Magma G] (h : Equation611 G) : Equation489 G := λ x y z => h x y x z y
theorem Equation612_implies_Equation488 (G : Type*) [Magma G] (h : Equation612 G) : Equation488 G := λ x y z => h x y x z y
theorem Equation665_implies_Equation636 (G : Type*) [Magma G] (h : Equation665 G) : Equation636 G := λ x y z => h x y x z y
theorem Equation702_implies_Equation673 (G : Type*) [Magma G] (h : Equation702 G) : Equation673 G := λ x y z => h x y x z y
theorem Equation739_implies_Equation710 (G : Type*) [Magma G] (h : Equation739 G) : Equation710 G := λ x y z => h x y x z y
theorem Equation756_implies_Equation673 (G : Type*) [Magma G] (h : Equation756 G) : Equation673 G := λ x y z => h x y x z y
theorem Equation773_implies_Equation683 (G : Type*) [Magma G] (h : Equation773 G) : Equation683 G := λ x y z => h x y x z y
theorem Equation790_implies_Equation673 (G : Type*) [Magma G] (h : Equation790 G) : Equation673 G := λ x y z => h x y x z y
theorem Equation795_implies_Equation687 (G : Type*) [Magma G] (h : Equation795 G) : Equation687 G := λ x y z => h x y x z y
theorem Equation800_implies_Equation691 (G : Type*) [Magma G] (h : Equation800 G) : Equation691 G := λ x y z => h x y x z y
theorem Equation805_implies_Equation687 (G : Type*) [Magma G] (h : Equation805 G) : Equation687 G := λ x y z => h x y x z y
theorem Equation810_implies_Equation695 (G : Type*) [Magma G] (h : Equation810 G) : Equation695 G := λ x y z => h x y x z y
theorem Equation811_implies_Equation690 (G : Type*) [Magma G] (h : Equation811 G) : Equation690 G := λ x y z => h x y x z y
theorem Equation812_implies_Equation691 (G : Type*) [Magma G] (h : Equation812 G) : Equation691 G := λ x y z => h x y x z y
theorem Equation813_implies_Equation690 (G : Type*) [Magma G] (h : Equation813 G) : Equation690 G := λ x y z => h x y x z y
theorem Equation814_implies_Equation692 (G : Type*) [Magma G] (h : Equation814 G) : Equation692 G := λ x y z => h x y x z y
theorem Equation815_implies_Equation691 (G : Type*) [Magma G] (h : Equation815 G) : Equation691 G := λ x y z => h x y x z y
theorem Equation868_implies_Equation839 (G : Type*) [Magma G] (h : Equation868 G) : Equation839 G := λ x y z => h x y x z y
theorem Equation905_implies_Equation876 (G : Type*) [Magma G] (h : Equation905 G) : Equation876 G := λ x y z => h x y x z y
theorem Equation942_implies_Equation913 (G : Type*) [Magma G] (h : Equation942 G) : Equation913 G := λ x y z => h x y x z y
theorem Equation959_implies_Equation876 (G : Type*) [Magma G] (h : Equation959 G) : Equation876 G := λ x y z => h x y x z y
theorem Equation976_implies_Equation886 (G : Type*) [Magma G] (h : Equation976 G) : Equation886 G := λ x y z => h x y x z y
theorem Equation993_implies_Equation876 (G : Type*) [Magma G] (h : Equation993 G) : Equation876 G := λ x y z => h x y x z y
theorem Equation998_implies_Equation890 (G : Type*) [Magma G] (h : Equation998 G) : Equation890 G := λ x y z => h x y x z y
theorem Equation1003_implies_Equation894 (G : Type*) [Magma G] (h : Equation1003 G) : Equation894 G := λ x y z => h x y x z y
theorem Equation1008_implies_Equation890 (G : Type*) [Magma G] (h : Equation1008 G) : Equation890 G := λ x y z => h x y x z y
theorem Equation1013_implies_Equation898 (G : Type*) [Magma G] (h : Equation1013 G) : Equation898 G := λ x y z => h x y x z y
theorem Equation1014_implies_Equation893 (G : Type*) [Magma G] (h : Equation1014 G) : Equation893 G := λ x y z => h x y x z y
theorem Equation1015_implies_Equation894 (G : Type*) [Magma G] (h : Equation1015 G) : Equation894 G := λ x y z => h x y x z y
theorem Equation1016_implies_Equation893 (G : Type*) [Magma G] (h : Equation1016 G) : Equation893 G := λ x y z => h x y x z y
theorem Equation1017_implies_Equation895 (G : Type*) [Magma G] (h : Equation1017 G) : Equation895 G := λ x y z => h x y x z y
theorem Equation1018_implies_Equation894 (G : Type*) [Magma G] (h : Equation1018 G) : Equation894 G := λ x y z => h x y x z y
theorem Equation1071_implies_Equation1042 (G : Type*) [Magma G] (h : Equation1071 G) : Equation1042 G := λ x y z => h x y x z y
theorem Equation1108_implies_Equation1079 (G : Type*) [Magma G] (h : Equation1108 G) : Equation1079 G := λ x y z => h x y x z y
theorem Equation1145_implies_Equation1116 (G : Type*) [Magma G] (h : Equation1145 G) : Equation1116 G := λ x y z => h x y x z y
theorem Equation1162_implies_Equation1079 (G : Type*) [Magma G] (h : Equation1162 G) : Equation1079 G := λ x y z => h x y x z y
theorem Equation1179_implies_Equation1089 (G : Type*) [Magma G] (h : Equation1179 G) : Equation1089 G := λ x y z => h x y x z y
theorem Equation1196_implies_Equation1079 (G : Type*) [Magma G] (h : Equation1196 G) : Equation1079 G := λ x y z => h x y x z y
theorem Equation1201_implies_Equation1093 (G : Type*) [Magma G] (h : Equation1201 G) : Equation1093 G := λ x y z => h x y x z y
theorem Equation1206_implies_Equation1097 (G : Type*) [Magma G] (h : Equation1206 G) : Equation1097 G := λ x y z => h x y x z y
theorem Equation1211_implies_Equation1093 (G : Type*) [Magma G] (h : Equation1211 G) : Equation1093 G := λ x y z => h x y x z y
theorem Equation1216_implies_Equation1101 (G : Type*) [Magma G] (h : Equation1216 G) : Equation1101 G := λ x y z => h x y x z y
theorem Equation1217_implies_Equation1096 (G : Type*) [Magma G] (h : Equation1217 G) : Equation1096 G := λ x y z => h x y x z y
theorem Equation1218_implies_Equation1097 (G : Type*) [Magma G] (h : Equation1218 G) : Equation1097 G := λ x y z => h x y x z y
theorem Equation1219_implies_Equation1096 (G : Type*) [Magma G] (h : Equation1219 G) : Equation1096 G := λ x y z => h x y x z y
theorem Equation1220_implies_Equation1098 (G : Type*) [Magma G] (h : Equation1220 G) : Equation1098 G := λ x y z => h x y x z y
theorem Equation1221_implies_Equation1097 (G : Type*) [Magma G] (h : Equation1221 G) : Equation1097 G := λ x y z => h x y x z y
theorem Equation1274_implies_Equation1245 (G : Type*) [Magma G] (h : Equation1274 G) : Equation1245 G := λ x y z => h x y x z y
theorem Equation1311_implies_Equation1282 (G : Type*) [Magma G] (h : Equation1311 G) : Equation1282 G := λ x y z => h x y x z y
theorem Equation1348_implies_Equation1319 (G : Type*) [Magma G] (h : Equation1348 G) : Equation1319 G := λ x y z => h x y x z y
theorem Equation1365_implies_Equation1282 (G : Type*) [Magma G] (h : Equation1365 G) : Equation1282 G := λ x y z => h x y x z y
theorem Equation1382_implies_Equation1292 (G : Type*) [Magma G] (h : Equation1382 G) : Equation1292 G := λ x y z => h x y x z y
theorem Equation1399_implies_Equation1282 (G : Type*) [Magma G] (h : Equation1399 G) : Equation1282 G := λ x y z => h x y x z y
theorem Equation1404_implies_Equation1296 (G : Type*) [Magma G] (h : Equation1404 G) : Equation1296 G := λ x y z => h x y x z y
theorem Equation1409_implies_Equation1300 (G : Type*) [Magma G] (h : Equation1409 G) : Equation1300 G := λ x y z => h x y x z y
theorem Equation1414_implies_Equation1296 (G : Type*) [Magma G] (h : Equation1414 G) : Equation1296 G := λ x y z => h x y x z y
theorem Equation1419_implies_Equation1304 (G : Type*) [Magma G] (h : Equation1419 G) : Equation1304 G := λ x y z => h x y x z y
theorem Equation1420_implies_Equation1299 (G : Type*) [Magma G] (h : Equation1420 G) : Equation1299 G := λ x y z => h x y x z y
theorem Equation1421_implies_Equation1300 (G : Type*) [Magma G] (h : Equation1421 G) : Equation1300 G := λ x y z => h x y x z y
theorem Equation1422_implies_Equation1299 (G : Type*) [Magma G] (h : Equation1422 G) : Equation1299 G := λ x y z => h x y x z y
theorem Equation1423_implies_Equation1301 (G : Type*) [Magma G] (h : Equation1423 G) : Equation1301 G := λ x y z => h x y x z y
theorem Equation1424_implies_Equation1300 (G : Type*) [Magma G] (h : Equation1424 G) : Equation1300 G := λ x y z => h x y x z y
theorem Equation1477_implies_Equation1448 (G : Type*) [Magma G] (h : Equation1477 G) : Equation1448 G := λ x y z => h x y x z y
theorem Equation1514_implies_Equation1485 (G : Type*) [Magma G] (h : Equation1514 G) : Equation1485 G := λ x y z => h x y x z y
theorem Equation1551_implies_Equation1522 (G : Type*) [Magma G] (h : Equation1551 G) : Equation1522 G := λ x y z => h x y x z y
theorem Equation1568_implies_Equation1485 (G : Type*) [Magma G] (h : Equation1568 G) : Equation1485 G := λ x y z => h x y x z y
theorem Equation1585_implies_Equation1495 (G : Type*) [Magma G] (h : Equation1585 G) : Equation1495 G := λ x y z => h x y x z y
theorem Equation1602_implies_Equation1485 (G : Type*) [Magma G] (h : Equation1602 G) : Equation1485 G := λ x y z => h x y x z y
theorem Equation1607_implies_Equation1499 (G : Type*) [Magma G] (h : Equation1607 G) : Equation1499 G := λ x y z => h x y x z y
theorem Equation1612_implies_Equation1503 (G : Type*) [Magma G] (h : Equation1612 G) : Equation1503 G := λ x y z => h x y x z y
theorem Equation1617_implies_Equation1499 (G : Type*) [Magma G] (h : Equation1617 G) : Equation1499 G := λ x y z => h x y x z y
theorem Equation1622_implies_Equation1507 (G : Type*) [Magma G] (h : Equation1622 G) : Equation1507 G := λ x y z => h x y x z y
theorem Equation1623_implies_Equation1502 (G : Type*) [Magma G] (h : Equation1623 G) : Equation1502 G := λ x y z => h x y x z y
theorem Equation1624_implies_Equation1503 (G : Type*) [Magma G] (h : Equation1624 G) : Equation1503 G := λ x y z => h x y x z y
theorem Equation1625_implies_Equation1502 (G : Type*) [Magma G] (h : Equation1625 G) : Equation1502 G := λ x y z => h x y x z y
theorem Equation1626_implies_Equation1504 (G : Type*) [Magma G] (h : Equation1626 G) : Equation1504 G := λ x y z => h x y x z y
theorem Equation1627_implies_Equation1503 (G : Type*) [Magma G] (h : Equation1627 G) : Equation1503 G := λ x y z => h x y x z y
theorem Equation1680_implies_Equation1651 (G : Type*) [Magma G] (h : Equation1680 G) : Equation1651 G := λ x y z => h x y x z y
theorem Equation1717_implies_Equation1688 (G : Type*) [Magma G] (h : Equation1717 G) : Equation1688 G := λ x y z => h x y x z y
theorem Equation1754_implies_Equation1725 (G : Type*) [Magma G] (h : Equation1754 G) : Equation1725 G := λ x y z => h x y x z y
theorem Equation1771_implies_Equation1688 (G : Type*) [Magma G] (h : Equation1771 G) : Equation1688 G := λ x y z => h x y x z y
theorem Equation1788_implies_Equation1698 (G : Type*) [Magma G] (h : Equation1788 G) : Equation1698 G := λ x y z => h x y x z y
theorem Equation1805_implies_Equation1688 (G : Type*) [Magma G] (h : Equation1805 G) : Equation1688 G := λ x y z => h x y x z y
theorem Equation1810_implies_Equation1702 (G : Type*) [Magma G] (h : Equation1810 G) : Equation1702 G := λ x y z => h x y x z y
theorem Equation1815_implies_Equation1706 (G : Type*) [Magma G] (h : Equation1815 G) : Equation1706 G := λ x y z => h x y x z y
theorem Equation1820_implies_Equation1702 (G : Type*) [Magma G] (h : Equation1820 G) : Equation1702 G := λ x y z => h x y x z y
theorem Equation1825_implies_Equation1710 (G : Type*) [Magma G] (h : Equation1825 G) : Equation1710 G := λ x y z => h x y x z y
theorem Equation1826_implies_Equation1705 (G : Type*) [Magma G] (h : Equation1826 G) : Equation1705 G := λ x y z => h x y x z y
theorem Equation1827_implies_Equation1706 (G : Type*) [Magma G] (h : Equation1827 G) : Equation1706 G := λ x y z => h x y x z y
theorem Equation1828_implies_Equation1705 (G : Type*) [Magma G] (h : Equation1828 G) : Equation1705 G := λ x y z => h x y x z y
theorem Equation1829_implies_Equation1707 (G : Type*) [Magma G] (h : Equation1829 G) : Equation1707 G := λ x y z => h x y x z y
theorem Equation1830_implies_Equation1706 (G : Type*) [Magma G] (h : Equation1830 G) : Equation1706 G := λ x y z => h x y x z y
theorem Equation1883_implies_Equation1854 (G : Type*) [Magma G] (h : Equation1883 G) : Equation1854 G := λ x y z => h x y x z y
theorem Equation1920_implies_Equation1891 (G : Type*) [Magma G] (h : Equation1920 G) : Equation1891 G := λ x y z => h x y x z y
theorem Equation1957_implies_Equation1928 (G : Type*) [Magma G] (h : Equation1957 G) : Equation1928 G := λ x y z => h x y x z y
theorem Equation1974_implies_Equation1891 (G : Type*) [Magma G] (h : Equation1974 G) : Equation1891 G := λ x y z => h x y x z y
theorem Equation1991_implies_Equation1901 (G : Type*) [Magma G] (h : Equation1991 G) : Equation1901 G := λ x y z => h x y x z y
theorem Equation2008_implies_Equation1891 (G : Type*) [Magma G] (h : Equation2008 G) : Equation1891 G := λ x y z => h x y x z y
theorem Equation2013_implies_Equation1905 (G : Type*) [Magma G] (h : Equation2013 G) : Equation1905 G := λ x y z => h x y x z y
theorem Equation2018_implies_Equation1909 (G : Type*) [Magma G] (h : Equation2018 G) : Equation1909 G := λ x y z => h x y x z y
theorem Equation2023_implies_Equation1905 (G : Type*) [Magma G] (h : Equation2023 G) : Equation1905 G := λ x y z => h x y x z y
theorem Equation2028_implies_Equation1913 (G : Type*) [Magma G] (h : Equation2028 G) : Equation1913 G := λ x y z => h x y x z y
theorem Equation2029_implies_Equation1908 (G : Type*) [Magma G] (h : Equation2029 G) : Equation1908 G := λ x y z => h x y x z y
theorem Equation2030_implies_Equation1909 (G : Type*) [Magma G] (h : Equation2030 G) : Equation1909 G := λ x y z => h x y x z y
theorem Equation2031_implies_Equation1908 (G : Type*) [Magma G] (h : Equation2031 G) : Equation1908 G := λ x y z => h x y x z y
theorem Equation2032_implies_Equation1910 (G : Type*) [Magma G] (h : Equation2032 G) : Equation1910 G := λ x y z => h x y x z y
theorem Equation2033_implies_Equation1909 (G : Type*) [Magma G] (h : Equation2033 G) : Equation1909 G := λ x y z => h x y x z y
theorem Equation2086_implies_Equation2057 (G : Type*) [Magma G] (h : Equation2086 G) : Equation2057 G := λ x y z => h x y x z y
theorem Equation2123_implies_Equation2094 (G : Type*) [Magma G] (h : Equation2123 G) : Equation2094 G := λ x y z => h x y x z y
theorem Equation2160_implies_Equation2131 (G : Type*) [Magma G] (h : Equation2160 G) : Equation2131 G := λ x y z => h x y x z y
theorem Equation2177_implies_Equation2094 (G : Type*) [Magma G] (h : Equation2177 G) : Equation2094 G := λ x y z => h x y x z y
theorem Equation2194_implies_Equation2104 (G : Type*) [Magma G] (h : Equation2194 G) : Equation2104 G := λ x y z => h x y x z y
theorem Equation2211_implies_Equation2094 (G : Type*) [Magma G] (h : Equation2211 G) : Equation2094 G := λ x y z => h x y x z y
theorem Equation2216_implies_Equation2108 (G : Type*) [Magma G] (h : Equation2216 G) : Equation2108 G := λ x y z => h x y x z y
theorem Equation2221_implies_Equation2112 (G : Type*) [Magma G] (h : Equation2221 G) : Equation2112 G := λ x y z => h x y x z y
theorem Equation2226_implies_Equation2108 (G : Type*) [Magma G] (h : Equation2226 G) : Equation2108 G := λ x y z => h x y x z y
theorem Equation2231_implies_Equation2116 (G : Type*) [Magma G] (h : Equation2231 G) : Equation2116 G := λ x y z => h x y x z y
theorem Equation2232_implies_Equation2111 (G : Type*) [Magma G] (h : Equation2232 G) : Equation2111 G := λ x y z => h x y x z y
theorem Equation2233_implies_Equation2112 (G : Type*) [Magma G] (h : Equation2233 G) : Equation2112 G := λ x y z => h x y x z y
theorem Equation2234_implies_Equation2111 (G : Type*) [Magma G] (h : Equation2234 G) : Equation2111 G := λ x y z => h x y x z y
theorem Equation2235_implies_Equation2113 (G : Type*) [Magma G] (h : Equation2235 G) : Equation2113 G := λ x y z => h x y x z y
theorem Equation2236_implies_Equation2112 (G : Type*) [Magma G] (h : Equation2236 G) : Equation2112 G := λ x y z => h x y x z y
theorem Equation2289_implies_Equation2260 (G : Type*) [Magma G] (h : Equation2289 G) : Equation2260 G := λ x y z => h x y x z y
theorem Equation2326_implies_Equation2297 (G : Type*) [Magma G] (h : Equation2326 G) : Equation2297 G := λ x y z => h x y x z y
theorem Equation2363_implies_Equation2334 (G : Type*) [Magma G] (h : Equation2363 G) : Equation2334 G := λ x y z => h x y x z y
theorem Equation2380_implies_Equation2297 (G : Type*) [Magma G] (h : Equation2380 G) : Equation2297 G := λ x y z => h x y x z y
theorem Equation2397_implies_Equation2307 (G : Type*) [Magma G] (h : Equation2397 G) : Equation2307 G := λ x y z => h x y x z y
theorem Equation2414_implies_Equation2297 (G : Type*) [Magma G] (h : Equation2414 G) : Equation2297 G := λ x y z => h x y x z y
theorem Equation2419_implies_Equation2311 (G : Type*) [Magma G] (h : Equation2419 G) : Equation2311 G := λ x y z => h x y x z y
theorem Equation2424_implies_Equation2315 (G : Type*) [Magma G] (h : Equation2424 G) : Equation2315 G := λ x y z => h x y x z y
theorem Equation2429_implies_Equation2311 (G : Type*) [Magma G] (h : Equation2429 G) : Equation2311 G := λ x y z => h x y x z y
theorem Equation2434_implies_Equation2319 (G : Type*) [Magma G] (h : Equation2434 G) : Equation2319 G := λ x y z => h x y x z y
theorem Equation2435_implies_Equation2314 (G : Type*) [Magma G] (h : Equation2435 G) : Equation2314 G := λ x y z => h x y x z y
theorem Equation2436_implies_Equation2315 (G : Type*) [Magma G] (h : Equation2436 G) : Equation2315 G := λ x y z => h x y x z y
theorem Equation2437_implies_Equation2314 (G : Type*) [Magma G] (h : Equation2437 G) : Equation2314 G := λ x y z => h x y x z y
theorem Equation2438_implies_Equation2316 (G : Type*) [Magma G] (h : Equation2438 G) : Equation2316 G := λ x y z => h x y x z y
theorem Equation2439_implies_Equation2315 (G : Type*) [Magma G] (h : Equation2439 G) : Equation2315 G := λ x y z => h x y x z y
theorem Equation2492_implies_Equation2463 (G : Type*) [Magma G] (h : Equation2492 G) : Equation2463 G := λ x y z => h x y x z y
theorem Equation2529_implies_Equation2500 (G : Type*) [Magma G] (h : Equation2529 G) : Equation2500 G := λ x y z => h x y x z y
theorem Equation2566_implies_Equation2537 (G : Type*) [Magma G] (h : Equation2566 G) : Equation2537 G := λ x y z => h x y x z y
theorem Equation2583_implies_Equation2500 (G : Type*) [Magma G] (h : Equation2583 G) : Equation2500 G := λ x y z => h x y x z y
theorem Equation2600_implies_Equation2510 (G : Type*) [Magma G] (h : Equation2600 G) : Equation2510 G := λ x y z => h x y x z y
theorem Equation2617_implies_Equation2500 (G : Type*) [Magma G] (h : Equation2617 G) : Equation2500 G := λ x y z => h x y x z y
theorem Equation2622_implies_Equation2514 (G : Type*) [Magma G] (h : Equation2622 G) : Equation2514 G := λ x y z => h x y x z y
theorem Equation2627_implies_Equation2518 (G : Type*) [Magma G] (h : Equation2627 G) : Equation2518 G := λ x y z => h x y x z y
theorem Equation2632_implies_Equation2514 (G : Type*) [Magma G] (h : Equation2632 G) : Equation2514 G := λ x y z => h x y x z y
theorem Equation2637_implies_Equation2522 (G : Type*) [Magma G] (h : Equation2637 G) : Equation2522 G := λ x y z => h x y x z y
theorem Equation2638_implies_Equation2517 (G : Type*) [Magma G] (h : Equation2638 G) : Equation2517 G := λ x y z => h x y x z y
theorem Equation2639_implies_Equation2518 (G : Type*) [Magma G] (h : Equation2639 G) : Equation2518 G := λ x y z => h x y x z y
theorem Equation2640_implies_Equation2517 (G : Type*) [Magma G] (h : Equation2640 G) : Equation2517 G := λ x y z => h x y x z y
theorem Equation2641_implies_Equation2519 (G : Type*) [Magma G] (h : Equation2641 G) : Equation2519 G := λ x y z => h x y x z y
theorem Equation2642_implies_Equation2518 (G : Type*) [Magma G] (h : Equation2642 G) : Equation2518 G := λ x y z => h x y x z y
theorem Equation2695_implies_Equation2666 (G : Type*) [Magma G] (h : Equation2695 G) : Equation2666 G := λ x y z => h x y x z y
theorem Equation2732_implies_Equation2703 (G : Type*) [Magma G] (h : Equation2732 G) : Equation2703 G := λ x y z => h x y x z y
theorem Equation2769_implies_Equation2740 (G : Type*) [Magma G] (h : Equation2769 G) : Equation2740 G := λ x y z => h x y x z y
theorem Equation2786_implies_Equation2703 (G : Type*) [Magma G] (h : Equation2786 G) : Equation2703 G := λ x y z => h x y x z y
theorem Equation2803_implies_Equation2713 (G : Type*) [Magma G] (h : Equation2803 G) : Equation2713 G := λ x y z => h x y x z y
theorem Equation2820_implies_Equation2703 (G : Type*) [Magma G] (h : Equation2820 G) : Equation2703 G := λ x y z => h x y x z y
theorem Equation2825_implies_Equation2717 (G : Type*) [Magma G] (h : Equation2825 G) : Equation2717 G := λ x y z => h x y x z y
theorem Equation2830_implies_Equation2721 (G : Type*) [Magma G] (h : Equation2830 G) : Equation2721 G := λ x y z => h x y x z y
theorem Equation2835_implies_Equation2717 (G : Type*) [Magma G] (h : Equation2835 G) : Equation2717 G := λ x y z => h x y x z y
theorem Equation2840_implies_Equation2725 (G : Type*) [Magma G] (h : Equation2840 G) : Equation2725 G := λ x y z => h x y x z y
theorem Equation2841_implies_Equation2720 (G : Type*) [Magma G] (h : Equation2841 G) : Equation2720 G := λ x y z => h x y x z y
theorem Equation2842_implies_Equation2721 (G : Type*) [Magma G] (h : Equation2842 G) : Equation2721 G := λ x y z => h x y x z y
theorem Equation2843_implies_Equation2720 (G : Type*) [Magma G] (h : Equation2843 G) : Equation2720 G := λ x y z => h x y x z y
theorem Equation2844_implies_Equation2722 (G : Type*) [Magma G] (h : Equation2844 G) : Equation2722 G := λ x y z => h x y x z y
theorem Equation2845_implies_Equation2721 (G : Type*) [Magma G] (h : Equation2845 G) : Equation2721 G := λ x y z => h x y x z y
theorem Equation2898_implies_Equation2869 (G : Type*) [Magma G] (h : Equation2898 G) : Equation2869 G := λ x y z => h x y x z y
theorem Equation2935_implies_Equation2906 (G : Type*) [Magma G] (h : Equation2935 G) : Equation2906 G := λ x y z => h x y x z y
theorem Equation2972_implies_Equation2943 (G : Type*) [Magma G] (h : Equation2972 G) : Equation2943 G := λ x y z => h x y x z y
theorem Equation2989_implies_Equation2906 (G : Type*) [Magma G] (h : Equation2989 G) : Equation2906 G := λ x y z => h x y x z y
theorem Equation3006_implies_Equation2916 (G : Type*) [Magma G] (h : Equation3006 G) : Equation2916 G := λ x y z => h x y x z y
theorem Equation3023_implies_Equation2906 (G : Type*) [Magma G] (h : Equation3023 G) : Equation2906 G := λ x y z => h x y x z y
theorem Equation3028_implies_Equation2920 (G : Type*) [Magma G] (h : Equation3028 G) : Equation2920 G := λ x y z => h x y x z y
theorem Equation3033_implies_Equation2924 (G : Type*) [Magma G] (h : Equation3033 G) : Equation2924 G := λ x y z => h x y x z y
theorem Equation3038_implies_Equation2920 (G : Type*) [Magma G] (h : Equation3038 G) : Equation2920 G := λ x y z => h x y x z y
theorem Equation3043_implies_Equation2928 (G : Type*) [Magma G] (h : Equation3043 G) : Equation2928 G := λ x y z => h x y x z y
theorem Equation3044_implies_Equation2923 (G : Type*) [Magma G] (h : Equation3044 G) : Equation2923 G := λ x y z => h x y x z y
theorem Equation3045_implies_Equation2924 (G : Type*) [Magma G] (h : Equation3045 G) : Equation2924 G := λ x y z => h x y x z y
theorem Equation3046_implies_Equation2923 (G : Type*) [Magma G] (h : Equation3046 G) : Equation2923 G := λ x y z => h x y x z y
theorem Equation3047_implies_Equation2925 (G : Type*) [Magma G] (h : Equation3047 G) : Equation2925 G := λ x y z => h x y x z y
theorem Equation3048_implies_Equation2924 (G : Type*) [Magma G] (h : Equation3048 G) : Equation2924 G := λ x y z => h x y x z y
theorem Equation3101_implies_Equation3072 (G : Type*) [Magma G] (h : Equation3101 G) : Equation3072 G := λ x y z => h x y x z y
theorem Equation3138_implies_Equation3109 (G : Type*) [Magma G] (h : Equation3138 G) : Equation3109 G := λ x y z => h x y x z y
theorem Equation3175_implies_Equation3146 (G : Type*) [Magma G] (h : Equation3175 G) : Equation3146 G := λ x y z => h x y x z y
theorem Equation3192_implies_Equation3109 (G : Type*) [Magma G] (h : Equation3192 G) : Equation3109 G := λ x y z => h x y x z y
theorem Equation3209_implies_Equation3119 (G : Type*) [Magma G] (h : Equation3209 G) : Equation3119 G := λ x y z => h x y x z y
theorem Equation3226_implies_Equation3109 (G : Type*) [Magma G] (h : Equation3226 G) : Equation3109 G := λ x y z => h x y x z y
theorem Equation3231_implies_Equation3123 (G : Type*) [Magma G] (h : Equation3231 G) : Equation3123 G := λ x y z => h x y x z y
theorem Equation3236_implies_Equation3127 (G : Type*) [Magma G] (h : Equation3236 G) : Equation3127 G := λ x y z => h x y x z y
theorem Equation3241_implies_Equation3123 (G : Type*) [Magma G] (h : Equation3241 G) : Equation3123 G := λ x y z => h x y x z y
theorem Equation3246_implies_Equation3131 (G : Type*) [Magma G] (h : Equation3246 G) : Equation3131 G := λ x y z => h x y x z y
theorem Equation3247_implies_Equation3126 (G : Type*) [Magma G] (h : Equation3247 G) : Equation3126 G := λ x y z => h x y x z y
theorem Equation3248_implies_Equation3127 (G : Type*) [Magma G] (h : Equation3248 G) : Equation3127 G := λ x y z => h x y x z y
theorem Equation3249_implies_Equation3126 (G : Type*) [Magma G] (h : Equation3249 G) : Equation3126 G := λ x y z => h x y x z y
theorem Equation3250_implies_Equation3128 (G : Type*) [Magma G] (h : Equation3250 G) : Equation3128 G := λ x y z => h x y x z y
theorem Equation3251_implies_Equation3127 (G : Type*) [Magma G] (h : Equation3251 G) : Equation3127 G := λ x y z => h x y x z y
theorem Equation3304_implies_Equation3275 (G : Type*) [Magma G] (h : Equation3304 G) : Equation3275 G := λ x y z => h x y x z y
theorem Equation3341_implies_Equation3312 (G : Type*) [Magma G] (h : Equation3341 G) : Equation3312 G := λ x y z => h x y x z y
theorem Equation3378_implies_Equation3349 (G : Type*) [Magma G] (h : Equation3378 G) : Equation3349 G := λ x y z => h x y x z y
theorem Equation3395_implies_Equation3312 (G : Type*) [Magma G] (h : Equation3395 G) : Equation3312 G := λ x y z => h x y x z y
theorem Equation3412_implies_Equation3322 (G : Type*) [Magma G] (h : Equation3412 G) : Equation3322 G := λ x y z => h x y x z y
theorem Equation3429_implies_Equation3312 (G : Type*) [Magma G] (h : Equation3429 G) : Equation3312 G := λ x y z => h x y x z y
theorem Equation3434_implies_Equation3326 (G : Type*) [Magma G] (h : Equation3434 G) : Equation3326 G := λ x y z => h x y x z y
theorem Equation3439_implies_Equation3330 (G : Type*) [Magma G] (h : Equation3439 G) : Equation3330 G := λ x y z => h x y x z y
theorem Equation3444_implies_Equation3326 (G : Type*) [Magma G] (h : Equation3444 G) : Equation3326 G := λ x y z => h x y x z y
theorem Equation3449_implies_Equation3334 (G : Type*) [Magma G] (h : Equation3449 G) : Equation3334 G := λ x y z => h x y x z y
theorem Equation3450_implies_Equation3329 (G : Type*) [Magma G] (h : Equation3450 G) : Equation3329 G := λ x y z => h x y x z y
theorem Equation3451_implies_Equation3330 (G : Type*) [Magma G] (h : Equation3451 G) : Equation3330 G := λ x y z => h x y x z y
theorem Equation3452_implies_Equation3329 (G : Type*) [Magma G] (h : Equation3452 G) : Equation3329 G := λ x y z => h x y x z y
theorem Equation3453_implies_Equation3331 (G : Type*) [Magma G] (h : Equation3453 G) : Equation3331 G := λ x y z => h x y x z y
theorem Equation3454_implies_Equation3330 (G : Type*) [Magma G] (h : Equation3454 G) : Equation3330 G := λ x y z => h x y x z y
theorem Equation3507_implies_Equation3478 (G : Type*) [Magma G] (h : Equation3507 G) : Equation3478 G := λ x y z => h x y x z y
theorem Equation3544_implies_Equation3515 (G : Type*) [Magma G] (h : Equation3544 G) : Equation3515 G := λ x y z => h x y x z y
theorem Equation3581_implies_Equation3552 (G : Type*) [Magma G] (h : Equation3581 G) : Equation3552 G := λ x y z => h x y x z y
theorem Equation3598_implies_Equation3515 (G : Type*) [Magma G] (h : Equation3598 G) : Equation3515 G := λ x y z => h x y x z y
theorem Equation3615_implies_Equation3525 (G : Type*) [Magma G] (h : Equation3615 G) : Equation3525 G := λ x y z => h x y x z y
theorem Equation3632_implies_Equation3515 (G : Type*) [Magma G] (h : Equation3632 G) : Equation3515 G := λ x y z => h x y x z y
theorem Equation3637_implies_Equation3529 (G : Type*) [Magma G] (h : Equation3637 G) : Equation3529 G := λ x y z => h x y x z y
theorem Equation3642_implies_Equation3533 (G : Type*) [Magma G] (h : Equation3642 G) : Equation3533 G := λ x y z => h x y x z y
theorem Equation3647_implies_Equation3529 (G : Type*) [Magma G] (h : Equation3647 G) : Equation3529 G := λ x y z => h x y x z y
theorem Equation3652_implies_Equation3537 (G : Type*) [Magma G] (h : Equation3652 G) : Equation3537 G := λ x y z => h x y x z y
theorem Equation3653_implies_Equation3532 (G : Type*) [Magma G] (h : Equation3653 G) : Equation3532 G := λ x y z => h x y x z y
theorem Equation3654_implies_Equation3533 (G : Type*) [Magma G] (h : Equation3654 G) : Equation3533 G := λ x y z => h x y x z y
theorem Equation3655_implies_Equation3532 (G : Type*) [Magma G] (h : Equation3655 G) : Equation3532 G := λ x y z => h x y x z y
theorem Equation3656_implies_Equation3534 (G : Type*) [Magma G] (h : Equation3656 G) : Equation3534 G := λ x y z => h x y x z y
theorem Equation3657_implies_Equation3533 (G : Type*) [Magma G] (h : Equation3657 G) : Equation3533 G := λ x y z => h x y x z y
theorem Equation3710_implies_Equation3681 (G : Type*) [Magma G] (h : Equation3710 G) : Equation3681 G := λ x y z => h x y x z y
theorem Equation3747_implies_Equation3718 (G : Type*) [Magma G] (h : Equation3747 G) : Equation3718 G := λ x y z => h x y x z y
theorem Equation3784_implies_Equation3755 (G : Type*) [Magma G] (h : Equation3784 G) : Equation3755 G := λ x y z => h x y x z y
theorem Equation3801_implies_Equation3718 (G : Type*) [Magma G] (h : Equation3801 G) : Equation3718 G := λ x y z => h x y x z y
theorem Equation3818_implies_Equation3728 (G : Type*) [Magma G] (h : Equation3818 G) : Equation3728 G := λ x y z => h x y x z y
theorem Equation3835_implies_Equation3718 (G : Type*) [Magma G] (h : Equation3835 G) : Equation3718 G := λ x y z => h x y x z y
theorem Equation3840_implies_Equation3732 (G : Type*) [Magma G] (h : Equation3840 G) : Equation3732 G := λ x y z => h x y x z y
theorem Equation3845_implies_Equation3736 (G : Type*) [Magma G] (h : Equation3845 G) : Equation3736 G := λ x y z => h x y x z y
theorem Equation3850_implies_Equation3732 (G : Type*) [Magma G] (h : Equation3850 G) : Equation3732 G := λ x y z => h x y x z y
theorem Equation3855_implies_Equation3740 (G : Type*) [Magma G] (h : Equation3855 G) : Equation3740 G := λ x y z => h x y x z y
theorem Equation3856_implies_Equation3735 (G : Type*) [Magma G] (h : Equation3856 G) : Equation3735 G := λ x y z => h x y x z y
theorem Equation3857_implies_Equation3736 (G : Type*) [Magma G] (h : Equation3857 G) : Equation3736 G := λ x y z => h x y x z y
theorem Equation3858_implies_Equation3735 (G : Type*) [Magma G] (h : Equation3858 G) : Equation3735 G := λ x y z => h x y x z y
theorem Equation3859_implies_Equation3737 (G : Type*) [Magma G] (h : Equation3859 G) : Equation3737 G := λ x y z => h x y x z y
theorem Equation3860_implies_Equation3736 (G : Type*) [Magma G] (h : Equation3860 G) : Equation3736 G := λ x y z => h x y x z y
theorem Equation3913_implies_Equation3884 (G : Type*) [Magma G] (h : Equation3913 G) : Equation3884 G := λ x y z => h x y x z y
theorem Equation3950_implies_Equation3921 (G : Type*) [Magma G] (h : Equation3950 G) : Equation3921 G := λ x y z => h x y x z y
theorem Equation3987_implies_Equation3958 (G : Type*) [Magma G] (h : Equation3987 G) : Equation3958 G := λ x y z => h x y x z y
theorem Equation4004_implies_Equation3921 (G : Type*) [Magma G] (h : Equation4004 G) : Equation3921 G := λ x y z => h x y x z y
theorem Equation4021_implies_Equation3931 (G : Type*) [Magma G] (h : Equation4021 G) : Equation3931 G := λ x y z => h x y x z y
theorem Equation4038_implies_Equation3921 (G : Type*) [Magma G] (h : Equation4038 G) : Equation3921 G := λ x y z => h x y x z y
theorem Equation4043_implies_Equation3935 (G : Type*) [Magma G] (h : Equation4043 G) : Equation3935 G := λ x y z => h x y x z y
theorem Equation4048_implies_Equation3939 (G : Type*) [Magma G] (h : Equation4048 G) : Equation3939 G := λ x y z => h x y x z y
theorem Equation4053_implies_Equation3935 (G : Type*) [Magma G] (h : Equation4053 G) : Equation3935 G := λ x y z => h x y x z y
theorem Equation4058_implies_Equation3943 (G : Type*) [Magma G] (h : Equation4058 G) : Equation3943 G := λ x y z => h x y x z y
theorem Equation4059_implies_Equation3938 (G : Type*) [Magma G] (h : Equation4059 G) : Equation3938 G := λ x y z => h x y x z y
theorem Equation4060_implies_Equation3939 (G : Type*) [Magma G] (h : Equation4060 G) : Equation3939 G := λ x y z => h x y x z y
theorem Equation4061_implies_Equation3938 (G : Type*) [Magma G] (h : Equation4061 G) : Equation3938 G := λ x y z => h x y x z y
theorem Equation4062_implies_Equation3940 (G : Type*) [Magma G] (h : Equation4062 G) : Equation3940 G := λ x y z => h x y x z y
theorem Equation4063_implies_Equation3939 (G : Type*) [Magma G] (h : Equation4063 G) : Equation3939 G := λ x y z => h x y x z y
theorem Equation4116_implies_Equation4087 (G : Type*) [Magma G] (h : Equation4116 G) : Equation4087 G := λ x y z => h x y x z y
theorem Equation4153_implies_Equation4124 (G : Type*) [Magma G] (h : Equation4153 G) : Equation4124 G := λ x y z => h x y x z y
theorem Equation4190_implies_Equation4161 (G : Type*) [Magma G] (h : Equation4190 G) : Equation4161 G := λ x y z => h x y x z y
theorem Equation4207_implies_Equation4124 (G : Type*) [Magma G] (h : Equation4207 G) : Equation4124 G := λ x y z => h x y x z y
theorem Equation4224_implies_Equation4134 (G : Type*) [Magma G] (h : Equation4224 G) : Equation4134 G := λ x y z => h x y x z y
theorem Equation4241_implies_Equation4124 (G : Type*) [Magma G] (h : Equation4241 G) : Equation4124 G := λ x y z => h x y x z y
theorem Equation4246_implies_Equation4138 (G : Type*) [Magma G] (h : Equation4246 G) : Equation4138 G := λ x y z => h x y x z y
theorem Equation4251_implies_Equation4142 (G : Type*) [Magma G] (h : Equation4251 G) : Equation4142 G := λ x y z => h x y x z y
theorem Equation4256_implies_Equation4138 (G : Type*) [Magma G] (h : Equation4256 G) : Equation4138 G := λ x y z => h x y x z y
theorem Equation4261_implies_Equation4146 (G : Type*) [Magma G] (h : Equation4261 G) : Equation4146 G := λ x y z => h x y x z y
theorem Equation4262_implies_Equation4141 (G : Type*) [Magma G] (h : Equation4262 G) : Equation4141 G := λ x y z => h x y x z y
theorem Equation4263_implies_Equation4142 (G : Type*) [Magma G] (h : Equation4263 G) : Equation4142 G := λ x y z => h x y x z y
theorem Equation4264_implies_Equation4141 (G : Type*) [Magma G] (h : Equation4264 G) : Equation4141 G := λ x y z => h x y x z y
theorem Equation4265_implies_Equation4143 (G : Type*) [Magma G] (h : Equation4265 G) : Equation4143 G := λ x y z => h x y x z y
theorem Equation4266_implies_Equation4142 (G : Type*) [Magma G] (h : Equation4266 G) : Equation4142 G := λ x y z => h x y x z y
theorem Equation4313_implies_Equation4287 (G : Type*) [Magma G] (h : Equation4313 G) : Equation4287 G := λ x y z => h x y x z y
theorem Equation4338_implies_Equation4317 (G : Type*) [Magma G] (h : Equation4338 G) : Equation4317 G := λ x y z => h x y x z y
theorem Equation4356_implies_Equation4340 (G : Type*) [Magma G] (h : Equation4356 G) : Equation4340 G := λ x y z => h x y x z y
theorem Equation4361_implies_Equation4317 (G : Type*) [Magma G] (h : Equation4361 G) : Equation4317 G := λ x y z => h x y x z y
theorem Equation4368_implies_Equation4324 (G : Type*) [Magma G] (h : Equation4368 G) : Equation4324 G := λ x y z => h x y x z y
theorem Equation4373_implies_Equation4317 (G : Type*) [Magma G] (h : Equation4373 G) : Equation4317 G := λ x y z => h x y x z y
theorem Equation4375_implies_Equation4331 (G : Type*) [Magma G] (h : Equation4375 G) : Equation4331 G := λ x y z => h x y x z y
theorem Equation4377_implies_Equation4328 (G : Type*) [Magma G] (h : Equation4377 G) : Equation4328 G := λ x y z => h x y x z y
theorem Equation4378_implies_Equation4330 (G : Type*) [Magma G] (h : Equation4378 G) : Equation4330 G := λ x y z => h x y x z y
theorem Equation4431_implies_Equation4402 (G : Type*) [Magma G] (h : Equation4431 G) : Equation4402 G := λ x y z => h x y x z y
theorem Equation4468_implies_Equation4439 (G : Type*) [Magma G] (h : Equation4468 G) : Equation4439 G := λ x y z => h x y x z y
theorem Equation4505_implies_Equation4476 (G : Type*) [Magma G] (h : Equation4505 G) : Equation4476 G := λ x y z => h x y x z y
theorem Equation4522_implies_Equation4439 (G : Type*) [Magma G] (h : Equation4522 G) : Equation4439 G := λ x y z => h x y x z y
theorem Equation4539_implies_Equation4449 (G : Type*) [Magma G] (h : Equation4539 G) : Equation4449 G := λ x y z => h x y x z y
theorem Equation4556_implies_Equation4439 (G : Type*) [Magma G] (h : Equation4556 G) : Equation4439 G := λ x y z => h x y x z y
theorem Equation4561_implies_Equation4453 (G : Type*) [Magma G] (h : Equation4561 G) : Equation4453 G := λ x y z => h x y x z y
theorem Equation4566_implies_Equation4457 (G : Type*) [Magma G] (h : Equation4566 G) : Equation4457 G := λ x y z => h x y x z y
theorem Equation4571_implies_Equation4453 (G : Type*) [Magma G] (h : Equation4571 G) : Equation4453 G := λ x y z => h x y x z y
theorem Equation4576_implies_Equation4461 (G : Type*) [Magma G] (h : Equation4576 G) : Equation4461 G := λ x y z => h x y x z y
theorem Equation4577_implies_Equation4456 (G : Type*) [Magma G] (h : Equation4577 G) : Equation4456 G := λ x y z => h x y x z y
theorem Equation4578_implies_Equation4457 (G : Type*) [Magma G] (h : Equation4578 G) : Equation4457 G := λ x y z => h x y x z y
theorem Equation4579_implies_Equation4456 (G : Type*) [Magma G] (h : Equation4579 G) : Equation4456 G := λ x y z => h x y x z y
theorem Equation4580_implies_Equation4458 (G : Type*) [Magma G] (h : Equation4580 G) : Equation4458 G := λ x y z => h x y x z y
theorem Equation4581_implies_Equation4457 (G : Type*) [Magma G] (h : Equation4581 G) : Equation4457 G := λ x y z => h x y x z y
theorem Equation4628_implies_Equation4602 (G : Type*) [Magma G] (h : Equation4628 G) : Equation4602 G := λ x y z => h x y x z y
theorem Equation4653_implies_Equation4632 (G : Type*) [Magma G] (h : Equation4653 G) : Equation4632 G := λ x y z => h x y x z y
theorem Equation4671_implies_Equation4655 (G : Type*) [Magma G] (h : Equation4671 G) : Equation4655 G := λ x y z => h x y x z y
theorem Equation4676_implies_Equation4632 (G : Type*) [Magma G] (h : Equation4676 G) : Equation4632 G := λ x y z => h x y x z y
theorem Equation4683_implies_Equation4639 (G : Type*) [Magma G] (h : Equation4683 G) : Equation4639 G := λ x y z => h x y x z y
theorem Equation4688_implies_Equation4632 (G : Type*) [Magma G] (h : Equation4688 G) : Equation4632 G := λ x y z => h x y x z y
theorem Equation4690_implies_Equation4646 (G : Type*) [Magma G] (h : Equation4690 G) : Equation4646 G := λ x y z => h x y x z y
theorem Equation4692_implies_Equation4643 (G : Type*) [Magma G] (h : Equation4692 G) : Equation4643 G := λ x y z => h x y x z y
theorem Equation4693_implies_Equation4645 (G : Type*) [Magma G] (h : Equation4693 G) : Equation4645 G := λ x y z => h x y x z y