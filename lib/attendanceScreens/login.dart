import 'package:attendance/attendanceScreens/leave_upcoming.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override


  State<Login> createState() => _LoginState();
}class _LoginState extends State<Login> {
  bool _passwordVisible = false;
  final TextEditingController _emailcontroller =TextEditingController();
  final TextEditingController _userPasswordController = TextEditingController();
 final _formKey = GlobalKey<FormState>();
  @override
  void initState() {
    super.initState(); 
    _passwordVisible = false;
  }  @override

  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: SizedBox(
            width: MediaQuery.of(context).size.width - 4.0,
            height: MediaQuery.of(context).size.height - 4.0,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                  Image.asset('asses/images/logo.png',width: 100,height: 100,),
                const Text(
                  '   Welcome Back ',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 32),
                ),
                const Row(
                  children: [
                    Text(
                      '  to',
                      style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      '  HR Attendee',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 32,
                          color: Colors.blue),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  '    Hello there, login to continue ',
                  style: TextStyle(color: Colors.black54),
                ),
               const SizedBox(height: 30,),
               Form(
                 key: _formKey,
                 child:Column(
                   children: [
                 TextFormField(
                      decoration: InputDecoration(
                          labelText: 'Email', border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                    ),
                   controller: _emailcontroller,
                   validator: (value) {
                     RegExp regex= RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9!#$%&'*+-/=?^_`{|}~)]+@[a-zA-Z0-9]+\.[a-zA-Z]+");
                   if( value!.isEmpty){
                     return ('please enter your email');
                   }else{
                     if(!regex.hasMatch(value)){
                       return'please enter a valid email';
                     }
                   }
                   return null;
                     },
                  ),

              const SizedBox(height: 20,),
               TextFormField(
                 keyboardType: TextInputType.text,
                  controller: _userPasswordController,
                  validator: (value) {
                    RegExp regex=
                        RegExp(r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&~]).{8,}$');
                  if(value!.isEmpty){
                    return 'please enter the password';
                  }else{
                    if(!regex.hasMatch(value)){
                      return 'enter a valid password';
                    }
                  }
                    return null ;
                    },
                  obscureText: !_passwordVisible,
                  decoration: InputDecoration(
                      labelText: 'Password',
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10)),
                    suffixIcon: IconButton(
                      icon: Icon(
                        _passwordVisible
                        ? Icons.visibility
                            : Icons.visibility_off,
                        color: Colors.black26,
                      ),
                      onPressed: () {
                        setState(() {
                          _passwordVisible =!_passwordVisible;
                        });
                      },
                    ),
                  ),
                ),
          ],
            ),
          ),
                Container(
                  alignment: Alignment
                      .centerRight, // Aligns the child to the right of the container
                  padding:
                      const EdgeInsets.all(16.0), // Adds some padding around the text
                  child: const Text(
                    'Forgot Password ?',
                    style: TextStyle(
                      color: Colors.blue,
                    ),
                    textAlign: TextAlign.right,
                  ),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width-4.0,
                  height: 50,
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          backgroundColor: Colors.blueAccent),
                      onPressed: () {
                        if(_formKey.currentState!.validate()){
                          Navigator.push(context,MaterialPageRoute(builder: (context) => Leave_Upcoming(),));
                        }
                      },
                      child: const Text(
                        'Login',
                        style: TextStyle(color: Colors.white),
                      )),
                ),
                const SizedBox(height: 30,),
                Container(
                  alignment: Alignment.center,
                  padding:
                  const EdgeInsets.all(16.0),
                  child: const Text(
                    'or continue with social accont ',
                    style: TextStyle(color: Colors.black54),
                  ),
                ),
                const SizedBox(height: 20,),
                Container(
                  alignment: Alignment.center,
                  padding:
                  const EdgeInsets.all(16.0),
                  child: Row(
                    children: [
                      SizedBox(width: 130,),
                        SizedBox(
                        height: 40,
                      width: 40,
                      child: Image.asset('asses/images/google.png'),),
                      const Text('Google',style: TextStyle(fontSize: 20),),
                    ],
                  ),
          
                ),
                const SizedBox(height: 50,),
          
                 const Row(
                    children: [
                      SizedBox(width: 80,),
                      Text(" Didn't have an account ?",style: TextStyle(fontSize: 15),),
                      Text(
                        '     Register',
                        style: TextStyle(color: Colors.blueAccent),
                      ),
                    ],
                  ),
          
              ],
            ),
          ),
        ),
      ),
    );
  }
}
