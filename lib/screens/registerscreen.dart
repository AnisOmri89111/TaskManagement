import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<StatefulWidget> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
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
                      child: SafeArea(
                          child: Column(
                    children: [
                      TextFormField(
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
                      const SizedBox(height: 5,),
                       Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                        const Text('You have an account'),
                         const SizedBox(width: 10,),
                          GestureDetector(
                          onTap: () => Navigator.pop(context), 
                          child: const Text('Login'))
                        ],
                      ),
                       const SizedBox(height: 10,),
                        registerButton()
                    ],
                  )
                  )
                  ),
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
                    onPressed: () {},
                    child:  const Text("Register"),
                    ),
                  ),
                    
                  ],
                );
  }
}
