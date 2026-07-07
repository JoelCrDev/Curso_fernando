void main(){
  print(saludar());
  print(sumar(5,1));
  print(sumarOpcional(5));
  print(sumasConNombres(a: 5));
}

//Funciones flecha o lambda, devuelve lo que queremos devolver directamente sin necesidad de escribir return
String saludar () => 'Hola';

String saludar2 () {
  return 'Hola';
            }

//Debemos tener un tipado estricto dentro de las funciones, no podemos devolver un string si la función es de tipo int
int sumar (int a,int b) => a + b;

//Parametros opcionales, el valor por defecto es 0, si no se le asigna un valor a b, se le asignará 0
int sumarOpcional (int a ,[int b = 0] ){
  //Si b es nulo, se le asigna el valor de 0
  b = b ?? 0;
  //b ??= 0;
  return a + b;
}

//Parametros con nombre, el orden no importa, pero si no se le asigna un valor a a o b, se le asignará 0
// El required indica que tenemos que solo para a y b puede ser opcional
int sumasConNombres ({required int? a, int? b}){
  a ??= 0;
  b ??= 0;
  return a + b;
}