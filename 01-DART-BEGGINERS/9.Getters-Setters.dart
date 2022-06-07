// * Importacions de llibreries
import 'dart:math' as math;

// * Punt d'entrada de la nostra aplicació
void main() {

final cuadrado = new Cuadrado( 5 );

// * Print i llamado de un Setter i es pot fer com si fos una propietat de la variable
cuadrado.area = 25;

//  * Print i llamdado a un metodo es a dir calcularArea
print( 'area: ${ cuadrado.calcularArea() }' );

//  * Print i llamdo de un Getter es a dir area 
print( 'area get:' ${ cuadrado.area } );

}

// * Crem class
class Cuadrado {
  
  double lado; 
  
  // * Luze como un metodo pero es una propietat ** Getter
  double get area {
    return this.lado * this.lado;
  }

  // *  Pot rebre un valor i podem donar una logica ** Setter
  set area( double valor ) {
   this.lado = math.sqrt(valor);
  }


  Cuadrado( double lado ):
    this.lado = lado;

  // * Funció on multipliquem els costats del cuadrado per treure la seva area
  double calcularArea() {
    return this.lado * this.lado;
  }
}