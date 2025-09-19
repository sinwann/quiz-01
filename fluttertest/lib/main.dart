import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
  // 1.Comments

  // This is my first class of flutter
  /* This is multiple line comments structure
  that how we write multiple comments
   */
  // 2. void main

  runApp(MyApp());

  // 3.Variables
  String bookTitle0 ;// undeclared variables
  String bookTitle = 'Beginning Flutter';  // declared variable

  // 4. Declaring Variables

  var filter0 = 'company'; // Declared without specifying the type
  String filter1 = 'company'; //Declared variable by type
  String filter2; // Uninitialized variable has an initial value of null
  final filter3; //Value will not change
  // or
  final String filter4 = 'company';
  // or
  const String filter5 = 'company';
  // or
  // const String filter6 = 'company' + filterOption;


  String userName = 'Shezi';// Public variable (variable name starts without underscore)

  String _userID = 'XW904';// Private variable (variable name starts with underscore)

  // 5. Integer
  int counter = 0;
  double price = 0.0;
  price = 125.00;

  // 6. Strings

  String defaultMenu = 'main';
  String combinedName = 'main' + ' ' + 'function';// String concatenation
  String combinedNameNoPlusSign = 'main' ' ' 'function';

// String multi-line
  String multilineAddress = '''
 Pakistan Any Street
 Rawalpindi, punjab, 4987
''';

  // 7.Booleans
  bool isDone = false;
  isDone = true;
  // 8. Lists

  // List Growable
  //List contacts = List(); // old way new dart language does not recoginze it
// or
  List contacts1 = [];
  List contacts2 = ['Linda', 'John', 'Mary'];

  List contact3 = [25];// List fixed-length

  List listOfFilters = ['company', 'city', 'state']; // Lists - In Dart List is an array
  listOfFilters.forEach((filter) {
    print('filter: $filter');
  });

// Result from print statement
//filter: company
//filter: city
// filter: state

// 9.Maps

// Maps - An object that associates keys and values.
// Key: Value - 'KeyValue': 'Value'
  Map mapOfFilters = {'53531': 'Media Mars', '54915': 'Pakistan', '57375': 'Punjab'};

// Change the value of third item with Key of id3
  mapOfFilters['id3'] = 'my filter';
  print('Get filter with id3: ${mapOfFilters['id3']}');
// Result from print statement
// Get filter with id3: my filter


  // 10. Runes

// Emoji smiling angel Unicode is u+1f607
// Remove the Plus sign and replace with curly brackets
  Runes myEmoji = Runes('\u{1f607}');
  print(myEmoji);
// Result from print statement
// (128519)

  void main() {
    bool isClosed = false;
    bool isOpen = true;
    bool isOutOfStock = false;

    if (isClosed) {
      print('Store is closed');
    } else if (isOpen) {
      print('Store is open');
    } else if (isOutOfStock) {
      print('Item is out of stock');
    } else {
      print('Nothing matched');
    }
  }





class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a purple toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // TRY THIS: Try changing the color here to a specific color (to
        // Colors.amber, perhaps?) and trigger a hot reload to see the AppBar
        // change color while the other colors stay the same.
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          // Column is also a layout widget. It takes a list of children and
          // arranges them vertically. By default, it sizes itself to fit its
          // children horizontally, and tries to be as tall as its parent.
          //
          // Column has various properties to control how it sizes itself and
          // how it positions its children. Here we use mainAxisAlignment to
          // center the children vertically; the main axis here is the vertical
          // axis because Columns are vertical (the cross axis would be
          // horizontal).
          //
          // TRY THIS: Invoke "debug painting" (choose the "Toggle Debug Paint"
          // action in the IDE, or press "p" in the console), to see the
          // wireframe for each widget.
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text('You have pushed the button this many times:'),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
