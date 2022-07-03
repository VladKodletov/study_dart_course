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
  int cl =
      al + 5 * ++bl; //48 => вначале ++bl(увеличит знач перем bl и возвратит
  /// его в кач результата), затем умн 5 * ++bl, и только потом сложение с al
  /// Для переопределения порядка вычислений добавляем скобки
  // int cl = (al + 5) * ++b => 104
  int aa = 4;
  int bb = 5;
  int cc = aa + 5 * bb++;
  print(bb); //6
  print(
      cc); //29   Сначала выполняется b++, которое увеличивает знач bb на 1(то есть
  ///теперь оно 6), но возвр знач перем до увеличения (то есть 5). Далее 5*5
  /// и 4 + 5*5 = 29

  int az = 4;
  int bz = 4;

  int cz = ++az * 5 + az;
  int dz = bz + 5 * ++bz;

  print('cz + $cz'); //30
  print(
      'dz + $dz'); //29 //не оч понял почему? потому что bz стоит вначале строки?

  ///Побитовые операции и операции сдвига
  ///Выполняются над отдельными разрядами или битами числа. Каждое число имеет
  ///двоичное представление 4 это 100(три цифры-три разряда), 5 это 101(три разряда)
  ///Логические операции
  /// & -(логическое умножение), производится поразрядно(первое с первым и тд)
  /// | -(лог сложение), тоже поразрядно, но теперь возвращается единица если хотя бы
  /// у одного числа в разряде есть 1(операция "логическое ИЛИ")
  /// ^ -(лог исключающее ИЛИ), также XOR. Тоже поразрядно. Если знач разные, то
  /// возвр единица, иначе 0
  /// ~ - (логическое отрицание) - поразрядная операция, которая инвертирует
  /// все разряды числа: если знач разряда 1, то оно становится равным нулю и наоборот
  /// Операции сдвига <<(влево) и >>(вправо).
  /// a<<b(сдвигает число а влево на b разрядов) и наоборот.
  /// Подробнее по ссылке снизу(не сказать что сразу все понял)
  ///https://metanit.com/dart/tutorial/2.5.php

  ///Условные выражения.
  ///Представляют некоторое условие и возвр значение типа bool(либо true либо
  ///false). К ним относятся: операции сравнения и логические операции.
  ///Операции сравнения
  ///Сравниваются два операнда и возвращ знач типа bool.
  ///== (сравнивает на Равенство и возвр true если равны и наоборот)
  ///!= (на неравенство, true если Не равны и наоборот)
  ///< (меньше чем) и > (больше чем)
  ///аналог пред >= b <=

  ///Логические операции
  ///В Dart операции которые представляют условие и возвращают true or false и
  ///обычно объединяют несколько операций сравнения
  /// | (c = a|b; - c равно true если либо а либо b либо и a и b равны true иначе c = false)
  /// & (c = a&b; - c true если и а и b true)
  /// ! (c!=b; c true если b равно false и наоб)
  /// ^ (c = a^b; c true если либо a либо b(но не одноврем) true и наоб)
  /// || (с = a||b; аналог с одной |, но сначала будет вычисляться значение а, и
  /// если оно равно true вычисление b не имеет смысла и вычисл не будет)
  /// && (аналог с одной & и согласно верхнему)
  /// Последние два более удобны чем с одним знаком, так как позволяют сократить
  /// время вычисления и повысить производительность.

  /// Операции приссваивания
  /// = приравнивает одно знач другому
  /// += (с+=b; перем с присваивается результат сложения c и b)
  /// -= (c-=b; присв рез вычитания)
  /// *= и /= (присв рез умножения и рез деления)
  /// ~/= (присв рез целочисленного деления)
  /// %= (с%=b; с присваивается остаток от деления с на b)
  /// &=, |=, ^=, <<=, >>=, (с?=b; перем присв значение c&b и по аналогии другие)
  /// ??= (c ??= b; если перем с имеет знач null, то ей присваивается знач
  /// переменной b, если c не равна null,то она созраняет свое значение)
  /// Приоритет операций в таблице https://metanit.com/dart/tutorial/2.7.php

  ///Циклы
  ///Позволяют в зависим от опред условий выполнять опред действие много раз
  ///Виды циклов в Dart: for; while; do...while
  ///Цикл for - имеет след структуру =>
  /*for ([инициализация счетчика]; [условие]; [изменение счетчика])
  {
    // действия
  }*/
  ///Указывать все условия необязательно
  /*int i = 1;
  for (; ;){
    print("Квадрат числа $i равен ${i *i} \n");
  }*/ //условий нет, тк поля пустые, поэтому цикл будет работать вечно
  ///Еще можно опустить ряд блоков
  /*int i = 1;
  for (; i<9;){
    print("Квадрат числа $i равен ${i *i} \n");
    i++;
  }*/ // счетчик и приращение счетчика разбросаны по разным местам

  ///Цикл do
  ///Сначала выполняет код цикла, а потом проверяет условие в инструкции while
  ///И пока это условие истинно, цикл повторяется.
  int j = 9;
  do {
    print(j);
    j--;
  } while (j > 11); //цикл сработает 7 раз
  ///!Важно знать, что цикл do гарантирует Однократное выполнение действий, даже
  ///если условие в инструкции while не будет истинно.

  ///Цикл while
  ///В отличие от цикла do сразу проверяет истинность некоторого условия, и если
  ///условие истинно то код цикла выполняется
  int jk = 6;
  while (jk > 2) {
    print(jk);
    jk--;
  }

  ///Операторы continue и break
  ///break - позволяет выйти из цикла в любой момент
