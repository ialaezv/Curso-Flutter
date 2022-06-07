// * Punt d'entrada de la nostra aplicació que transformem en una funció async
void main() async {
// * Print 1
print('Empieza execución');

// * Print 4 ja que espera a que acavi el flux d'execució async 
getNombre('10').then( print );

// * Print 2 ja que com es async la funció es para a resoldre-la
final nombre = await getNombre('10');


// * Print 3 
print('Acaba execución');

}

// * Promesa per agafar el nom pasat a la funció
Future<String> getNombre(String id) async {
  return '$id - Gorge';
}