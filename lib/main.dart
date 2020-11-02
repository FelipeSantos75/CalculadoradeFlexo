import 'package:CalculadoradeFlexo/CalculadoraFlexo.dart';
import 'package:CalculadoradeFlexo/formularios.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: Color(0xff06243c),
        // This makes the visual density adapt to the platform that you run
        // the app on. For desktop platforms, the controls will be smaller and
        // closer together (more dense) than on mobile platforms.
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'RFlex Calculator'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  void _incrementCounter() {
    setState(() {});
  }

  final controllerQuantidade = TextEditingController();
  final controllerColunas = TextEditingController();
  final controllerMetros = TextEditingController();
  var calc = CalculadoraFlexo();
  String resultado = '';
  @override
  Widget build(BuildContext context) {
    var container = Container(
      decoration: BoxDecoration(
          border: Border.all(width: 8, color: Colors.white),
          borderRadius: BorderRadius.circular(40)),
      child: FloatingActionButton(
        backgroundColor: Color(0xffdfab39),
        onPressed: () {
          var resultado = (calc
              .metrosaimprimir(
                  int.parse(controllerColunas.text),
                  int.parse(controllerQuantidade.text),
                  double.parse(controllerMetros.text))
              .toStringAsFixed(2));
          return showDialog(
              context: context,
              builder: (context) {
                return AlertDialog(
                  content: Text('Deve imprimir até $resultado metros lineares'),
                );
              });
        },
        tooltip: '',
        child: Icon(
          Icons.drag_handle,
          color: Colors.white,
          size: 50,
        ),
      ),
    );
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Container(
            child: Text(
              widget.title,
              style: TextStyle(
                color: Colors.white,
                fontSize: 22,
              ),
            ),
          ),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Column(
              children: [
                Formulario(
                  'Quantidade de  Caixas',
                  TextInputType.number,
                  controllerQuantidade,
                ),
                Formulario(
                  'Metros',
                  TextInputType.number,
                  controllerMetros,
                ),
                Formulario(
                  'Colunas',
                  TextInputType.number,
                  controllerColunas,
                ),
                //Text(resultado, style: TextStyle(fontSize: 22),)
              ],
            )
          ],
        ),
      ),
      floatingActionButton: container,
      
      bottomNavigationBar: 
      BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(null),
            title: Text(''),
          ),
          BottomNavigationBarItem(
            icon: Icon(null),
            title: Text(''),
          ),
          BottomNavigationBarItem(
            icon: Icon(null),
            title: Text(''),
          ),
        ],
        backgroundColor: Color(0xff06243c),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
