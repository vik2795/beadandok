import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My counter app',
      theme: ThemeData(
        
        colorScheme: ColorScheme.fromSeed(seedColor: const Color.fromARGB(255, 128, 238, 205)),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'My counter'),
      debugShowCheckedModeBanner: false,
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
  int _counter = 100;

  void _maximusementCounter() {
    setState(() {
     
      _counter+=1000000000000;
    });

  }
  void _decrementCounter() {
    setState(() {
     
      _counter-=5;
    });

  }
  void _infivecrementCounter() {
    setState(() {
     
      _counter+=5;
    });

  }

   void _inonecrementCounter() {
    setState(() {
     
      _counter++;
    });

  }

   void _deonecrementCounter() {
    setState(() {
     
      _counter--;
    });

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
              'Counter value:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            Row( mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
               
              FloatingActionButton(
               onPressed: _inonecrementCounter,
               tooltip: '+1',
              child: const Icon(Icons.add),),

              FloatingActionButton(
               onPressed: _deonecrementCounter,
               tooltip: '-1',
              child: const Icon(Icons.remove),),

              
            ],),
            
            Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [

                  FloatingActionButton(
               onPressed: _infivecrementCounter,
               tooltip: '+5',
              child: const Icon(Icons.signal_wifi_0_bar_sharp),),


                   FloatingActionButton(
               onPressed: _decrementCounter,
               tooltip: '-5',
              child: const Icon(Icons.signal_wifi_statusbar_connected_no_internet_4_outlined),),

            

              ])

           
            
          ],
        ),
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: _maximusementCounter,
        tooltip: 'MAXXIMUS',
        child: const Icon(Icons.vaccines_sharp),

        
      ), 
    );
  }
}
