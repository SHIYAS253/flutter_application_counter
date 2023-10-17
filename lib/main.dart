import 'package:flutter/material.dart';
import 'package:flutter_application_21/provider/provider.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

 
  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false,
      title: 'counter',
      theme: ThemeData(
     
        colorScheme: ColorScheme.fromSeed(seedColor: Color.fromARGB(255, 58, 65, 68)),
        useMaterial3: true,
      ),
      home:ChangeNotifierProvider(create: (context) => Myscreencounterprovider(),
      child: MyHomePage()),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});


 

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
 


  @override
  Widget build(BuildContext context) {
print("rebuild");
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        // title: Text(widget),
      ),
      
      body: Center(
        child: Padding(
          padding: const EdgeInsets.only(top: 350),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const Text(
                'start your count',
              ),
              Text(
              Provider .of<Myscreencounterprovider>(context).count.toString(),
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              SizedBox(height: 300,),
              
                 Padding(
                   padding: const EdgeInsets.only(left: 200),
                   child: FloatingActionButton(
                    
                           onPressed: (){
Provider .of<Myscreencounterprovider>(context,listen: false);
                           },
                           child: const Icon(Icons.remove_circle),
                               ),
                 ), 
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
             onPressed: (){
Provider .of<Myscreencounterprovider>(context,listen: false);
                           },
        child: const Icon(Icons.add),
      ),
       );
  }
}
