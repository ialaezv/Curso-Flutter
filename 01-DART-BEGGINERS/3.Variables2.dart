// * Punt d'entrada de la nostra aplicació
void main() {
  // * Variables que soporta treu o false assigandes amb bool
  bool isActive = true;

  if ( isActive ) {
    print( 'Esta activo' );
  } else {
    print( 'Esta inactivo' );
  }

  // * Poder assignar a una variable el valor de null pero no pot ser utilitzada en una condició normal com la anterior
  bool? isNull = null;

  if ( isNull == null ){
    print( 'isNull es null' );
  } else {
    print( 'isNull no es null' );
  }



}