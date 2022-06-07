// * Punt d'entrada de la nostra aplicació
void main() {
  final nombre = 'Salva';
  
  // * Cridem a la funció per executar
  saludar_simple();
  // * Invoquem a la funció saludar pasan com argument nombre
  saludar(nombre);
  // * Invoquem a la funció saludar_2 pasan com argument nombre
  saludar_2(nombre);
  // * Invoquem a la funció saludar_3 pasan com argument en forma de Map
  saludar_3(mensaje: 'Hola Vida', nombre: nombre);
  // * Invoquem a la funció saludar_5 pasan com argument en forma de Map ja que son obligatoris
  saludar_4({ nombre: 'Paco', edad: 12 });
}

// * Funció que envia un print i com no rentorna res escrivim void devant d'ella
void saludar_simple() {
  print('Hola Mundo');
}
// * Funció que agafa un parametre x que ha de ser de tipo Sring i el print amb el Hola
void saludar( String name) {
  print('Hola $name');
}
// * Tenim com argument obligatori nombre i com opcional mensaje en el cas que no es pasi opcional es printara Hi!
void saludar_2( String nombre , [ String mensaje = 'Hi!']) {
  print('$mensaje $nombre');
}
// * Utilitzant {} podem tractar els parametre com objectes o Map pero tenim que assignar uns valor en el cas que no es pasin a la funció
void saludar_3({ String nombre = 'No name', String mensaje = 'No mensaje' }) {
  print('Hola $nombre, $mensaje');
}
// * I afegint el require obliguem a pasar uns parametres a la nostra funció
void saludar_4({
  required String nombre,
  required Int edad,
}) {
  print('$nombre $edad')
}

