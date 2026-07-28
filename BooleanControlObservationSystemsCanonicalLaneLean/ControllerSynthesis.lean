import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BooleanControlObservationSystemsCanonicalLaneLean

structure ControllerSynthesis where
  controlLaw : inputSpace → stateSpace → inputSpace
  stabilizabilityCondition : Prop
  reachabilityCondition : Prop
  optimalityCriterion : Prop

structure ControllerSynthesisEvidence (C : ControllerSynthesis) where
  stabilizabilityConditionClosed : C.stabilizabilityCondition
  reachabilityConditionClosed : C.reachabilityCondition
  optimalityCriterionClosed : C.optimalityCriterion

def ControllerSynthesisClosed (C : ControllerSynthesis) : Prop :=
  C.stabilizabilityCondition ∧ C.reachabilityCondition ∧ C.optimalityCriterion

theorem controller_synthesis_closed_from_evidence (C : ControllerSynthesis) (E : ControllerSynthesisEvidence C) :
    ControllerSynthesisClosed C := by
  exact And.intro E.stabilizabilityConditionClosed (And.intro E.reachabilityConditionClosed E.optimalityCriterionClosed)

end BooleanControlObservationSystemsCanonicalLaneLean
end HautevilleHouse