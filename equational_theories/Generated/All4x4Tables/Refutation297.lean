
import Mathlib.Data.Finite.Prod
import equational_theories.Equations.All
import equational_theories.FactsSyntax
import equational_theories.MemoFinOp
import equational_theories.DecideBang

/-!
This file is generated from the following operator table:
[[0,1,3,3],[3,3,0,2],[1,0,1,0],[0,3,2,2]]
-/

set_option linter.unusedVariables false

/-! The magma definition -/
def «All4x4Tables [[0,1,3,3],[3,3,0,2],[1,0,1,0],[0,3,2,2]]» : Magma (Fin 4) where
  op := finOpTable "[[0,1,3,3],[3,3,0,2],[1,0,1,0],[0,3,2,2]]"

/-! The facts -/
@[equational_result]
theorem «Facts from All4x4Tables [[0,1,3,3],[3,3,0,2],[1,0,1,0],[0,3,2,2]]» :
  ∃ (G : Type) (_ : Magma G) (_: Finite G), Facts G [2912] [255, 359, 411, 614, 817, 1020, 1223, 1426, 1631, 1634, 1644, 1654, 1657, 1681, 1684, 1691, 1694, 1721, 1728, 1832, 2035, 2240, 2243, 2253, 2266, 2290, 2303, 2330, 2443, 2446, 2456, 2469, 2506, 2533, 2540, 2644, 2849, 2852, 2855, 2865, 2872, 2875, 2902, 2939, 2946, 2949, 3052, 3055, 3065, 3068, 3105, 3115, 3142, 3149, 3152, 3253, 3458, 3461, 3464, 3474, 3481, 3484, 3509, 3512, 3519, 3546, 3549, 3556, 3659, 3864, 3867, 3870, 3877, 3880, 3887, 3890, 3915, 3918, 3925, 3928, 3952, 3962, 4067, 4070, 4073, 4083, 4090, 4093, 4121, 4128, 4155, 4158, 4165, 4269, 4272, 4275, 4284, 4291, 4320, 4380, 4584, 4587, 4590, 4599, 4606, 4635] :=
    ⟨Fin 4, «All4x4Tables [[0,1,3,3],[3,3,0,2],[1,0,1,0],[0,3,2,2]]», Finite.of_fintype _, by decideFin!⟩
