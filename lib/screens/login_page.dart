import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';
// import 'package:url_launcher/url_launcher.dart';
// import 'flutter_flow/flutter_flow_theme.dart';
// import 'flutter_flow/flutter_flow_util.dart';
// import 'flutter_flow/flutter_flow_widgets.dart';
// import 'package:flutterflow/flutterflow_ui.dart';
import 'package:stockez_app/screens/password.dart';
import 'package:google_fonts/google_fonts.dart';
import 'createacc_page.dart';
import 'home_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});
  
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool _passwordVisible = false;
   String? _password;
    final _passwordFieldKey = GlobalKey<FormFieldState<String>>();
    static const IconData account_circle = IconData(0xe043, fontFamily: 'MaterialIcons');
  @override
  void initState() {
    _passwordVisible = false;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(34, 4, 64,0.4),
      resizeToAvoidBottomInset : false,
      appBar: AppBar(
        title: const Text('Login'),
        backgroundColor: Color.fromRGBO(253, 176, 150,1),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.star), //star==app logo
          ),
        ],
      ),
      body: Center(
          child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            // Container(
            //   child: const Icon(Icons.star, size: 30),
            // ),
            
            //Welcome text

              Padding(
                padding:  EdgeInsets.fromLTRB(0,0,0,22.5),
              child: Container(
              child:  RichText(
                    textAlign:  TextAlign.center,
                    text:  
                  TextSpan(
                    style:  GoogleFonts.montserrat(
                      fontSize:  43,
                      fontWeight:  FontWeight.w600,
                      height:  1.6356666033,
                      letterSpacing:  -0.3000000119,
                      color:  Color(0xffffffff),
                    ),
                    children:  [
                  TextSpan(
                    text:  'Welcome',
                    
                    style: GoogleFonts.montserrat(
                      fontSize:  32,
                      fontWeight:  FontWeight.w600,
                      height:  1.6356666088,
                      letterSpacing:  -0.3000000119,
                      color:  Color.fromARGB(255, 255, 255, 255),
                    ),
                  ),
                  TextSpan(
                    text:  ' \n',
                  ),
                  TextSpan(
                    text:  'John Doe',
                    
                    style: GoogleFonts.montserrat(
                    fontSize:  22,
                    fontWeight:  FontWeight.w600,
                    height:  1.6356665871,
                    letterSpacing:  -0.3000000119,
                    color:  Color(0xffffffff),
                  ),
                  ),
                    ],
                  ),
                  ),
                  
              ),
              ),

            //------------------------------

            Container(
                // displaypicturesp4 (1:37)
                margin:  EdgeInsets.fromLTRB(93, 0, 101, 36.5),
                // margin:  EdgeInsets.all(95),
                width:  double.infinity,
                child:  Center(
                // maskgroupR4t (1:39)
                child:SizedBox(
                  width:  double.infinity,
                  height:  100,
                  child:  
                    Image.network(
                      'https://picsum.photos/250?image=9',
                      width:  88,
                      height:  95,
                    ),
                  ),
              ),
            ),
            Container(
                child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.fromLTRB(60,10,60,15),
                  // child: TextFormField(
                  //    style: TextStyle(color: Color.fromARGB(255, 255, 255, 255)),
                  //   decoration: const InputDecoration(
                  //       labelText: "Username",
                  //       fillColor: Colors.white,
                  //       focusedBorder: OutlineInputBorder(
                  //           borderSide:
                  //               BorderSide(color: Colors.blue, width: 2.0))),
                  // ),

                  child: TextField(
                  keyboardType: TextInputType.visiblePassword,
                  
                  decoration: InputDecoration(
                    floatingLabelBehavior: FloatingLabelBehavior.never, //Hides label on focus or if filled
                    labelText: "Username",
                    filled: true, // Needed for adding a fill color
                    fillColor: Color.fromARGB(255, 240, 150, 150),
                    isDense: true, // Reduces height a bit
                    border: OutlineInputBorder(
                      borderSide: BorderSide.none, // No border
                      borderRadius: BorderRadius.circular(12), // Apply corner radius
                    ),
                    prefixIcon: Icon(account_circle, size: 24,),
                    // suffixIcon: Padding(
                    //   padding: const EdgeInsets.fromLTRB(0, 0, 4, 0),
                    //   child: GestureDetector(
                    //     onTap: _toggleObscured,
                    //     child: Icon(
                    //       _obscured
                    //           ? Icons.visibility_rounded
                    //           : Icons.visibility_off_rounded,
                    //       size: 24,
                    //     ),
                    //   ),
                    // ),
                  ),
                  ),
                ),
                // Padding(
                //   padding: EdgeInsets.all(60),
                //   child: TextFormField(
                //     obscureText: !_passwordVisible,
                //     enableSuggestions: false,
                //     autocorrect: false,
                //     decoration: const InputDecoration(
                //         labelText: "Password",
                //         fillColor: Colors.white,
                //         focusedBorder: OutlineInputBorder(
                //             borderSide:
                //                 BorderSide(color: Colors.blue, width: 2.0))),
                //   ),
                // ),


                //New
                // TextFormField(
                //   keyboardType: TextInputType.text,
                //   controller: _userPasswordController,
                //   obscureText:
                //       !_passwordVisible, //This will obscure text dynamically
                //   decoration: InputDecoration(
                //     labelText: 'Password',
                //     hintText: 'Enter your password',
                //     // Here is key idea
                //     suffixIcon: IconButton(
                //       icon: Icon(
                //         // Based on passwordVisible state choose the icon
                //         _passwordVisible
                //             ? Icons.visibility
                //             : Icons.visibility_off,
                //         color: Theme.of(context).primaryColorDark,
                //       ),
                //       onPressed: () {
                //         // Update the state i.e. toogle the state of passwordVisible variable
                //         setState(() {
                //           _passwordVisible = !_passwordVisible;
                //         });
                //       },
                //     ),
                //   ),
                // ),

                //custom
                 
                 
                  PasswordField(),
                 



              ],
            )),



            
            SizedBox(
              width: double.infinity,
              height: 15,
            ),
            // Container(
            //   child: ElevatedButton(
            //     onPressed: () {
            //       Navigator.of(context).push(
            //           MaterialPageRoute(builder: (context) => HomePage()));
            //     },
            //     style: ElevatedButton.styleFrom(
            //       backgroundColor: Colors.blue,
            //     ),
            //     child: const Text(
            //       "Login",
            //       style: TextStyle(
            //         color: Colors.white,
            //         fontSize: 30,
            //       ),
            //     ),
            //   ),
            // ),
            SizedBox(
              width: double.infinity,
              height: 15,
            ),
            // Container(
            //   child: ElevatedButton(
            //     onPressed: () {
            //       Navigator.of(context).push(
            //           MaterialPageRoute(builder: (context) => CreateaccPage()));
            //     },
            //     style: ElevatedButton.styleFrom(
            //       backgroundColor: Colors.green,
            //     ),
            //     child: const Text(
            //       "Create Account",
            //       style: TextStyle(
            //         color: Colors.white,
            //         fontSize: 30,
            //       ),
            //     ),
            //   ),
            // ),


            //Login Button
            TextButton(
            onPressed:  () {
              Navigator.of(context).push(MaterialPageRoute(builder: (context) => HomePage()));
            },
            style:  TextButton.styleFrom (
              padding:  EdgeInsets.zero,
            ),
            child:  
          Container(
            width:  275,
            height:  40,
            decoration:  BoxDecoration (
              color:  Color(0xffffffff),
              borderRadius:  BorderRadius.circular(19),
              boxShadow:  [
                BoxShadow(
                  color:  Color(0x93000000),
                  offset:  Offset(0, 4),
                  blurRadius:  2,
                ),
              ],
            ),
            child:  
          Center(
            child:  
          Center(
            child:  
          Text(
            'Login',
            textAlign:  TextAlign.center,
            // style:  SafeGoogleFont (
            //   'Montserrat',
            //   fontSize:  16,
            //   fontWeight:  FontWeight.w600,
            //   height:  1.6356666088,
            //   letterSpacing:  -0.3000000119,
            //   color:  Color(0xff000000),
            // ),
            style: GoogleFonts.montserrat(
              fontSize:  16,
              fontWeight:  FontWeight.w600,
              height:  1.6356666088,
              letterSpacing:  -0.3000000119,
              color:  Color(0xff000000),
            ),
          ),
          ),
          ),
          ),
          ),
          

          //Create acc

          Container(
                // buttonVqa (1:44)
                margin:  EdgeInsets.fromLTRB(7,10,0,0),
                width:  275,
                height:  40,
                child:  
              TextButton(
                // buttonquS (1:45)
                onPressed:  () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => CreateaccPage()));
                },
                style:  TextButton.styleFrom (
                  padding:  EdgeInsets.zero,
                ),
                child:  
              Container(
                width:  double.infinity,
                height:  double.infinity,
                decoration:  BoxDecoration (
                  border:  Border.all(color: Color(0xffffffff)),
                  color:  Color(0x00ffffff),
                  borderRadius:  BorderRadius.circular(19),
                  boxShadow:  [
                    BoxShadow(
                      color:  Color(0x93000000),
                      offset:  Offset(0, 4),
                      blurRadius:  2,
                    ),
                  ],
                ),
                child:  
              Center(
                child:  
              Center(
                child:  
              Text(
                'Create Account',
                textAlign:  TextAlign.center,
                
                style: GoogleFonts.montserrat(
                  fontSize:  16,
                  fontWeight:  FontWeight.w600,
                  height:  1.6356666088,
                  letterSpacing:  -0.3000000119,
                  color:  Color(0xffffffff),
                ),
              ),
              ),
              ),
              ),
              ),
              ),



          ],
        ),
      ),
        
      );
      
       
  }
}


