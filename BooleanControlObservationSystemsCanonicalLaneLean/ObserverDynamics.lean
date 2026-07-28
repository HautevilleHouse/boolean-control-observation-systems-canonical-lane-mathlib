import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BooleanControlObservationSystemsCanonicalLaneLean

structure ObserverDynamics where
  observerStateSpace : Type u
  observerUpdateFunction : observerStateSpace → inputSpace → outputSpace → observerStateSpace
  estimationError : observerStateSpace → stateSpace → Prop
  convergenceCondition : Prop
  asymptoticStability : Prop

structure ObserverDynamicsEvidence (O : ObserverDynamics) where
  convergenceConditionClosed : O.convergenceCondition
  asymptoticStabilityClosed : O.asymptoticStability

def ObserverDynamicsClosed (O : ObserverDynamics) : Prop :=
  O.convergenceCondition ∧ O.asymptoticStability

theorem observer_dynamics_closed_from_evidence (O : ObserverDynamics) (E : ObserverDynamicsEvidence O) :
    ObserverDynamicsClosed O := by
  exact And.intro E.convergenceConditionClosed E.asymptoticStabilityClosed

end BooleanControlObservationSystemsCanonicalLaneLean
end HautevilleHouse