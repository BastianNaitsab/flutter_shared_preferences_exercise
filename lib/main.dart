import 'package:flutter/material.dart';
import 'package:flutter_shared_preferences_exercise/shared_preferences_service.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final SharedPreferencesService _sharedPreferencesService =
      SharedPreferencesService();

  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  // Este metodo se llamara en el initState para cargar los datos
  void _cargarPreferencias() async {
    // Aqui se carga desde _sharedPreferencesService con la clave "counter"
    _counter = await _sharedPreferencesService.getInt("counter");
    setState(() {});
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _cargarPreferencias();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _incrementCounter();

          // Aqui se guarda en _sharedPreferencesService con la clave "counter"
          _sharedPreferencesService.saveInt("counter", _counter);
        },
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
