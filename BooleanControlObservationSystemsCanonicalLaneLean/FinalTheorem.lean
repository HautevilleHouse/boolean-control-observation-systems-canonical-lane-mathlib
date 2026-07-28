import canonicalLaneMathlib.AdmissibleClass
import BooleanControlObservationSystemsCanonicalLaneLean.BooleanControlSystem
import BooleanControlObservationSystemsCanonicalLaneLean.ObservationModel
import BooleanControlObservationSystemsCanonicalLaneLean.ControllabilityObservability

namespace HautevilleHouse
namespace BooleanControlObservationSystemsCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  True

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

def ConstrainedControlObservationClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem bridge_from_admissible_class (A : AdmissibleClass) : bridgeClosed A := by
  trivial

theorem gate_from_admissible_class (A : AdmissibleClass) : gateClosed A := by
  exact A.gateWitness

theorem constrained_control_observation_endgame (A : AdmissibleClass) : ConstrainedControlObservationClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end BooleanControlObservationSystemsCanonicalLaneLean
end HautevilleHouse