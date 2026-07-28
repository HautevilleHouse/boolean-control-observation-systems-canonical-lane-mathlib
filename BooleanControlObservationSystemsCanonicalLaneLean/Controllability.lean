import BooleanControlObservationSystemsCanonicalLaneLean.BooleanControlSystem

namespace HautevilleHouse
namespace BooleanControlObservationSystemsCanonicalLaneLean

structure ControllabilityPackage (sys : BooleanControlSystem) where
  reachability : Prop
  controllabilityCondition : Prop
  reachabilityClosed : reachability
  controllabilityConditionClosed : controllabilityCondition

def ControllabilityClosed (sys : BooleanControlSystem) (C : ControllabilityPackage sys) : Prop :=
  C.reachability ∧ C.controllabilityCondition

theorem controllability_closed_from_evidence (sys : BooleanControlSystem)
    (C : ControllabilityPackage sys) : ControllabilityClosed sys C := by
  exact And.intro C.reachabilityClosed C.controllabilityConditionClosed

end BooleanControlObservationSystemsCanonicalLaneLean
end HautevilleHouse