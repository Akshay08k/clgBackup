import 'package:apitesting/api/login/ApiServices.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  String? _emailError;
  String? _passwordError;

  void _login() {
    String email = _emailController.text.trim();
    String password = _passwordController.text;

    setState(() {
      _emailError = null;
      _passwordError = null;

      if (email.isEmpty) {
        _emailError = 'Email is required';
      } else if (!RegExp(r'^[\w-.]+@([\w-]+\.)+[\w]{2,4}$').hasMatch(email)) {
        _emailError = 'Enter a valid email';
      }

      if (password.isEmpty) {
        _passwordError = 'Password is required';
      } else if (password.length < 6) {
        _passwordError = 'Minimum 6 characters';
      }

      if (_emailError == null && _passwordError == null) {
        // For demo purpose: show SnackBar
        ApiServices().login(email, password);


        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Logging in as $email')),
        );

        // TODO: Implement actual login logic
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Login')),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Email Input
            TextField(
              controller: _emailController,
              decoration: InputDecoration(
                labelText: 'Email',
                errorText: _emailError,
                border: OutlineInputBorder(),
              ),
              keyboardType: TextInputType.emailAddress,
            ),
            SizedBox(height: 16),

            // Password Input
            TextField(
              controller: _passwordController,
              decoration: InputDecoration(
                labelText: 'Password',
                errorText: _passwordError,
                border: OutlineInputBorder(),
              ),
              obscureText: true,
            ),
            SizedBox(height: 24),

            // Login Button
            ElevatedButton(
              onPressed: _login,
              child: Text('Login'),
              style: ElevatedButton.styleFrom(
                minimumSize: Size(double.infinity, 48),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
