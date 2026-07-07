abstract class Animal {}

abstract class Mamifero extends Animal {}

abstract class Ave extends Animal {}

abstract class Pez extends Animal {}

mixin Volador {
  void volar() => print("Esta volando");
}

mixin Caminantes {
  void caminar() => print("Esta caminando");
}

mixin Nadador {
  void nadar() => print("Esta nadando");
}

//Con los minxis podemos agregar mas clases heredadas para mayores funcionalidades

class Delfin extends Mamifero with Nadador {}

class Murcielago extends Mamifero with Volador, Caminantes {}

class Gato extends Mamifero with Caminantes {}

class Paloma extends Ave with Volador, Caminantes {}

class Pato extends Ave with Volador, Caminantes, Nadador {}

class Tiburon extends Pez with Nadador {}

class PezVolador extends Pez with Nadador, Volador {}

void main() {
  //Aqui podemos ver la magica de los minxis, se pueden mezclar caracteristicas de otras clases
  final flipper = Delfin();
  flipper.nadar();

  final batman = Murcielago();
  batman.caminar();
  batman.volar();

  final namor = Pato();
  namor.nadar();
  namor.volar();
  namor.caminar();
}
