// ignore_for_file: prefer_const_constructors, prefer_interpolation_to_compose_strings, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class Myvetor extends StatefulWidget {
  const Myvetor({super.key});

  @override
  State<Myvetor> createState() => _MyvetorState();
}

class _MyvetorState extends State<Myvetor> {
  List<int> vetor = [1,4,8,9,6,2];
  String textoVetor = "";
  String textoSoma = "";
  
  int somaVet = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: 
      Text("Vetores em dart",style: TextStyle(color: Colors.white),), 
      backgroundColor: Colors.cyan,
      centerTitle: true),
      body: Center(child: Column(children:[
        SizedBox(height: 20,),
      Text("Soma do vetor: " + textoSoma),

      ElevatedButton(onPressed: () {
        somarVetor();
        setState(() {
          
        });
      }, 
      child: Text("Mostrar vetor")
      ),
      Text("Maior elemento do vetore: " + textoVetor),

      ElevatedButton(onPressed: () {
        mostrar();
        setState(() {
          
        });
      }, 
      child: Text("Mostrar vetor")
      ),

      Text("Menor elemento do vetor: " + textoVetor),
      ElevatedButton(onPressed: () {
       vetor.sort();
       
        setState(() {
          
        });
      }, 
      child: Text("Mostrar vetor")
      )
      ],
      )
      ),
 
    );
  }
    void mostrar(){
      textoVetor = "";
      for (int i=0; i<vetor.length; i++)
      {
        textoVetor = textoVetor + "" + vetor[i].toString();
      }
    }
    void somarVetor(){
      textoVetor =""; 
      for(int i=0; i<vetor.length; i++){
        somaVet += vetor[i];
        textoVetor = textoVetor + "" + vetor[i].toString();
      }
      textoSoma = somaVet.toString();
    }
   

}