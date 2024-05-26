import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mobifix/Login_page.dart';

class Registration extends StatefulWidget {
  const Registration({super.key});

  @override
  State<Registration> createState() => _RegistrationState();
}

class _RegistrationState extends State<Registration> {
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  Future signup() async {
    await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: _emailController.text.trim(),
        password: _passwordController.text.trim());


  }


  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        body: Stack(//thanks for watching
          children: [
            Container(
              height: double.infinity,
              width: double.infinity,
              decoration: const BoxDecoration(
                gradient: LinearGradient(colors: [
                  Color(0xffB81736),
                  Color(0xff281537),
                ]),
              ),
              child: const Padding(
                padding: EdgeInsets.only(top: 60.0, left: 22),
                child: Text(
                  'Create Your\nAccount',
                  style: TextStyle(
                      fontSize: 30,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 200.0),
              child: Container(
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(40), topRight: Radius.circular(40)),
                  color: Colors.white,
                ),
                height: double.infinity,
                width: double.infinity,
                child:  Padding(
                  padding: const EdgeInsets.only(left: 18.0,right: 18),
                  child: SingleChildScrollView(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const TextField(
                          decoration: InputDecoration(
                              suffixIcon: Icon(Icons.check,color: Colors.grey,),
                              label: Text('Full Name',style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color:Color(0xffB81736),
                              ),)
                          ),
                        ),
                         TextField(
                          controller: _emailController,
                          decoration: const InputDecoration(
                              suffixIcon: Icon(Icons.check,color: Colors.grey,),
                              label: Text('Email',style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color:Color(0xffB81736),
                              ),)
                          ),
                        ),
                         TextField(
                          controller:_passwordController ,
                          decoration: const InputDecoration(
                              suffixIcon: Icon(Icons.visibility_off,color: Colors.grey,),
                              label: Text('Password',style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color:Color(0xffB81736),
                              ),)
                          ),
                        ),
                        const TextField(
                          decoration: InputDecoration(
                              suffixIcon: Icon(Icons.visibility_off,color: Colors.grey,),
                              label: Text('Conform Password',style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color:Color(0xffB81736),
                              ),)
                          ),
                        ),
                    
                        const SizedBox(height: 10,),
                    
                        GestureDetector(
                          onTap: signup,
                          child: Container(
                            height: 55,
                            width: 300,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              gradient: const LinearGradient(
                                  colors: [
                                    Color(0xffB81736),
                                    Color(0xff281537),
                                  ]
                              ),
                            ),
                            child: const Center(child: Text('SIGN UP',style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                                color: Colors.white
                            ),),),
                          ),
                        ),
                    
                    
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ));
  }
}
