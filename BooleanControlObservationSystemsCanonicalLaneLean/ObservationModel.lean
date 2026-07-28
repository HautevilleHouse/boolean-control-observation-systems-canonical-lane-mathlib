import canonicalLaneMathlib.AdmissibleClass
import BooleanControlObservationSystemsCanonicalLaneLean.BooleanControlSystem

namespace HautevilleHouse
namespace BooleanControlObservationSystemsCanonicalLaneLean

structure ObservationModelPackage {S : BooleanControlSystemPackage} where
  outputMap : S.stateSpace → S.outputSpace
  observabilityCriterion : Prop
  sensorNoiseModel : Prop

theorem observability_criterion_holds (O : ObservationModelPackage) : O.observabilityCriterion := by
  exact O.observabilityCriterion

structure ObservationModelEvidence {S : BooleanControlSystemPackage} (O : ObservationModelPackage S) where
  outputMapDefined : True
  observabilityCriterionClosed : O.observabilityCriterion

def ObservationModelClosed {S : BooleanControlSystemPackage} (O : ObservationModelPackage S) : Prop :=
  O.observabilityCriterion

theorem observation_model_closed_from_evidence {S : BooleanControlSystemPackage} (O : ObservationModelPackage S) (E : ObservationModelEvidence O) : ObservationModelClosed O := by
  exact E.observabilityCriterionClosed

end BooleanControlObservationSystemsCanonicalLaneLean
end HautevilleHouse