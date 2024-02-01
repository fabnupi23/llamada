import 'package:llamada/llamada.dart' as llamada;

void main() {
  printMessage(getDay);
  printMessage(getName);

  //Defino una variable inmutable
  //final fn = printMessage;
  //fn(); //Invocamos a la función
}

void printMessage(String Function() callback) {
  //se define un parametro que sera una funcion; en este caso voy a  decir que la funcion que yo quiero recibir como parámetro retornará un dato de tipo String
  print(callback());
}

//definimos dos funciones que van a retornar un String

//Esta primera función lo que va a hacer es retornar el día de la semana como un  string
String getDay() => DateTime.now().weekday.toString();

//Esta segunda función me retorna un nombre
String getName() => 'Fabian';
