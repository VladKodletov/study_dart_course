void main() {
  ///слово void(пустота) вначале функции - указывает что она не возвращает значения
  ///а просто выполняет действия.
  ///main -имя функции, пустые скобки - значит ф-ия не принимает параметров.
  ///но можем использовать форму main которая принимает параметры и передать
  ///функции данные извне при запуске программы
  ///После пустых скобок идет блок функции в виде фиг скобок {внутри которых
  ///помещаем набор выполн инструкций(действий, которые выполняет прогр)}

  ///Инструкции(statement) - основной строй блок в программе на Dart. Каждая инстр
  ///выполняет некот действие - вызов методов, объявление перем. и присв. им знач.
  ///После завершения инструкции в Dart ставится ; Этот знак указывает на конец инстр.
  print('Hello Dart');

  ///Кроме отдельных инструкций распространенной конструкцией является блок кода.
  ///Блок кода - набор инструкций, закл в фиг скобки
  ///функция main по сути тоже блок кода, но внутри может содержать и другие БК

  ///Переменные и константы
  ///Имя переменной - может содержать алфавит цифровые символы и символ подчеркивания, но
  ///!не должно совпадать с одним из ключ слов языка
  const a = 5;
  const int b = 6;
  final int c = 8;
  final d = 9;
  print(
      "a:$a b:$b c:$c d:$d"); //применяется интерполяция, которая после симфола
  //$ позволяет указать имя переменной значение которой будет выводиться.

  ///Примитивные типы данных
  ///Логический тип bool
  ///Числовой - int double
  ///Строковый - String Runes
  ///Symbol

  ///int-занимает не более 64 бит в завис от платформы(Dart VM -2 в 63 степени до
  ///2 в 63 ст -1). Dart компилирующийся в JS использует знач -2 в 53 степ до
  ///2 в 53 ст -1

  ///double - числа с плав точкой, занимают 64 бита. Можно присвоить целочисл.
  ///значение, тогда преобразуется в дробное с 0 после точки.

  ///String - UTF-16. Если нужно определить многострочную строку закл в '''
  ///здесь несколько строк''';
  ///!Интерполяция - ввод в строку значения других переменных.
  ///Для ввода - в строку перед переменной ставится знак доллара $($name, $age), в
  ///итоге вместо $name вставится значение переменной name.
  ///
  ///Runes - в UTF-32 или Unicode. Используется спец синтаксис. Для определения
  ///значения типа Runes используется конструктор данного типа=>
  Runes input = Runes('\u041F\u0440\u0438\u0432\u0435\u0442');

  ///Для получение текста - применяется метод String.fromCharCodes
  print(String.fromCharCodes(input));

  ///Symbol - наименее используемый тип. Представляет симфолы. Применяется для
  ///ссылки на элементы API, например библиотеки и классы. Для определения объекта
  ///этого типа применяется симфол # перед значением

  ///!!! null, nullable-типы и null-безопасность

  ///null - спец константа, которая говорит, что у переменной или константы по
  ///сути отсутствует значение. Однако при использовании этой константы надо учитывать
  ///что с версии 2.12 в Dart по умолчанию применяется null-безопасность(другими
  ///словами null-safety).
  /*String name5;
    print(name5); // выдает ошибку, так как мы используем переменную до присвоения ей значения
    name5 = "Tom";
    print(name5);*/
  ///!По умолчанию - все типы данных расцениваются как типы, которые не допускают
  ///значение null, поэтому мы обязательно должны присваивать их переменным и константам
  ///значение перед использованием.

  ///Оператор ? и nullable-типы
  ///Но в некот случаях нужно чтобы перем или конст не имела никакого значения(
  ///то есть могла принимать значение null).
  ///Для этого можем использовать nullable-типы
  ///По сути это это двойники обычных типов, но которые могут принимать значение
  ///null. Чтобы отметить тип как nullable(допускающий значение null) после
  ///названия типа ставится оператор ?
  String? name;
  print(name);
  name = "Tom";
  print(name);

  ///Можно даже явным образом присваивать таким переменным значение null
  String? name3 = "Tom";
  print(name3);
  name3 = null;
  print(name3);

  //Оператор ??
  /// Этот оп-р при присвоении переменной выполнит проверку на null.
  ///value1 ?? value2
  ///Здесь если value1 не равно null, то оператор вернет именно это значение value1.
  ///Если же это значение равно null, то оператор ?? возвращает value2.
  int? num1 = 23;
  int num2 = num1 ?? 0;
  print(num2); // 23

  num1 = null;
  num2 = num1 ?? 0;
  print(num2); // 0
  ///При первом присвоении переменная num2 получит значение переменной num1
  ///(число 23), так как num1 не равна null. При втором присвоении num2
  ///получит значение 0, так как num1 равна null.

  ///Оператор !
  ///В некоторых ситуациях переменная можеть быть определена как nullable-типа,
  ///но могут быть исключены случаи что данная переменная будет хранить null.
  ///Если мы точно в этом уверены, то мы можем принимать оператор !.
  /* int? a = 23;
    int b = a!; // мы уверены, что a не равна null
    print(b);       // 23*/
  ///Но лучше не злоупотреблять этим

  ///Арифметические операции
  ///Делятся на бинарные(производятся над двумя операндами) и унарные(выполняются
  ///над одним операндом)
  ///Бинарные:
  ///+ - сложение; - вычитание; * - умножение; / - деление(стоит учитывать, что
  ///результат операции всегда тип double);
  ///~/ операция целочисленного деления двух чисел(результат - всегда int)
  int ab = 33;
  int bc = 5;
  int cd = ab ~/ bc; //6
  int de = 22 ~/ 4; //5
  ///% получение остатка от деления двух чисел
  int af = 33;
  int bf = 5;
  int cf = af % bf; //3
  int df = 22 % 4; //5
  ///Далее унарные(над одним числом) - инкремент ++ и декремент --
  ///++ префиксный инкремент - z = ++y(вначале знач. переменной y увеличивается на
  ///1, а затем ее значение присваивается переменной z)
  int ag = 8;
  int bg = ++ag;
  print(ag); //9
  print(bg); //9
  ///++ постфиксный инкремент - z = y++(вначале знач переменной y
  ///присваивается перем z, а потом значение у увеличивается на 1)
  int ak = 8;
  int bk = ak++;

  print(ak); //9
  print(bk); //8
  ///--(префиксный и постфиксный декремент) - аналогично инкременту
  /// Приоритет арифм операций
  /// Операции в порядке уменьшения приоритета:
  /// ++(постфиксный инкремент), --(постфик декр)
  /// ++ (преф инкрем), -- (преф декрем)
  /// * (умн), / (деление), % (остаток от деления)
  /// + (сложение), - (вычитание)
  int al = 8;
  int bl = 7;
  int cl = al + 5 * ++bl; //48 => вначале ++bl(увеличит знач перем bl и возвратит
  /// его в кач результата), затем умн 5 * ++bl, и только потом сложение с al
  /// Для переопределения порядка вычислений добавляем скобки
  // int cl = (al + 5) * ++b => 104
  int aa = 4;
    int bb = 5;
    int cc = aa + 5 * bb++;   
    print(bb); //6
    print(cc); //29   Сначала выполняется b++, которое увеличивает знач bb на 1(то есть
    ///теперь оно 6), но возвр знач перем до увеличения (то есть 5). Далее 5*5
    /// и 4 + 5*5 = 29

    int az = 4;
    int bz = 4;
     
    int cz = ++az * 5 + az; 
    int dz = bz + 5 * ++bz; 
     
    print('cz + $cz'); //30
    print('dz + $dz'); //29 //не оч понял почему? потому что bz стоит вначале строки?

  ///Побитовые операции и операции сдвига
  ///


}
