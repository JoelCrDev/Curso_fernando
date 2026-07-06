void main() {
  //Cuando creamos una instancia de una clase se ejecuta primero el constructor
  final hero = Hero(name: 'Superman', power: 'Volar');

  print(hero.toString());
  print(hero.name);
  print(hero.power);
}

class Hero {
  String name;
  String power;

  //Esta es otra forma de inicializar las propiedades, es mas corta y mas legible

  //Con parametros con nombre se puede omitir el orden de los parametros
  Hero({required this.name, this.power = 'Sin poderes'});

  // Hero(String pName, String pPower)
  //Poner this es opcionaL porque dart ya clasifica quienes son propiedades y cuando son parametros
  //    : name = pName,
  //    power = pPower;

  //Override se usa para sobreescribir el metodo de la clase padre
  @override
  toString(){
    return '$name - $power';
  }
}