/*for (int i = 0; i < 10; i++){
    if (i == 5)
        break;
    print(i);
}*/ //когда счетчик станет равным пяти цикл завершится
  ///continue - не завершает и выходит из цикла, а просто пропускает эту итерацию
  ///и переходит к следующей
  for (int iq = 0; iq <= 9; iq++) {
    print(
        "Квадрат числа $iq равен ${iq * iq} \n"); // заметка \n для пропуска строки?!
  }

  ///Функциональное программирование
  ///Функции - некоторые действия. Можем оформить набор операторов в виде одной функции
  ///и многократно вызывать ее в программе. Формальное определение:
/* [тип] имя_функции(параметры){
 
    выполняемые_выражения
    }*/
  ///Вначале возвращаемый тип функции. Если функция не возвращает никакого значения
  ///используется тип void
  ///Затем идет имя функции - произвольное название, именование как у перем
  ///После имени в скобках - перечисление параметров. Если не имеет параметров, то
  ///указываются пустые скобки.
  ///Далее в {} скобках - тело функции, содерж выполняемые выражения
/* void main() {
}
void hello(){
 
    print("Hello!");
}*/
  ///Функция hello не возвращает никакого рез, а просто вып действия, поэтому тип void
  ///Но выполняться она не будет, по умолчанию среда выполняет только фун main,
  ///поэтому чтобы вып функ hello, ее надо вызвать в фии main:
  /* void main() {
     
    hello();
    hello();
  }
  void hello(){
 
    print("Hello!");
  } */
  ///Аргументы - знач для параметров фии.
  ///Если фия из одного выражения =>
  ///[тип] имя_функции(параметры) => выполняемое_выражение
  ///прим void hello() => print("Hello!"); из функции выше

  ///Параметры функции
  ///Перечисл в скобках после имени фии и имеет определение
  ///(тип название_параметра)
  /*void main() {
     
    sum(2, 5);  // 7
  }
  void sum(int a, int b){
    int c = a + b;
    print(c);
  } */
  /// функция sum принимает 2 параметра, с именами a и b и типами int.
  /// В main вызываем функцию sum и передаем ей два аргумента.
  /// Аргум - значения для параметров функции(перед по позиции, т.е. первый
  /// первом и тд)
  /// Колич передаваемых арг должно соответств кол-ву параметров
  /// При опред функции можем не указывать тип параметров, тогда Dart сам выводит их

  void showPerson(name, age) {
    print("Name: $name");
    print("Age: $age \n");
  }

  showPerson("Tom", 35);
  showPerson(29, "Alice");

  ///Необязательные параметры
  ///Ряд парам мы можем сделать необяз - не передав для них никаких знач.
  ///Для этого параметр заключ в [], но при этом ему нужно предоставить знач по
  ///умолчанию, которое будет использоваться если не передано никакое знач.
  ///Но если необязат параметр представляет nullable-тип, тогда можно не указ
  ///для него знач по умолчанию - в этом случае по умолч будет null

  ///Именованные параметры
  ///Dart поддерживает передачу параметров по имени
  /* 
  void main() {
     
    showPerson(name: "Tom", age: 35);
    showPerson(age: 29, name: "Alice");
    showPerson(name: "Kate");
  }
  void showPerson({String name = "undefined", int age=0}){
    print("Name: $name");
    print("Age: $age \n");
  }*/
  ///При опред функции список параметров в {}, при этом для каждого параметра, если
  ///его тип не поддерживает знач null нужно указать знач по умолч.
  ///При вызове функции указ имя параметра и через двоеточие его знач, при этом
  ///параметры можем указывать в любой последовательности.

  ///Конастанты в функциях
  ///Парам позволяют передать знач локальным переменным, которые определены в
  ///функциях. Но также можно передавать через параметры знач локальным
  ///final-константам, поскольку они определяются во время выполнения.
  ///При это const-константам такое делать нельзя, так как их знач должны быть
  ///известны уже во время компиляции.
  ///Таким образом при разных вызовах функции мы можем передать final-константам
  ///разные значения:
  void showPerson2(String userName, int userAge) {
    // const int initialAge = userAge; - так нельзя, константа должна определяться на этапе компиляции
    final String name5 = userName;
    final int age5 = userAge;
    print("Name: $name5   Age: $age5 \n");
  }

  showPerson2("Tom", 35);
  showPerson2("Alice", 22);

  ///Возвращение результата из функции
  ///Ф-ия может возвр опред знач.
  ///Для этого использ оператор return
  int sum33(int a33, int b33) {
    return a33 + b33;
  }

  /// Возвращаемый тип ставится перед именем функции.
  /// После return - какое именно значение будет возвращено(тут a+b).Причем тип
  /// значения здесь должен соответствовать типу функции.
  /// Кроме того return Завершает выпол функции, поэтому все остальные инстр в функции
  /// должны идти до оператора return.
  /// Результат функции можем присвоить переменной:
  /* void main() {
    int c = sum(2, 5);
    print(c);   // 7
  }
  int sum(int a, int b){
    return a + b;
  } */
  ///Вовзращаемый тип можем не указ. Он выведется исходя из знач после return
  ///Если функция не имеет оператора return - то в тело функции неявно добавляется
  ///инструкция return null

  ///Если функция не должна возвращать никакого знач, то она имеет тип void
  ///Причем мы может определить переменную типа void, присвоить ей результат, но
  ///ничего сделать с void-объектом не сможем:
  /* 
  void main() {
     
    void n = hello();
    // поскольку переменная n представляет тип void, 
    // ничего мы с ней не сможем сделать, даже вывести на консоль
    // print(n);
  }
 
  void hello(){
    print("Hello!");
    return null;
  }
  */

  ///Функция как объект
  ///Любая функция в Dart представляет тип Function и факт может выступать в качестве
  ///отдел объекта(ведь дарт язык ООП)
  ///Фунцкии могут выступать в качестве параметров других функций
  ///Также функция может выступ в кач вовзращаемого значения

  ///Анонимные функции
  ///Похожи на обычные, но Не имеют названия
