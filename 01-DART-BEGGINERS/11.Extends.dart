// * Punt d'entrada de la nostra aplicació
void main() {

final superman = new Heroe('Clark Kent');
final loki = new Villano('Loki')

print(superman);
print(loki);

}

// * Class abstracte Personajes
abstract class Personaje {
  String? poder;
  String nombre;

  Personaje( this.nombre );

  // * Retorna la classe 
  @override
  String toString() {
    return '$nombre - $poder';
  }
}

// * Class Heore que recull tots els metodes i propietats de la class Personaje
class Heroe extends Personaje {

  int valentia = 100;

  // * Constructor i llamamos el construcrtor de la class a la que fem extends es a dir class Personaje constructor Personaje(this.nombre);
  Heroe( String nombre ): super( nombre );

}

// * Class Villano que recull tots els metodes i propietats de la class Personaje
class Villano extends Personaje {
  
  int maldad = 50;

  Villano( String nombre ): super(nombre);

}