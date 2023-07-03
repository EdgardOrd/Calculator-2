import 'package:flutter/material.dart';

void main() => runApp(const myApp());

class myApp extends StatefulWidget
{
  const myApp({Key? key}): super(key: key);

  @override
  State createState()
  {
    return _MyAppState();
  }
}

class _MyAppState extends State<myApp>
{
  double contador = 10;

  @override
  Widget build(BuildContext context)
  {
    return MaterialApp(
      debugShowCheckedModeBanner: false ,
      title: 'Tarea 1.2 de Edgard Ordoñez',
      home: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(90.0),
          child: AppBar(
            toolbarHeight: 120.0,
            backgroundColor: Colors.green,
            centerTitle: true,
            title: Text(
              'Calculadora (2)',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 40.0,
              ),
            ),
          ),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Resultado:  ',
                    style: TextStyle(
                      fontSize: 30.0,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Text(
                    '$contador',
                    style: TextStyle(
                      color: Colors.green,
                      fontSize: 30.0,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
          floatingActionButton: Row(

            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(width: 20),
              FloatingActionButton(
                backgroundColor: Colors.tealAccent[12],
                onPressed: suma,
                child: const Icon(Icons.add),
              ),
              const SizedBox(width: 20),
              FloatingActionButton(
                backgroundColor: Colors.teal,
                onPressed: restar ,
                child: const Icon(Icons.remove),
              ),
              const SizedBox(width: 20),
              FloatingActionButton(
                backgroundColor: Colors.tealAccent[12],
                onPressed: multiplicar ,
                child: const Icon(Icons.clear),
              ),
              const SizedBox(width: 20),
              FloatingActionButton(
                backgroundColor: Colors.teal,
                onPressed: dividir ,
                child: Text('/',
                style: TextStyle(fontSize: 20)),
              ),
            ],
          )
      ),
    );


  }
  void suma()
  {
    setState((){});
    contador = contador + 2;
  }

  void restar()
  {
    setState((){});
    contador = contador - 2;
  }

  void multiplicar()
  {
    setState((){});
    contador = contador * 2;
  }

  void dividir()
  {
    setState((){});
    if(contador==0)
      {
        contador = 0;
      }
    else
      {
        contador =  contador /2;
      }
  }
}

