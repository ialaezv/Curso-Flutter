// * Punt d'entrada de la nostra aplicació
void maon() {
  
  // * Crear un List amb valor null 
  List? vidas = null;

  // * Crear un array buit o un List especificant el tipus de variables que guardara es a dir integers 
  List<int> numeros = [1,2,3,4,5,6,7,8,9,10];
  // * Crear un List de tipus dynamic on pot rebre tot tipus de variables
  List<dynamic> random = [];

  // * Afegir un valor a un List amb la funció add
  numeros.add(11);
  random.add('Hola');
  random.add(true);

  // * Utilitzar un metode del List

  final masNumeros = List.generate(100, (int index) => index);

  // * Pintar un valor del List per la seva posició sabent que és comença per 0,1,2,4...
  print(numeros[0])

  // * Printar tot el List
  print(numeros);

  // * Printar del 0 al 100
  print(masNumeros);

}