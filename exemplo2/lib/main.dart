import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      body: SafeArea(
        child: Container(
          margin: const EdgeInsets.all(20),
          child: 
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                
                const Text("Hello World!"),
                const Image(image: AssetImage("assets/images/chorrin.jpg")),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                  
                Container(
                  color: Colors.blue,
                  padding: const EdgeInsets.all(10),
                  margin: const EdgeInsets.all(10),
                  child: const Text("Botão", style: TextStyle(
                  fontSize: 20,  
                  color: Colors.white,) 
                      ),
                ),
                Container(
                  color: Colors.blue,
                  padding: const EdgeInsets.all(10),
                  margin: const EdgeInsets.all(10),
                  child: const Text("Botão", style: TextStyle(
                  fontSize: 20,  
                  color: Colors.white,) 
                      ),
                ),
                Container(
                  color: Colors.blue,
                  padding: const EdgeInsets.all(10),
                  margin: const EdgeInsets.all(10),
                  child: const Text("Botão", style: TextStyle(
                  fontSize: 20,  
                  color: Colors.white,) 
                      ),
                ),
                ],),

                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [

                Container(
                  color: Colors.blue,
                  padding: const EdgeInsets.all(10),
                  margin: const EdgeInsets.all(10),
                  child: const Text("Botão", style: TextStyle(
                  fontSize: 20,  
                  color: Colors.white,) 
                      ),
                ),
                Container(
                  color: Colors.blue,
                  padding: const EdgeInsets.all(10),
                  margin: const EdgeInsets.all(10),
                  child: const Text("Botão", style: TextStyle(
                  fontSize: 20,  
                  color: Colors.white,) 
                      ),
                ),
                Container(
                  color: Colors.blue,
                  padding: const EdgeInsets.all(10),
                  margin: const EdgeInsets.all(10),
                  child: const Text("Botão", style: TextStyle(
                  fontSize: 20,  
                  color: Colors.white,) 
                      ),
                ),
                  ],
                )
              ],
            ),
        ),
        
      ),
     
      
    );
  }
}
// class Botao extends StatelessWidget {
//   const Botao({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Container(
//                   color: Colors.blue,
//                   padding: const EdgeInsets.all(10),
//                   margin: const EdgeInsets.all(20),
//                   child: const Text("Botão", style: TextStyle(
//                   fontSize: 20,  
//                   color: Colors.white,) 
//                       ),
//                 ),
//   );
//   }
// }