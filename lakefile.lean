import Lake
open Lake DSL

package "jsp-000833-formalization" where
  leanOptions := #[
    ⟨`pp.unicode.fun, true⟩,
    ⟨`autoImplicit, false⟩
  ]

require mathlib from git
  "https://github.com/leanprover-community/mathlib4.git" @ "v4.33.0"

lean_lib Erdos1001 where
  roots := #[`Erdos1001]

@[default_target]
lean_lib JSP_000833 where
  roots := #[`JSP_000833]
