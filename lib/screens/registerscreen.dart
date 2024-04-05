import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:todoapp/datas/authenticationprocess.dart';
import 'package:todoapp/screens/loginscreen.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<StatefulWidget> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final password = TextEditingController();
  final email = TextEditingController();
  final passwordConfirmation = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: MediaQuery.of(context).size.width,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Text(
                'Task Management',
                style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                    color: Colors.blueGrey),
              ),
              const Text(
                'Organise your tasks for better life',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
              ),
              const SizedBox(
                height: 20,
              ),
              Stack(
                children: [
                  registerForm(),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget registerForm() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: Form(
        key: _formKey,
          child: SafeArea(
              child: Column(
        children: [
          TextFormField(
            controller: email,
            onChanged: (value) {
              setState(() {
                email.text = value;
              });
            },
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter your email address.';
              }
              if (!RegExp(r"^[a-zA-Z0-9.a-zA-Z]*@[a-zA-Z0-9.-]*\.[a-zA-Z]{2,}$")
                  .hasMatch(value)) {
                return 'Please enter a valid email address.';
              }
              return null;
            },
            decoration: InputDecoration(
              label: const Text('Email'),
              hintText: 'Insert your email',
              enabledBorder: OutlineInputBorder(
                borderSide: const BorderSide(color: Colors.grey),
                borderRadius: BorderRadius.circular(10),
              ),
              focusedBorder: const OutlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.black,
                  width: 2,
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          TextFormField(
            controller: password,
            onChanged: (value) {
              setState(() {
                password.text = value;
              });
            },
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter your password.';
              }
              return null;
            },
            obscureText: true,

            decoration: InputDecoration(
              label: const Text('Password'),
              hintText: 'Insert your password',
              enabledBorder: OutlineInputBorder(
                borderSide: const BorderSide(color: Colors.grey),
                borderRadius: BorderRadius.circular(10),
              ),
              focusedBorder: const OutlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.black,
                  width: 2,
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          TextFormField(
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please confirm your password.';
              }
              if (value != password.text) {
                return 'Passwords do not match.';
              }
              return null;
            },
            controller: passwordConfirmation,
            onChanged: (value) {
              passwordConfirmation.text = value;
            },
           obscureText: true,

            decoration: InputDecoration(
              label: const Text('Password Confirm'),
              hintText: 'Confirm your password',
              enabledBorder: OutlineInputBorder(
                borderSide: const BorderSide(color: Colors.grey),
                borderRadius: BorderRadius.circular(10),
              ),
              focusedBorder: const OutlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.black,
                  width: 2,
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              const Text('You have an account'),
              const SizedBox(
                width: 10,
              ),
              GestureDetector(
                  onTap: () => Navigator.pop(context),
                  child: const Text('Login'))
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          registerButton()
        ],
      ))),
    );
  }

  Widget registerButton() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Expanded(
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
                minimumSize: const Size(0, 50),
                side: const BorderSide(color: Colors.white, width: 2),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10))),
            onPressed: () {
              if (_formKey.currentState!.validate()) {
                AuthenticationProcess().registerProcess(email.text, password.text, passwordConfirmation.text);
                Navigator.push(context, MaterialPageRoute(builder:(context) => const LoginScreen(),));
              }
            },
            child: const Text("Register"),
          ),
        ),
      ],
    );
  }
}