/* void main() {
     
    Function operation = (a, b) => a + b;
    print(operation(4, 5));
}*/ //Перем operation присв ссылка на аноним ф-ию (a, b) => a + b; которая приним
  ///два параметра и возвращает сумму их знач.
  ///Где использовать? Если мы вызываем функции, которая принимает другую функцию,
  ///то для функции-параметра проще использовать анонимную.

  ///Вложенные функции
  ///В Dart функции могут быть вложенными в другие, но определение вложенной функции
  ///должно идти до ее вызова. Вложенные имеют смысл, если мы планируем использовать
  ///повтор действия только внутри опред функции
  ///Причем вложенные функции сами могут содерж другие влож ф-ии
  ///! Вложенные ф-ии создают собственный контекст - переменные и константы, к
  ///которым внешняя функция обратиться не может

  ///Замыкания
  ///Представляют объект ф-ии, который запоминает свое лексич окружение даже когда
  ///она выполняется вне своей области видим.
  ///Технически замыкание включ 3 компонента:
  ///1)внешняя ф-ия, опред некую область видимости и в которой определены перемен
  ///и параметры - лексич окружение
  ///2)перем и парам(лексич окружение), которые опред во внешней ф-ии
  ///3)вложенная ф-ия, которая использует перем и парам внешней функции

  ///Объектно-ориентированное программирование
  ///Классы и объекты
  ///Каждое значение, которым мы манипулируем в программе на Dart, является объектом
  ///Объект - экземпляр некоторого класса, а класс - шаблон или описание объекта.
  ///Класс определяется с помощью ключевого слова class
