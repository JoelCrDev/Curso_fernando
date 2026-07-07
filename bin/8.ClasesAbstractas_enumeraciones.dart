void main() {
  final windPLant = WindPLant(initialEnergy: 10);
  final nuclearPlant = NuclearPlant(energyLeft: 1000);

  print(chargePhone(windPLant));
  //Podemos usar la misma funcion porque reconoce que la instancia es de EnergyPlant
  print(chargePhone(nuclearPlant));
}

double chargePhone(EnergyPlant plant) {
  if (plant.energyLeft < 10) {
    throw Exception("No hay suficiente energia");
  }

  return plant.energyLeft - 10;
}

//Una clase abstracta no se puede instanciar, solo se puede usar como plantilla para otras clases
//El enum sirve para crear valores y asi evitar errores de escritura
enum PlantType { nuclear, wind, water }

abstract class EnergyPlant {
  double energyLeft;
  //La variable sera de tipo PlantType
  final PlantType type;

  EnergyPlant({required this.energyLeft, required this.type});

  //Este metodo debe ser implementado por las clases que extiendan de esta
  void consumeEnergy(double amount);
}

// Extends o implements
//Extends es heredar de una clase padre
class WindPLant extends EnergyPlant {
  //La clase que extiende debe tener un constructor
  //Y llamar al super
  WindPLant({required double initialEnergy})
    : super(energyLeft: initialEnergy, type: PlantType.wind);

  //Aqui sobreescribimos el metodo
  @override
  void consumeEnergy(double amount) {
    //Podemos modificar los atributos de la clase padre
    energyLeft -= amount;
  }
}

//Implements significa que se debe implementar los atributos y metodos de la clase abstracta
//Implements sirve para extender solo unos cuantos metodos en particular, no es una herencia
class NuclearPlant implements EnergyPlant {
  @override
  double energyLeft;

  @override
  final PlantType type = PlantType.nuclear;

  NuclearPlant({required this.energyLeft});

  @override
  void consumeEnergy(double amount) {
    energyLeft -= (amount * 0.5);
  }
}
