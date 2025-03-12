import 'package:flutter/material.dart';
import 'package:foodie_go/pages/singup.dart';
import 'package:foodie_go/pages/textformfield.dart';

class Signin extends StatefulWidget {
  const Signin({super.key});

  @override
  State<Signin> createState() => _SigninState();
}

class _SigninState extends State<Signin> {
    final GlobalKey<FormState> _formKey = GlobalKey<FormState>(); // Key for Form

  TextEditingController gmailController=TextEditingController();
  TextEditingController passwordController=TextEditingController();

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
                  SizedBox(height: 30,),
                  const Text(
                    "Sign In",
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.black87,
                    ),
                  ),
                  const SizedBox(height: 40),
        
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
        
                  const SizedBox(height: 30),
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
                  const SizedBox(height: 30),
                  ElevatedButton(
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                    // ✅ If the form is valid, do something
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
                      "Sign In",
                      style: TextStyle(fontSize: 20, color: Colors.white,fontWeight: FontWeight.bold),
                    ),
                  ),
                   SizedBox(height: 30,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('If you do not have account!',style: TextStyle(fontSize: 16),),
                  TextButton(onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (_)=> Signup()));
        
                  }, child: Text('SignIn',style: TextStyle(color: Colors.red,fontSize: 18),))
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