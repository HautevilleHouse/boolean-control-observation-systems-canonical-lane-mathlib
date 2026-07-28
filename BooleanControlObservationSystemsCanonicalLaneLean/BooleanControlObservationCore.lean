import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BooleanControlObservationSystemsCanonicalLaneLean

structure BooleanControlObservationSystem where
  stateSet : Type
  inputSet : Type
  outputSet : Type
  transition : stateSet → inputSet → stateSet
  output : stateSet → outputSet
  stateFinite : Fintype stateSet
  inputFinite : Fintype inputSet
  outputFinite : Fintype outputSet

structure BooleanControlAdmittedObject where
  system : BooleanControlObservationSystem
  conclusion : Prop
  conclusionTerm : conclusion

def BooleanControlWitnessClosed (O : BooleanControlAdmittedObject) : Prop :=
  O.conclusion

end BooleanControlObservationSystemsCanonicalLaneLean
end HautevilleHouse