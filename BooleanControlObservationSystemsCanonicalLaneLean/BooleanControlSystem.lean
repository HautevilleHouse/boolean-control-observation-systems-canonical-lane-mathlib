import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BooleanControlObservationSystemsCanonicalLaneLean

structure BooleanControlSystemPackage where
  stateSpace : Type u
  inputSpace : Type v
  outputSpace : Type w
  dynamics : stateSpace × inputSpace → stateSpace
  initialStates : Set stateSpace
  transitionSystem : Prop
  deterministicInput : Prop

theorem transition_system_holds (P : BooleanControlSystemPackage) : P.transitionSystem := by
  exact P.transitionSystem

structure BooleanControlSystemEvidence (P : BooleanControlSystemPackage) where
  initialStatesNonempty : P.initialStates.Nonempty
  transitionSystemClosed : P.transitionSystem

def BooleanControlSystemClosed (P : BooleanControlSystemPackage) : Prop :=
  P.initialStates.Nonempty ∧ P.transitionSystem

theorem boolean_control_system_closed_from_evidence (P : BooleanControlSystemPackage) (E : BooleanControlSystemEvidence P) : BooleanControlSystemClosed P := by
  exact And.intro E.initialStatesNonempty E.transitionSystemClosed

end BooleanControlObservationSystemsCanonicalLaneLean
end HautevilleHouse