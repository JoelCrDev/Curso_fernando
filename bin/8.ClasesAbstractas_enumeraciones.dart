void main() {
  final windPLant = WindPLant(initialEnergy: 100);
  print(windPLant);
  
}

//Una clase abstracta no se puede instanciar, solo se puede usar como plantilla para otras clases

//El enum sirve para crear valores y asi evitar errores de escritura
enum PlantType { nuclear, wind, water }

abstract class EnergyPlant {
  double energyLeft;
  //La variable sera de tipo PlantType
  PlantType type;

  EnergyPlant({required this.energyLeft, required this.type});

  //Este metodo debe ser implementado por las clases que extiendan de esta
  void consumeEnergy(double amount);
}

// Extends o implements
//Extends es heredar de una clase
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