import 'dart:html';
import 'dart:js';

import 'package:flutter/material.dart';
import 'package:glass/glass.dart';

void main() => runApp(Login());

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext){
    return MaterialApp(
      title: 'Login Tampilan',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Halaman Login'),
          backgroundColor: Color.fromARGB(255, 255, 98, 98),
        ),
        body: DecoratedBox(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("images/bg.jpg"), 
              fit: BoxFit.cover
            )
          ),
          child: Center(
             child: Container(
              margin: EdgeInsets.symmetric(horizontal: 10, vertical: 30),
                child: Column(
                children: [
                  const Padding(
                    padding: EdgeInsets.all(10),
                    child: TextField(
                        decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: 'Username'
                      ),
                    ) ,
                  ),
                  const Padding(
                    padding: EdgeInsets.all(10),
                    child: TextField(
                      decoration:InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: 'Password'
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(20),
                    child: Center(
                      child: ElevatedButton(
                        onPressed: () {
                          const Text('gabut');
                        },
                        child: const Text('Login')
                      )
                    ),
                  )
                ],
              ),
             ).asGlass(
              tintColor: const Color.fromARGB(255, 255, 255, 255),
              clipBorderRadius: BorderRadius.circular(15)
             ),
            ),
          )
      ),
    );
  }
}

