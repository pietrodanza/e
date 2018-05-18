include "console.iol"

interface eInterface {
RequestResponse:
  identification(string)(string)
OneWay:
}

execution{concurrent}

inputPort eIn {
Location: "socket://localhost:8004"
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
