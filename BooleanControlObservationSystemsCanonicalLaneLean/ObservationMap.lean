import BooleanControlObservationSystemsCanonicalLaneLean.BooleanControlSystem

namespace HautevilleHouse
namespace BooleanControlObservationSystemsCanonicalLaneLean

structure ObservationMap (sys : BooleanControlSystem) where
  outputSpace : Type
  observationFunction : sys.stateSpace → outputSpace
  observationSemantics : Prop
  observationSemanticsClosed : observationSemantics

end BooleanControlObservationSystemsCanonicalLaneLean
end HautevilleHouse