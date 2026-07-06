void main (){
  final Map<String, dynamic> pokemon = {
    'name': 'Pikachu',
    'type': 'Electric',
    'level': 25,
    'habilidades':['trueno','carga'],
    'sprites':{
      1: 'image.url',
      2: 'image2.url'
    }
  };

  final pokemones = {
    1: 'Pikaaa',
    2: 'Bulbasaur',
  };
  print(pokemon['habilidades'][1]);
  print(pokemon['sprites'][1]);
  print(pokemones[2]);
}