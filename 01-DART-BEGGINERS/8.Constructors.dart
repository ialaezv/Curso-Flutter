// * Punt d'entrada de la nostra aplicaciĆ³
void main() {

final rawJson = {
  'nombre': 'Tony Stark',
  'poder': 'Dinero'
};

final ironman = Heroe.fromJson( rawJson );

print(ironman);

}

// * Crem una class
class Heroe {
  // * Propietats de la class on sempre es necesitara el nombre i el poder
  String nombre;
  String poder;

  // * Contructor on es pasaran uns parametres per fer la class en format Map
  Heroe({
    required this.nombre, 
    required this.poder 
  });

  // * Constructor per fer un parch de un json i utilitzem ?? per si no ens pasen un nombre o poder i els : per fer ua comprobaciĆ³
  Heroe.fromJson( Map<String, String> json ):
    this.nombre = json['nombre']!,
    this.nombre = json['poder'] ?? 'No tiene poder';
  
  // * Retornem la informaciĆ³ que ens pasen a la class a l'hora de fer un print
  String toString() {
    return 'Heroe: nombre: ${this.nombre}, poder: ${this.poder}';
  }
}