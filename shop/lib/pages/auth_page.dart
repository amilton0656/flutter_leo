import 'dart:math';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:shop/components/auth_form.dart';

class AuthPage extends StatelessWidget {
  const AuthPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Color.fromRGBO(215, 117, 255, 0.5),
                  Color.fromRGBO(255, 188, 117, 0.9),
                ],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight),
            ),
          ),
          Container(
            width: double.infinity,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  margin: const EdgeInsets.only(bottom: 30, left: 30, right: 30),
                  padding: const EdgeInsets.symmetric(
                    vertical: 15,
                    horizontal: 70,
                  ),
                  transform: Matrix4.rotationZ(-8 * pi / 180)..translate(-10.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.deepOrange.shade900,
                    boxShadow: const  [
                      BoxShadow(
                        blurRadius: 8,
                        color: Colors.black26,
                        offset: Offset(0, 2),
                      )
                    ]
                  ),
                  child:const Text('Minha Loja',
                  style: TextStyle(
                    fontSize: 35,
                    fontFamily: 'Anton',
                    color: Colors.white,
                  ),),
                ),
                AuthForm(),
              ],
            ),
          )
        ],
      ),
    );
  }
}