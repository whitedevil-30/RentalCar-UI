import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name = "";
  bool changeButton = false;
  final _formKey = GlobalKey<FormState>();

  moveToHome(BuildContext context)async{
  if(_formKey.currentState!.validate()){
    setState(() {
                    changeButton = true;
                  });
                  await Future.delayed(Duration(milliseconds: 100));
                  await Navigator.pushNamed(context, "/home");
                  setState(() {
                    changeButton = false;
                  });
  }
}

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.only(top: 60),
        child: Form(
          key: _formKey,
          child: Column(
            children: [Image.asset("assets/images/download.jpeg",
            fit: BoxFit.cover,
            ),
            SizedBox(height: 5,),
            Text(
              "Welcome $name",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 20,),
              Padding(
                padding: const EdgeInsets.fromLTRB(50, 15, 50, 15),
                child: Column(
                  children: [
                    TextFormField(
                      decoration: InputDecoration(
                        icon: Icon(Icons.account_circle),
                        hintText: "Enter UserName",
                        labelText: "Username",
                        enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(100))
                      ),
                      validator: (String?value) {
                        if (value != null && value.isEmpty){
                          return "Username Cannot Be Empty";
                        }
                        return null;
                      },
                      onChanged: (value) {
                        name = value;
                        setState(() {});
                      },
                    ),
                    SizedBox(height: 5),
                    TextFormField(
                      obscureText: true,
                      decoration: InputDecoration(
                        icon: Icon(Icons.lock),
                        hintText: "Enter Password",
                        labelText: "Password",
                        enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(100))
                      ),
                      validator: (String?value) {
                        if (value != null && value.isEmpty){
                          return "Password Cannot Be Empty";
                        }
                        return null;
                      },
                    ),
                  ],
                ),
              ),
              SizedBox(height: 25,),
              Material(
                color: Colors.black,
                borderRadius: BorderRadius.circular(changeButton?50:10),
                child: InkWell(
                  splashColor: Colors.white,
                  onTap: () => moveToHome(context),
                  child: AnimatedContainer(
                    duration: Duration(milliseconds: 100), 
                    width: changeButton?50: 100,
                    height: 50,
                    alignment: Alignment.center,
                    child: changeButton?Icon(Icons.done,color:Colors.white):Text("Login",
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.white,
                    ),
                    ),
                    // decoration: BoxDecoration(
                    //   color: Colors.deepPurple,
                    //   borderRadius: BorderRadius.circular(changeButton?50:10)
                    //   ),
                  ),
                ),
              ),
              SizedBox(height: 8,),
              Material(
                color: Colors.black,
                borderRadius: BorderRadius.circular(changeButton?50:10),
                child: InkWell(
                  splashColor: Colors.white,
                  onTap: () => moveToHome(context),
                  child: AnimatedContainer(
                    duration: Duration(milliseconds: 100), 
                    width: changeButton?50: 100,
                    height: 50,
                    alignment: Alignment.center,
                    child: changeButton?Icon(Icons.done,color:Colors.white):Text("SignUp",
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.white,
                    ),
                    ),
                    // decoration: BoxDecoration(
                    //   color: Colors.deepPurple,
                    //   borderRadius: BorderRadius.circular(changeButton?50:10)
                    //   ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}