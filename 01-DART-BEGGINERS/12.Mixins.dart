// * Class abstract Principal
abstract class Animal{

}

// * Class abstract Secundaria extends de Animal
abstract class Mamifero extends Animal {

}
// * Class abstract Secundaria extends de Animal
abstract class Ave extends Animal {

}
// * Class abstract Secundaria extends de Animal
abstract Pez  extends Animal {

}

// * Class abstract 
abstract class Volador {
  void volar() => print('Estoy volando');
}

// * Class abstract 
abstract class Nadador {
  void nadar() => print('Estoy nadando');
}

// * Class abstract 
abstract class Caminante {
  void caminar() => print('Estoy caminando');
}

// * Class Dolphin on fem un extends de Mamiferi i un with afegint la class de Nadador
class Delfin extends Mamifero with Nadador {}
// * Class Murcielago on fem un extends de Mamiferi i un with afegint la class de Volador i Caminante
class Murcielago extends Mamiferi with Volador, Caminante {}


// * Punt d'entrada de la nostra aplicació
void main() {

// * Assignant Variables 
final flipper = new Delfin();
final batman = new Murcielago();


// * Ens retorna estoy nadando per consola
flipper.nadar();
// * Ens retorna = estoy caminando per consola
batman.caminar();
// * Enst retorna = estoy volando per consola
batman.volar();

}