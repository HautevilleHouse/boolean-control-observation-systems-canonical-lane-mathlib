import BooleanControlObservationSystemsCanonicalLaneLean.ObservationMap

namespace HautevilleHouse
namespace BooleanControlObservationSystemsCanonicalLaneLean

structure ObservabilityPackage {sys : BooleanControlSystem} (obs : ObservationMap sys) where
  distinguishability : Prop
  observabilityCondition : Prop
  distinguishabilityClosed : distinguishability
  observabilityConditionClosed : observabilityCondition

def ObservabilityClosed {sys : BooleanControlSystem} {obs : ObservationMap sys}
    (O : ObservabilityPackage obs) : Prop :=
  O.distinguishability ∧ O.observabilityCondition

theorem observability_closed_from_evidence {sys : BooleanControlSystem}
    {obs : ObservationMap sys} (O : ObservabilityPackage obs) :
    ObservabilityClosed O := by
  exact And.intro O.distinguishabilityClosed O.observabilityConditionClosed

end BooleanControlObservationSystemsCanonicalLaneLean
end HautevilleHouse