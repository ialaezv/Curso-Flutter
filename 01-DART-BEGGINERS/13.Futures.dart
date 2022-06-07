// * Punt d'entrada de la nostra aplicació
void main() {

print('Antes de la petición');

httpGet('http://api.vida.com/Sad')
  .then( (data) {

    print( data );

  });

print('Fin del programa');

}
// * Promesa on es pasa com a parametre una url i amb un delay de 3 segons es repont amb un 'Hola Mundo - 3 segundos'
Future httpGet( String url ) {
  return Future.delayed( Duration( secounds: 3 ), () {
    return 'Hola Mundo - 3 segundos';
  });
}