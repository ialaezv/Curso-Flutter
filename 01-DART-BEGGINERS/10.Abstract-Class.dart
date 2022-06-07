// * Punt d'entrada de la nostra aplicació
void main() {

final perro = new Perro();
final gato = new Gato();


// * Cridem a la funció sonidoAnimal i printem la variable emitirSonido de perro es a dir Guauuuuuuu
sonidoAnimal( perro );
sonidoAnimal( gato );

}

// * Funció on pasem la classe Animal i parametre animal
void sonidoAnimal( Animal animal ) {
  animal.emitirSonido();
}


// * Una class pero que no pot ser llamda com new Animal sino que s'implementa amb altres class
abstract class Animal {

  int? patas;

  void emitirSonido();

}
// * Una class Perro normal implementant la class Animal
class Perro implements Animal {

  int? patas;

  void emitirSonido() => print('Guauuuuuuuuu');
  
}
// * Class Gato que implementa la estructura de Animal
class Gato implements Animal {
  
  int? patas;
  int? cola,
  
  void emitirSonido() => print('Miauuuuuuuuuuuuuuuuuuu');
}