class Person {
  final name = 'Alex';
  // const age = 20; // будет ошибка, чтобы исправить - static const
}

void main() {
  print('Hi фай!');
  //int myAge; //будет ошибка, так как переменной не присвоено значение
  //и оно определяется как null
  //print(myAge);
  const pi = 3.14;
  final name = 'Vlad';
  //типы переменных
  double myWeight = 84.5;
  print(myWeight.runtimeType); //runtimeType-выводит тип данных переменной

  bool isChildren = true;
  print(isChildren.runtimeType);

  String myName =
      'Vlad'; //можем использовать как одинарные так и двойные кавычки
  //Единственный тип данных, который с заглавной буквы
  String mySurname = "Kodletov";
  //String name = 'What's your name?'; //компилятор не знает что делать с запятой
  //экранируем ее \ =>
  String name2 = 'What\'s your name?';
  print(name2);
  String fio = ''' 
    Kod
    Le
    Tov
  '''; //на несколько строк если - то тройные кавычки
  print(fio);
  //String person_info =
  // "Name: $myName Weight: $myWeight"; //для ввода значений переменных в строку перед переменной ставится $
  String personInfo =
      "Name: ${myName.toUpperCase()} Weight: $myWeight"; //в фигурные скобки и точка после чего метод изменить на заглавные буквы
  print(personInfo);

  Runes hello = Runes('\u041F\u0438\u0442');
  print(hello);
  print(String.fromCharCodes(hello));

  Symbol s = #f; // представляет просто символ ф

  var message = 'Some text';
  //message = 4;  //выдаст ошибку, так как тип был определен var как стринг и
  //менять его нельзя, для замены использовать dynamic
  print(message.runtimeType);
  dynamic message2 = 'Some text';
  print(message2.runtimeType);
  message2 = 4;
  print(message2.runtimeType);
  // другими словами - dynamic как бы отключает некую статическую проверку типов
}
