void main() {

  //Si resivimos alguna peticion http
  final Map<String,dynamic> rawJson = {
    'name': "tony",
    "power": null,
    "isAlive": true
  };

  final ironman = Hero.fromJson(rawJson);

  // final ironman = Hero(
  //   name: "Iroman",
  //   power: "Vuela",
  //   isAlive: false
  // );

  print(ironman.power);
  print(ironman.toString());

}

class Hero {
  String name;
  String power;
  bool isAlive;

  //Si tiene el mismo nombre de la clase es un constructor
  Hero({required this.name, required this.power, required this.isAlive});

  //Creamos un constructor con un nombre propio 
  Hero.fromJson(Map<String,dynamic> json) 
    : name = json['name'] ?? 'No hay nonbre',
    power = json['power'] ?? 'no hay poder',
    isAlive = json['isAlive'] ?? "No esta vivo";

  //El toString es el primero que llama cuando esta 
  @override
  String toString(){
    return '$name, $power, esta vivo: ${isAlive ? "Yes" : "No"}';
  }
}
