// * Punt d'entrada de la nostra aplicació
void main() {

// * Crem una Instancai de Heroe a la variable wolverine utilitzant el New 
final wolverine = new Heroe( nombre: 'Logan',  poder: 'Regeneración');

print( wolverine );

}

// * Crem una class
class Heroe {
  // * Propietats de la class
  String nombre;
  String poder;

  // * Contructor on es pasaran uns parametres per fer la class en format Map
  Heroe({
    required this.nombre, 
    required this.poder 
  });


  // * Retornem la informació que ens pasen a la class a l'hora de fer un print
  @override // *  Indicar que sobrescrivim
  String toString() {
    return 'Heroe: nombre: ${this.nombre}, poder: ${this.poder}';
  }
}