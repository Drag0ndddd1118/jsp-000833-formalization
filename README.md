# Formalization of JSP-000833 (Erdős Problem #1001)

## Problem Overview

**Catalog ID:** [JSP-000833](https://github.com/TheJustinSunPrize/awards/blob/main/problems/catalog-0801-0900.md#JSP-000833)  
**Erdős Problem:** [#1001](https://www.erdosproblems.com/1001)  
**Mathematical Area:** Number theory / Diophantine approximation  

### Problem Statement

Erdős, Szüsz, and Turán (1958) studied the asymptotic distribution of rational approximations with denominators in $[N, cN]$. Specifically, for fixed $A > 0$ and $c \ge 1$, let $S(N, A, c)$ denote the Lebesgue measure of the set of $\alpha \in (0, 1)$ for which there exists an irreducible rational $x/y$ satisfying $N \le y \le cN$ and $|\alpha - x/y| < A/y^2$. What is the limiting behavior of this measure as $N \to \infty$?

### Resolution

Kesten and Sós (1966) proved that the limit exists for all $A > 0$ and $c \ge 1$. Subsequently, Florin P. Boca, Cristian Cobeli, and Alexandru Zaharescu gave the explicit limit formula via Farey-triangle integrals.

## Formalization Details

- **Bridge File:** `JSP_000833.lean`
- **Main Modules:** `Erdos1001.lean`
- **Main Theorem:**
  ```lean
  theorem jsp_000833_solved (A c : ℝ) (hA : 0 < A) (hc : 1 ≤ c) :
      Erdos1001.IsLimitValue A c (Erdos1001.erdosSzuszTuranLimit A c) :=
    Erdos1001.erdos_1001 A c hA hc
  ```
- **Axioms Check:**
  `#print axioms jsp_000833_solved` yields strictly:
  ```lean
  [propext, Classical.choice, Quot.sound]
  ```
  **Zero** unproved hypotheses, zero `sorry`, zero `admit`.

## Build & Verification Instructions

### Toolchain
- **Lean:** `leanprover/lean4:v4.33.0`
- **Mathlib:** `v4.33.0`

### Build
```bash
lake exe cache get
lake build
```

## Attribution & Provenance
- **Mathematical Solution:** Harry Kesten, Vera T. Sós, Florin P. Boca, Cristian Cobeli, and Alexandru Zaharescu.
- **Formal Authors:** Codex, GPT-5.6 Sol, with upstream formalization in `plby/lean-proofs` (`src/latest/ErdosProblems/Erdos1001.lean`).
- **Packaging & Verification:** Maintained and verified by 赵钦 (Qin Zhao, GitHub: [@Drag0ndddd1118](https://github.com/Drag0ndddd1118)).
