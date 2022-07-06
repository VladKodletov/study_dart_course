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

//условные конструкции (Управление потоком(Control Flow)?)
// 1) if else
  var grade = 5;
  if (grade == 5) {
    print('Good work, buddy!');
  } else {
    print('Not good!');
  }
// 2) if else if
  var marksStudy = 80;
  if (marksStudy >= 90 && marksStudy < 100) {
    print('A+ grade');
  } else if (marksStudy >= 80 && marksStudy < 90) {
    print('B grade');
  } else if (marksStudy >= 70 && marksStudy < 80) {
  } else {
    print('Invalid marks! Please try again!');
  }

// ? :  условный оператор (возвращает одно из двух значений в зависимости от
//того чему равно условие true или false)

/*int x = 1;
  int y = 2;
  if (x < y); {
    print(x+y);
  } else {
    print(x-y);
  }
  код можно сократить в тот что ниже
*/
  int x = 1;
  int y = 2;
  int z = x < y ? (x + y) : (x - y);
  print(z);

//конструкция switch / case, эти ключевые слова позволяют сравнивать
//выражения с несколькими значениями
  String grades = 'B';

  switch (grades) {
    //в скобках значение сравниваемого выражения
    case 'A': //сравниваться будет со значениями после оператора case
      print('Excellent grade of A!');
      break;
    case 'B':
      print('Excellent grade of B');
      break;
    default: //блок для всех остальных вариантов что не перечислили в case
      print('Fail');
  }

  // цикл do while
  int counter = 0;
  do {
    print('Считай до десяти, бездушная машина! $counter');
    counter++;
  } while (counter <= -1); // ! цикл do гарантирует однократное выполнение
  //даже если условие не выполняется
  //можем выйти из цикла при помощи оператора break
  int counter2 = 0;
  do {
    print('Считай до десяти, бездушная машина! $counter2');
    counter2++;
    if (counter2 == 4) {
      break;
    }
  } while (counter2 <= 10);
  //continue - цикл пропускает итерацию и переходит к следующей
  int counter3 = 0;
  do {
    counter3++;
    if (counter3 == 4) {
      continue;
    }
    print('Считай до десяти, бездушная машина! $counter3');
  } while (counter3 <= 10);

//цикл while
  int counter4 = 0;
  while (counter4 < 10) {
    print('Считай до десяти, бездушная машина! $counter4');
    counter4++;
  }

// цикл for
  for (int i = 0; i < 10; i++) {
    if (i % 2 == 0) {
      //это проверка четности - если у i остаток от деления на два(% 2 == 0) равен нулю
      print('Hello Dart $i');
    }
  }
//дз 1
/*Напишите программу, которая выводит на экран числа от 1 до 100. 
При этом вместо чисел, кратных трем, программа должна выводить слово «Super», 
а вместо чисел, кратных пяти — слово «Quiz». Если число кратно и 3, и 5, 
то программа должна выводить слово «Super Quiz»
*/
  for (int homework = 1; homework <= 100; homework++) {
    if (homework % 15 == 0) {
      print('Super Quiz');
    } else if (homework % 5 == 0) {
      print('Quiz');
    } else if (homework % 3 == 0) {
      print('Super');
    } else {
      print('$homework');
    }
  }

//дз 2

}
