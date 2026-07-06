void main() {
  //Creacion de las instancias de Square
  final mySquare = Square(side: -15);

  //Podemos modificar los atributos de una clase llamandola
  //Debemos controlar los valores que recibimos, por ejemplo estos negativos
  mySquare.side = 5;

  //Al modificar el atributo de la clase se puede volver a llamar el metodo
  print("El area de la variable es: ${mySquare.calculateArea()}");

  print("El area de la variable con get es: ${mySquare.area}");
}

//Clase base que define un cuadrado

class Square {
  //_ Significa que es privada que solo sera visible para esta clase
  //No podremos llamarla en otro archivo y sirve para que no se pueda modificar
  //desde otro archivo
  double _side;

  //Sacamos el this.side porque si ponemos this.side da error al compilar
  //porque si usamos this.side se vuelve publico
  Square({required double side})
    //Los : significan que se ejecuta antes de crear la instancia
    : 
    
    assert(side > 0, "El valor es menor a 0"),
    //Si ponemos en privado debemos inicializar las varibales de esta manera
      _side = side;

  //El get es un tipo de metodo que retorna un valor

  //Funcion Flecha para ahorrar lineas de codigo
  double get area => _side * _side;


  set side(double value) {
    print("Setting new value: $value");
    //throw sirve para detener el programa si no se cumple la condicion
    if (value <= 0) throw "El valor es menor a 0";
    _side = value;
  }

  double calculateArea() {
    return _side * _side;
  }
}
