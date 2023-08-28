import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shop/models/auth.dart';

enum AuthMode { Signup, Login }

class AuthForm extends StatefulWidget {
  const AuthForm({super.key});

  @override
  State<AuthForm> createState() => _AuthFormState();
}

class _AuthFormState extends State<AuthForm> {
  AuthMode _authMode = AuthMode.Signup;

  final _passwordController = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  bool _isLoading = false;

  Map<String, String> _authData = {
    'email': '',
    'senha': '',
  };

  bool _isLogin() => _authMode == AuthMode.Login;
  bool _isSignup() => _authMode == AuthMode.Signup;

  bool isValid = false;

  void _switchAuthMode() {
    setState(() {
      _authMode = _isLogin() ? AuthMode.Signup : AuthMode.Login;
    });
  }

  Future<void> _submitForm() async {
    final isValid = _formKey.currentState?.validate() ?? false;
    if (!isValid) {
      return;
    }

    setState(() { _isLoading = true;});

    _formKey.currentState?.save();
    Auth auth = Provider.of<Auth>(context, listen: false);

    if (_isLogin()) {
      print('vai pro login');
      await auth.login(
        _authData['email']!, 
        _authData['password']!
        );
    } else {
      print('vai pro signup');
      await auth.signup(
        _authData['email']!, 
        _authData['password']!
        );
    }
    setState(() { _isLoading = true;});
  }

  @override
  Widget build(BuildContext context) {
    final deviceSize = MediaQuery.of(context).size;

    return Card(
      elevation: 8,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: Container(
        padding: const EdgeInsets.all(16),
        height: _isLogin() ? 310 : 400,
        width: deviceSize.width * 0.75,
        child: Form(
          key: _formKey,
            child: Column(
          children: [
            TextFormField(
              onSaved: (email) => _authData['email'] = email ?? '',
              validator: (_email) {
                final email = _email ?? '';
                if (email.trim().isEmpty || !email.contains('@')) {
                  return 'Informe uma senha válida.';
                }
                return null;
              },
              decoration: const InputDecoration(
                labelText: 'E-mail',
              ),
              keyboardType: TextInputType.emailAddress,
            ),
            TextFormField(
              onSaved: (password) => _authData['password'] = password ?? '',
              controller: _passwordController,
              validator: _isLogin()
                  ? null
                  : (_password) {
                      final password = _password ?? '';
                      if (password.isEmpty || password.length < 5) {
                        return 'Informe uma senha válida.';
                      }
                      return null;
                    },
              decoration: const InputDecoration(
                labelText: 'Senha',
              ),
              obscureText: true,
              keyboardType: TextInputType.emailAddress,
            ),
            if (_isSignup())
              TextFormField(
                validator: _isLogin()
                    ? null
                    : (_password) {
                        final password = _password ?? '';
                        if (password != _passwordController.text) {
                          return 'Senhas não conferem.';
                        }
                        return null;
                      },
                decoration: const InputDecoration(
                  labelText: 'Confirme a Senha',
                ),
                obscureText: true,
                keyboardType: TextInputType.emailAddress,
              ),
            const SizedBox(
              height: 20,
            ),
            _isLoading 
              ? const CircularProgressIndicator()
              : ElevatedButton(
                onPressed: _submitForm,
                style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    padding: const EdgeInsets.symmetric(
                      horizontal: 30,
                      vertical: 8,
                    )),
                child: Text(
                    _authMode == AuthMode.Login ? 'ENTRAR' : 'REGISTRAR',
                    ),
            ),
            const Spacer(),
            TextButton(
              onPressed: _switchAuthMode,
              child: Text(
                _isLogin() ? 'DESEJA REGISTRAR?' : 'JÁ POSSUI CONTA?'
              ),
            ),
          ],
        )),
      ),
    );
  }
}
