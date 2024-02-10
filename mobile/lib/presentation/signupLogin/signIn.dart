import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:teambey_org/presentation/signupLogin/signUp.dart';

final  TextEditingController username=TextEditingController();
final TextEditingController password=TextEditingController();

class SignIn extends StatefulWidget {
  const SignIn({super.key});

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  @override
  Widget build(BuildContext context) {
    double height= MediaQuery.of(context).size.height;
    double width= MediaQuery.of(context).size.width;
    return Scaffold(
            backgroundColor: Color.fromARGB(255, 33, 126, 115),
      body: Center(
        child: Container(
          height: height*0.82,
          width: width*0.85,
          decoration:BoxDecoration(
            color: Color.fromARGB(255, 255, 255, 255),
            borderRadius: BorderRadius.circular(45),    
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 20),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                            RichText(
                              text: TextSpan(
                                children: [
                                  TextSpan(
                                    text: 'Welcome to \nTeamBey\n',
                                    style: GoogleFonts.cabin(
                                      fontSize: 23,
                                      color: Colors.black
                                    ),
                                  ),
                                  TextSpan(
                                    text: 'Sign In',
                                    style: GoogleFonts.poppins(
                                      fontSize: 37,
                                      color: Colors.black,
                                      fontWeight: FontWeight.w500
                                    )
                                  )
                                   
                                ]
                              )),
                         
                            SizedBox(
                              width: width*0.18,
                            ),
                             
                          Column(
                            children:
                             [
                              Text('No account? ',
                              style: GoogleFonts.cabin(
                                fontSize: 15,
                                color: Colors.black,
                              ),),
                            Container(
                              child: Padding(
                                padding: const EdgeInsets.only(right: 28),
                                child: TextButton(
                                onPressed: (){
                                  Navigator.push(
                                    context, 
                                    MaterialPageRoute(builder: (context)=>
                                    SignUp()));
                                } , 
                                child: Text('Sign Up',
                                textAlign: TextAlign.left,
                                  style: GoogleFonts.poppins(
                                    fontSize: 15,
                                    color: Colors.blue,
                                    decoration: TextDecoration.underline
                                                  
                                  ),
                                  )),
                              ),
                            )
                            ],
                          )
                      ],
                    ),
                  
                ),
                SizedBox(height: height*0.04,),
               Row(
                    children: [
                      Container(
                        height: height*0.066,
                        width: width*0.43,
                        
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: Color.fromARGB(57, 253, 173, 193),
                        ),
                        child: Row(
                          children: [
                            SizedBox(width: width*0.03,),
                            Image.asset("assets/images/google.png",
                            height: height*0.05,
                            width: width*0.05,),
                            SizedBox(width: width*0.03,),
                            Text('Sign in with Google',
                            style: GoogleFonts.poppins(
                              fontSize: 12,
                              color: Colors.black
                            ),)
                            
                          ],
                        ),
            
                      ),
                      SizedBox(width: width*0.02,),
            
                      InkWell(
                        onTap: () {
                          
                        },
                        child: Container(
                        height: height*0.066,
                        width: width*0.13,
                       decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: Color.fromARGB(57, 143, 214, 255),
                        ),
                        child: Center(
                          child: Image.asset("assets/images/facebook.png",
                          height: height*0.05,
                          width: width*0.05,),
                        ),
                      ),
                      ),
            
                      SizedBox(width: width*0.02,),
                      InkWell(
                        onTap: () {
                          
                        },
                      child:  Container(
                        height: height*0.066,
                        width: width*0.13,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: Color.fromARGB(57, 143, 214, 255),
                        ),
                          child: Center(
                          child: Image.asset("assets/images/apple.png",
                          height: height*0.077,
                          width: width*0.077,),
                        ),
                        
                      )
                      ),
            
                
                    ],
                  ),
                
                SizedBox(height: height*0.06,),
                Text('Enter your username or email address',
                style: GoogleFonts.cabin(
                  fontSize: 18.5,
                  color: Colors.black
                ),),
                SizedBox(height: height*0.015,),
                 Container(
                  height: height*0.067,
                  width: width*0.8,
                   child: TextFormField(
                    
                      style: GoogleFonts.cabin(
                        fontSize: 18
                      ),
                      controller: username,
                      decoration: InputDecoration( 
                          hintText: 'Username or email address',
                          hintStyle: GoogleFonts.cabin(
                            fontSize: 18,
                            color: Colors.grey
                          ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(
                          color: Color.fromARGB(255, 33, 126, 115),
                          width: width*0.005
                        )
                      ),
                  border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(
                          color: Color.fromARGB(255, 33, 126, 115),
                          width: width*0.005
                        )
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(
                          color: Color.fromARGB(255, 33, 126, 115),
                          width: width*0.005
                        )
                      )
                      ),
                    ),
                 ),

                SizedBox(height: height*0.04,),

                Padding(
                  padding: const EdgeInsets.only(right: 130),
                  child: Text('Enter your password',
                  style: GoogleFonts.cabin(
                    fontSize: 18.5,
                    color: Colors.black,
                    
                  ),),
                ),

                SizedBox(height: height*0.02,),
                 Container(
                  height: height*0.067,
                  width: width*0.8,
                   child: TextFormField(
                    
                      style: GoogleFonts.cabin(
                        fontSize: 18
                      ),
                      controller: password,
                      obscureText: true,
                      validator: (value) {
                        if(value!.isEmpty){
                          return 'Password cannot be empty!';
                        }
                        if (!RegExp(r'^(?=.*[a-zA-Z])(?=.*\d)(?=.*[@$!%*?&]).{6,}$').hasMatch(value)){
                          return 'Invalid password';
                        }
                        return null;
                      },
                      decoration: InputDecoration( 
                          hintText: 'Password',
                          hintStyle: GoogleFonts.cabin(
                            fontSize: 18,
                            color: Colors.grey
                          ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(
                          color: Color.fromARGB(255, 33, 126, 115),
                          width: width*0.005
                        )
                      ),
                  border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(
                          color: Color.fromARGB(255, 33, 126, 115),
                          width: width*0.005
                        )
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(
                          color: Color.fromARGB(255, 33, 126, 115),
                          width: width*0.005
                        )
                      )
                      ),
                    ),
                 ),
                               Container(
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                    left: 162,
                                  ),
                                  child: TextButton(
                                    child: Text(
                                      "Forgot Password?",
                                      style: GoogleFonts.cabin(
                                          color: Colors.blue,
                                          fontSize: 16,
                                          fontWeight: FontWeight.w500,
                                          decoration: TextDecoration.underline),
                                    ),
                                    onPressed: () {
                                    },
                                  ),
                                ),
                              ),
                SizedBox(height: height*0.04,),
                Container(               
                  height: height*0.072,
                  width: width*0.8,
                  decoration: BoxDecoration( 
                    color:  Color.fromARGB(255, 33, 126, 115),
                    borderRadius: BorderRadius.circular(15)
                  ),
                  child: CupertinoButton(child: Text('Sign In',
                  style: GoogleFonts.poppins(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                    color: Colors.white
                  ),),
                   onPressed: (){

                   }),
                )
                
              ],
            ),
          ),
        ),
      ),
    );
  }
}