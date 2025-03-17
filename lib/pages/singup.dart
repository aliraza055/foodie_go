import 'package:flutter/material.dart';
import 'package:foodie_go/pages/signin.dart';
import 'package:foodie_go/pages/textformfield.dart';
import 'package:foodie_go/services/authentication.dart';

class Signup extends StatefulWidget {
  const Signup({super.key});

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  TextEditingController gmailController=TextEditingController();
  TextEditingController nameController=TextEditingController();
  TextEditingController passwordController=TextEditingController();
    final GlobalKey<FormState> _formKey = GlobalKey<FormState>(); // Key for Form

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Form(
        key: _formKey,
        child: Stack(
          children: [
            Container(
              width: double.infinity,
              height: MediaQuery.of(context).size.height / 3,
              decoration: const BoxDecoration(
                color: Color(0xffffefbf),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(50),
                  bottomRight: Radius.circular(50),
                ),
              ),
              child: Center(
                child: Image.asset(
                  'images/logo2.png',
                  height: 100,
                  width: 100,
                  fit: BoxFit.contain,
                ),
              ),
            ),      
            
            Container(
              height: double.infinity,
              width: double.infinity,
              margin: EdgeInsets.only(top: 200,left: 20,right: 20,bottom: 50),
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.3),
                    spreadRadius: 5,
                    blurRadius: 10,
                    offset: const Offset(0, 5),
                  ),
                ],
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const Text(
                    "Sign Up",
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.black87,
                    ),
                  ),
                  const SizedBox(height: 40),
        
                  // Name Field
                  TextFormFieldWidget(
                    controller: nameController,
                      validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "This field cannot be empty"; 
                    }
                    return null;
                  },
                    hintText: "Enter your name",
                    icon: Icons.person,
                  ),
        
                  // Email Field
                  const SizedBox(height: 20),
                  TextFormFieldWidget(
                     validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "This field cannot be empty"; // ✅ Validation logic
                    }
                    return null;
                  },
                    controller: gmailController,
                    hintText: "Enter your email",
                    icon: Icons.email,
                  ),
        
                  // Password Field
                  const SizedBox(height: 20),
                  TextFormFieldWidget(
                     validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "This field cannot be empty"; // ✅ Validation logic
                    }
                    return null;
                  },
                    controller: passwordController,
                    hintText: "Enter your password",
                    icon: Icons.lock,
                    obscureText: true,
                  ),
                  // Sign Up Button
                  const SizedBox(height: 20),
                  ElevatedButton(
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        Authentication().signUp(context,
                         gmailController.text,
                          passwordController.text,
                           nameController.text);
                  }
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.red.shade400,
                      padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 12),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    child: const Text(
                      "Sign Up",
                      style: TextStyle(fontSize: 20, color: Colors.white,fontWeight: FontWeight.bold),
                    ),
                  ),
                   SizedBox(height: 20,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Have you already account!',style: TextStyle(fontSize: 16),),
                  TextButton(onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (_)=> Signin()));
        
                  }, child: Text('Signup',style: TextStyle(color: Colors.red,fontSize: 18),))
                ],
              )
                ],
              ),
            ),     
          ],
        ),
      ),
    );
  }
}