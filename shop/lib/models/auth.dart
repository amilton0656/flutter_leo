import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:shop/utils/constants.dart';

class Auth with ChangeNotifier {
  static const _url =
      'https://identitytoolkit.googleapis.com/v1/accounts:signUp?key=AIzaSyCGHvJvh5GIqIgv1bmkg3cX1o9WDcNKtTQ';

  Future<void> _authenticate(String email, String password, String urlFragment) async {
    const chave = 'AIzaSyCGHvJvh5GIqIgv1bmkg3cX1o9WDcNKtTQ';
    final url = 'https://identitytoolkit.googleapis.com/v1/accounts:$urlFragment?key=$chave';
    print('url>> $url');
    final response = await http.post(
      Uri.parse(url),
      body: jsonEncode({
        'email': email,
        'password': password,
        'returnSecureToken': true,
      }),
    );
    print(jsonDecode(response.body));
  }


  Future<void> signup(String email, String password) async {
    _authenticate(email, password, 'signUp');

  }

   Future<void> login(String email, String password) async {
    _authenticate(email, password, 'signInWithPassword');
    // final response = await http.post(
    
    //   Uri.parse('https://identitytoolkit.googleapis.com/v1/accounts:signInWithPassword?key=AIzaSyCGHvJvh5GIqIgv1bmkg3cX1o9WDcNKtTQ'),
                    // https://identitytoolkit.googleapis.com/v1/accounts:signInWithPassword?key=AIzaSyCGHvJvh5GIqIgv1bmkg3cX1o9WDcNKtTQ
    //   body: jsonEncode({
    //     'email': email,
    //     'password': password,
    //     'returnSecureToken': true,
    //   }),
    // );
    // print(jsonDecode(response.body));

  }
}
