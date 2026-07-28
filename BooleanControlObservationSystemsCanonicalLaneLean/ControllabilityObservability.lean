import canonicalLaneMathlib.AdmissibleClass
import BooleanControlObservationSystemsCanonicalLaneLean.BooleanControlSystem
import BooleanControlObservationSystemsCanonicalLaneLean.ObservationModel

namespace HautevilleHouse
namespace BooleanControlObservationSystemsCanonicalLaneLean

structure ControllabilityObservabilityPackage {S : BooleanControlSystemPackage} {O : ObservationModelPackage S} where
  controllabilityCondition : Prop
  observabilityCondition : Prop
  kalmanRankCondition : Prop
  dualityCondition : Prop

theorem kalman_rank_condition_holds (C : ControllabilityObservabilityPackage) : C.kalmanRankCondition := by
  exact C.kalmanRankCondition

structure ControllabilityObservabilityEvidence {S : BooleanControlSystemPackage} {O : ObservationModelPackage S} (C : ControllabilityObservabilityPackage S O) where
  controllabilityClosed : C.controllabilityCondition
  observabilityClosed : C.observabilityCondition
  kalmanRankClosed : C.kalmanRankCondition

def ControllabilityObservabilityClosed {S : BooleanControlSystemPackage} {O : ObservationModelPackage S} (C : ControllabilityObservabilityPackage S O) : Prop :=
  C.controllabilityCondition ∧ C.observabilityCondition ∧ C.kalmanRankCondition

theorem controllability_observability_closed_from_evidence {S : BooleanControlSystemPackage} {O : ObservationModelPackage S} (C : ControllabilityObservabilityPackage S O) (E : ControllabilityObservabilityEvidence C) : ControllabilityObservabilityClosed C := by
  exact And.intro E.controllabilityClosed (And.intro E.observabilityClosed E.kalmanRankClosed)

end BooleanControlObservationSystemsCanonicalLaneLean
end HautevilleHouse