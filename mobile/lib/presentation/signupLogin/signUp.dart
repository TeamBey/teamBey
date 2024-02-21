import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:teambey_org/presentation/signupLogin/signIn.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    double height=MediaQuery.of(context).size.height;
    double width=MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 33, 126, 115),
      body: Center(
        child: Container(
          height: height*0.82,
          width: width*0.85,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(45)
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: Row(
                    children: [
                      RichText(text: TextSpan(
                        children: [
                          TextSpan(
                            text: 'Welcome to \nTeamBey\n',
                            style: GoogleFonts.cabin(
                              fontSize: 23,
                              color: Colors.black
                            )
                          ),
                          TextSpan(text: 'Sign Up',
                          style: GoogleFonts.poppins(
                            fontSize: 37,
                            color:Colors.black,
                            fontWeight: FontWeight.w500
                          ))
                        ]
                      )),
                      SizedBox(width: width*0.18),
                     Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Already have \nan account?',
                            style: GoogleFonts.cabin( 
                              fontSize: 15,
                              color: Colors.black
                            )),
                            TextButton(onPressed: (){
                                Navigator.push(context, MaterialPageRoute(builder: (context)=> SignIn()));
                              },
                               child: Text('Sign In',
                               style: GoogleFonts.poppins( 
                                fontSize: 15,
                                color: Colors.blue
                               ),)),
                          ],
                        ),
                      
                    ],
                   ),
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
                        width: width*0.003
                      )
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(
                        color:  Color.fromARGB(255, 33, 126, 115),
                        width: width*0.003
                      )
                    ),
                    focusedBorder: OutlineInputBorder( 
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide( 
                        color: Color.fromARGB(255, 33, 126, 115),
                        width: width*0.003
                      )
                    ),
            
                  ),
                ),
               ),
               SizedBox(height: height*0.03,),
               Row( 
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('User Name',
                      style: GoogleFonts.cabin(
                        fontSize: 18.5,
                        color: Colors.black
                      )),
                      SizedBox(height: height*0.015,),
                      Container(
                        height: height*0.067,
                        width: width*0.37,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: TextFormField(
                          style: GoogleFonts.cabin(
                            fontSize: 18
                          ),
                          decoration: InputDecoration( 
                            hintText: 'User Name',
                            hintStyle: GoogleFonts.cabin( 
                              fontSize: 18,
                              color: Colors.grey
                            ),
                            enabledBorder: OutlineInputBorder( 
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide(
                                color: Color.fromARGB(255, 33, 126, 115),
                                width: width*0.003
                              ),
                            ),
                            border: OutlineInputBorder( 
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide( 
                                color: Color.fromARGB(255, 33, 126, 115),
                                width: width*0.003
                              )
                            ),
                            focusedBorder: OutlineInputBorder( 
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide( 
                                color: Color.fromARGB(255, 33, 126, 115),
                                width: width*0.003
                              )
                            )
                          ),
                          
                        ),
                      )

                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Phone Number',
                      style: GoogleFonts.cabin( 
                        fontSize: 18.5,
                        color: Colors.black
                      ),),
                      SizedBox(height: height*0.015,),
                      Container( 
                        height: height*0.067,
                        width: width*0.37,
                        decoration: BoxDecoration( 
                          borderRadius: BorderRadius.circular( 10),
                          
                        ),
                        child: TextFormField( 
                           style: GoogleFonts.cabin( 
                            fontSize: 18
                           ),
                           decoration: InputDecoration( 
                            hintText: 'Phone Number',
                            hintStyle: GoogleFonts.cabin( 
                              fontSize: 18,
                              color: Colors.grey
                            ),
                            border: OutlineInputBorder( 
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide( 
                                color: Color.fromARGB(255, 33, 126, 115),
                                width: width*0.003,
                              )
                            ),
                            enabledBorder: OutlineInputBorder( 
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide( 
                                color: Color.fromARGB(255, 33, 126, 115),
                                width: width*0.003
                              )
                            ),
                            focusedBorder: OutlineInputBorder( 
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide( 
                                color: Color.fromARGB(255, 33, 126, 115),
                                width: width*0.003
                              )
                            )

                           ),
                        ),
                      )
                    ],
                  )
                ],
               ),
               SizedBox(height: height*0.03,), 
                  Text('Enter you Password',
                  textAlign: TextAlign.left,
                  style: GoogleFonts.cabin( 
                    fontSize: 18,
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
                  decoration: InputDecoration( 
                    hintText: 'Password',
                    hintStyle: GoogleFonts.cabin( 
                      fontSize: 18,
                      color: Colors.grey
                    ),
                    border: OutlineInputBorder( 
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide( 
                        color: Color.fromARGB(255, 33, 126, 115),
                        width: width*0.003
                      )
                    ),
                    enabledBorder: OutlineInputBorder( 
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide( 
                        color: Color.fromARGB(255, 33, 126, 115),
                        width: 0.003
                      )
                    ),
                    focusedBorder: OutlineInputBorder( 
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide( 
                        color: Color.fromARGB(255, 33, 126, 115),
                        width: width*0.003
                      )
                    )
                  ),
                  ),
                ),
                SizedBox(height: height*0.035,),
                Container(
                  height: height*0.072,
                  width: width*0.8,
                  decoration: BoxDecoration( 
                    color:Color.fromARGB(255, 33, 126, 115),
                    borderRadius: BorderRadius.circular(15)
                  ),
                  child: CupertinoButton(child: Text('Sign Up',
                  style: GoogleFonts.cabin( 
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