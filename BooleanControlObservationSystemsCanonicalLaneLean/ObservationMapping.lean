import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BooleanControlObservationSystemsCanonicalLaneLean

structure ObservationMapping where
  observationSpace : Type u
  mappingFunction : stateSpace → observationSpace
  injectivityCondition : Prop
  surjectivityCondition : Prop
  linearityCondition : Prop

structure ObservationMappingEvidence (O : ObservationMapping) where
  injectivityConditionClosed : O.injectivityCondition
  surjectivityConditionClosed : O.surjectivityCondition
  linearityConditionClosed : O.linearityCondition

def ObservationMappingClosed (O : ObservationMapping) : Prop :=
  O.injectivityCondition ∧ O.surjectivityCondition ∧ O.linearityCondition

theorem observation_mapping_closed_from_evidence (O : ObservationMapping) (E : ObservationMappingEvidence O) :
    ObservationMappingClosed O := by
  exact And.intro E.injectivityConditionClosed (And.intro E.surjectivityConditionClosed E.linearityConditionClosed)

end BooleanControlObservationSystemsCanonicalLaneLean
end HautevilleHouse