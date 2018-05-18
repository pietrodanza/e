include "console.iol"

interface eInterface {
RequestResponse:
  identification(string)(string)
OneWay:
}

execution{concurrent}

inputPort eIn {
Location: JDEP_LOCATION_e_eIn
Protocol: sodep
Interfaces: eInterface
}


main
{

  [identification(request)(response){
    response = request + " E ";
    println@Console( response )()
  }]
}
