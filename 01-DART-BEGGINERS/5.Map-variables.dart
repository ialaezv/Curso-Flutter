// * Punt d'entrada de la nostra aplicació
void main() {

  // * Assignació de un objecte o Map de tipus dynamic es a dir que acepta qualsevol tipo de variable
  Map persona = {
    'nombre': 'Jaume',
    'edad': 89,
    'soltero': false,
    true : false

  };

  // * Assignació de un objecte o Map de tipus String , String on especifiques el tipos de variable que han de ser cada camp
  Map <String , String> sinonimos = {
    'Contento': 'Alegre',
    'Triste': 'Depresivo',
  };

  // * Assignació de un objecte o Map de tipus Integer , dynamic on especifiques el tipos de variable que han de ser cada camp
  Map <Int , dynamic> compra = {
    1 : 'Pollo amb Nestea',
    2 : 'Verduras',
  };


  // * Afegir un objecto a un Map
  persona.addAll({ 'dinero': 1234.12 });

  // * Printar el Map persona 
  print(persona);
  // * Printar una clau en especific del nostre Map persona
  print(persona['nombre']);
}