/* class Person{
 
    }  */
  ///Здесь опред класс Person. После названия - фиг скобки, между которыми тело
  ///класса - его поля и методы.
  ///Любой объект может обладать 2 основными характеристиками:
  ///1)состояние - данные, которые хранит объект
  ///2)поведение - действия, которые может совершать объект
  ///Для хранения 1) применяются поля и переменные класса
  ///Для определения 2) применяются методы.

  ///Конструкторы
  ///Кроме обычных методов классы могут опред спец методы - конструкторы.
  ///Констр вызываются при создании нового объекта данного класса. Они выполняют
  ///инициализацию объекта.
  ///Если в классе не определено ни одного констр, для автомат создается констр
  ///без параметров.
  ///Для создания объекта Person используется выражение Person(). Более старые
  ///версии Dart для вызова конструктора также использовали оператор
  ///new: Person tom = new Person();. Но в последних версиях Dart оператор new
  ///можно не использовать.
  ///После создания объекта мы можем обратиться к переменным и методам объекта
  /// через переменную. Для этого используется оператор точка (.) - то
  ///есть через точку указываем название поля или метода.

  ///null и классы
  ///Как и все встроенные типы, классы по умолчанию представляет тип, не допускающий
  ///значение null.
  ///Если же необходимо, чтобы объект класса мог хранить null добавляем к определению
  ///типа оператор ?
  ///?. (оператор проверяет знач переменной, если она не равна null, то происходит
  ///обращение к ее полям и методам, если равна, то обращение к переменной
  ///игноирруется)

  ///Именованные конструкторы
  ///По умолч - можем определить только один общий констр. Если же нам необходимо
  ///использовать в классе несколько констр - нужно прим именованные констр(name
  ///constructors)

  ///Ключевое слово this
  ///Представляет ссылку на текущий экземпляр класса. Через это ключевое слово мы
  ///можем обр к перем, методам объекта и вызывать его констр.
  ///В конструкторе параметры называются так же, как и поля класса.
  ///И чтобы разграничить поля и параметры, применяется ключевое слово this

  ///Инициализаторы - способ инициализации полей класса.
  ///Список инициализации указывает после параметров конструктора через
  ///двоеточие до открывающей фигурной скобки
  ///Стоит учитывать, что при использовании инициализаторов сначала выполняется
  ///инициализация полей в списках инициализации и только затем выполняется логика
  ///в конструкторе
/* Person(userName, userAge) : name=userName, age = userAge + 10 {
    age = 8;
}
*/ //Значение поля age будет равно восьми, тк констр перезапишет знач инициализатора

  ///Каскадная нотация
  ///.. - позволяет выполнить последовательность операций над одним объектом
/* 
void main (){
     
    Person tom = Person()
        ..name = "Tom"
        ..age = 36
        ..display();    // Name: Tom  Age: 36
} 
*/ //запись по значению аналогична записи ниже
/* 
void main (){
     
    Person tom = Person();
    tom.name = "Tom"
    tom.age = 36
    tom.display();  // Name: Tom  Age: 36
} 
*/

  ///Константы и константные конструкторы классов
  ///Кроме обычных полей-переменных классы могут определять константы.
  ///Для определения констант можно использовать ключевое слово final
  ///Значения констант классов должны быть установлены до вызова конструктора
  ///Либо установка константы возможна через параметры конструктора
