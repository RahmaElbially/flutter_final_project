import 'package:final_project/Providers/sign_in_provider.dart';
import 'package:final_project/Screens/sign_up.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:http/http.dart';
import 'package:provider/provider.dart';
import '../Models/Colors/colors.dart';
import 'locations.dart';

class SignIn extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    SignInProvider signInProvider = Provider.of<SignInProvider>(context);

    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Padding(
              padding: EdgeInsets.all(0.01.sw),
              child: Container(
                width: double.infinity,
                child: Image.asset(
                  "assets/images/BackGround.png",
                  fit: BoxFit.fill,
                ),
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      CustomColors.background,
                      CustomColors.cyanAcent,
                    ],
                  ),
                ),
              ),
            ),
            Column(
              children: [
                SizedBox(height: 0.12.sh,),//50
                Image.asset("assets/images/LogoForm.png",alignment: Alignment.center,),
                SizedBox(
                  height: 0.034.sh,//30
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 0.055.sw),
                  child: Stack(
                    children: [
                      Image.asset("assets/images/BGForm.png"),
                      Form(
                        key: _formKey,
                        child: Column(
                          children: [
                            SizedBox(
                              height: 0.08.sh,
                            ),
                            Center(
                              child: Text(
                                "Sign In",
                                style: TextStyle(
                                    fontSize: 24.sp, fontWeight: FontWeight.bold),
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.only(left: 0.021.sh),
                              width: 0.83.sw,
                              alignment: Alignment.center,
                              child: TextFormField(
                                keyboardType: TextInputType.emailAddress,
                                decoration: const InputDecoration(
                                  border: UnderlineInputBorder(),
                                  hintText: "Email",
                                  hintStyle: TextStyle(fontSize: 12),
                                ),
                                validator: (value) {
                                  if (value == null ||
                                      value.isEmpty ||
                                      !value.contains("@")) {
                                    return "Enter Valid Email";
                                  }
                                  return null;
                                },
                                onSaved: (value){
                                  signInProvider.ChangeEmail(value!);
                                },
                              ),
                            ),
                            Container(
                              width: 0.83.sw,
                              padding: EdgeInsets.only(left: 0.021.sh),
                              alignment: Alignment.center,
                              child: TextFormField(
                                obscureText: true,
                                decoration: const InputDecoration(
                                  border: UnderlineInputBorder(),
                                  hintText: "Password ",
                                  hintStyle: TextStyle(fontSize: 12),
                                ),
                                validator: (value) {
                                  if (value == null || value.isEmpty) {
                                    return "Enter Valid Password";
                                  }
                                  return null;
                                },
                                onSaved: (value){
                                  signInProvider.ChangePassword(value!);
                                },
                              ),
                            ),
                            SizedBox(
                              height: 0.03.sh,
                            ),
                            Container(
                              padding: EdgeInsets.only(right: 0.09.sw),
                              alignment: Alignment.bottomRight,
                              child: Text(
                                "Forget Password?",
                                style: TextStyle(color: CustomColors.background),
                              ),
                            ),
                            SizedBox(
                              height: 0.03.sh,
                            ),
                            Stack(
                              children: [
                                Container(
                                  width: 0.84.sw,
                                  height: 0.08.sh,
                                  child: signInProvider.isLoading? Center(child: CircularProgressIndicator(),): ElevatedButton(
                                    onPressed: () {
                                      if (_formKey.currentState!.validate()) {
                                        _formKey.currentState!.save();
                                        Signin(signInProvider,context);
                                      }
                                    },
                                    child: Text(
                                      "Sign in",
                                      style: TextStyle(
                                        fontSize: 18.sp,
                                      ),
                                    ),
                                    style: ButtonStyle(
                                      backgroundColor: MaterialStateProperty.all(
                                          CustomColors.background),
                                      shape: MaterialStateProperty.all(
                                        RoundedRectangleBorder(
                                          borderRadius:
                                          BorderRadius.circular(100),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Container(
                                    padding: EdgeInsets.only(left: 0.66.sw,top: 0.003.sh),
                                    child: Image.asset(
                                      "assets/images/Cricle.png",
                                      alignment: AlignmentDirectional.centerStart,
                                    )),
                                Container(
                                  padding: EdgeInsets.only(left: 0.66.sw),
                                  child: Image.asset(
                                    "assets/images/right-arrow.png",
                                    width: 0.15.sw,
                                    height: 0.08.sh,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 0.12.sh,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      margin: EdgeInsets.only(right: 0.085.sw),
                      child: Image.asset("assets/images/Facebook.png"),
                    ),
                    Image.asset("assets/images/Google.png"),
                  ],
                ),
                SizedBox(
                  height: 0.03.sh,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => SignUp()));
                  },
                  child: Text(
                    "Don’t have an account? Sign up",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Future Signin(SignInProvider signInProvider,context) async {

    signInProvider.ChangeLoading(true);

    Response signInResponse = await post(
      Uri.parse("http://alcaptin.com/api/login"),
      body: {
        "email": signInProvider.email,
        "password": signInProvider.password,
      },
    );

    if(signInResponse.statusCode == 200){
       Navigator.push(context, MaterialPageRoute(builder: (context)=>Locations()));
    }
    else{
      print("Email or Password Error");
    }



    print("Response is : ${signInResponse.body}");
    print("Email is : ${signInProvider.email}");
    print("Password is : ${signInProvider.password}");

    signInProvider.ChangeLoading(false);
  }
}