/*
class Person{
 
    String name = "";
    int age = 1;
    final minAge;
     
    Person(this.minAge, n, a){
     
        this.name = n;
        this.age = a;
    }
}
*/
  ///Третим вариантом является установка значений констант с помощью инициализатора
  ///   Person(mAge, name, age): minAge= mAge + 1{  -знач могут быть динамич вычесляемыми

  ///Константные конструкторы
  ///Призваны создавать объекты, которые не должны изменяться.
  ///Предваряются ключевым словом const
  ///Класс, который определяет подобный конструктор, не должен содержать переменных -
  ///только определять константы.
  ///Такие конструкторы не имеют тела.
/*
void main (){
     
    Person tom = const Person("Tom", 23); //При вызове константного конструктора 
                                перед его вызовом ставится ключевое слово const(? возможно уже не нужно)
    print(tom.name);     // Tom
} 
 
class Person{
 
    final String name;
    final int age;
     
    // константный конструкор
    const Person(this.name, this.age);
}
*/

  ///Наследование
  ///Является одним из ключевых моментов ООП
  ///Позволяет передавать одним классам функционал других
  ///В Dart реализуется с помощью ключевого слова extends(как в Java)
/*
void main (){
    Employee bob = Employee();
    bob.name = "Bob";
    bob.display();
} 
class Person{
  
    String name = "";
      
    void display(){
        print("Name: $name");
    }
}
class Employee extends Person{
}
*/
  ///Класс Employee - подкласс, наследуется от класса Person, последний называется
  ///родительским или базовым классом.
  ///При наследовании Employee перенимает весь функционал класса Person-все его
  ///поля и методы и может их использовать.
  ///Кроме того можно определить в подклассе новые поля, которых нет в род классе.

  ///Конструкторы и ключевое слово super
  ///В отличие от полей и методов конструкторы базового класса не наследуются
  ///Если базовый класс явным образом(не по умолчанию)определяет конструктор, то
  ///его необходимо вызвать в классе наследнике при опред конструктора
  ///super - ключевое слово для обращения к функциональности базового класса из производного

  ///Переопределение методов
  ///Производные классы могут определять свои поля и методы, но также могут
  ///переопределять, т.е. изменять поведение методов базового класса
  ///Для этого нужна спец аннотация - @override

  ///Абстрактные классы и методы
  ///Классы с ключевым словом abstract
/*
abstract class Figure {
}
*/
  ///Похожи на обычные, но Не могут напрямую создать объект абстр класса используя
  ///его конструктор
  //   из пр выше Figure ellipse = Figure(); // нельзя - класс Figure - абстр.
///Как правило описывают сущности, которые в реальности не имеют конкретного воплощения.
///Напр, геометр фигуры может представлять круг, квадрат, треуг, но как таковой
///геом фигуры самой по себе не существует. Есть конкретные фигуры. Но все они
///могут иметь какой-то общий функционал, напр методы вычисления периметры, площади
/*
void main (){  
    Figure rect = Rectangle(20, 30);
    rect.calculateArea();
} 
abstract class Figure {
    void calculateArea(){
        print("Not Implemented");
    }
}
class Rectangle extends Figure{      
    int width;
    int height;
    Rectangle(this.width, this.height);     
    void calculateArea(){
        int area = width * height;
        print("area = $area");
    }
}
*/
///Здесь абстрактный класс геометрической фигуры определяет метод 
///calculateArea(), который выводит на консоль площадь фигуры. Класс 
///прямоугольника определяет свою реализацию для этого метода.

///Абстрактные методы
///В п выше метод calculateArea в базовом классе Figure не выполняет полезной работы,
///тк у абстр фигуры не может быть площади
///В этом случае метод лучше определить как абстрактный
///Абстрактный метод определяется также, как и обычный, только вместо тела 
///метода после списка параметров идет точка с запятой: void calculateArea();
///! Важно, что абстр методы могут быть определены только в абстр классах
///Также если базовый класс определяет абстрактный метод, то класс наследник
///обязательно должен его реализовать, то есть определить тело метода

}
