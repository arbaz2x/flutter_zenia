import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter_zenia/SignUp.dart';
import 'package:flutter_zenia/HomeView.dart';
import 'package:google_fonts/google_fonts.dart';
//import 'package:google_fonts/google_fonts.dart';

class Welcome extends StatefulWidget {
  @override
  _WelcomeState createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          child: Column(
              children: [
               Stack (
                 children: [
                 Padding(
                   padding: const EdgeInsets.only(top: 108.0),
                   child: Container(
                height:410 ,
                decoration: const  BoxDecoration(
                image : DecorationImage(
                image:  AssetImage("assets/yoga4.png"),
                fit : BoxFit.cover,
                alignment: Alignment.center,
                ),
                borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(30.0),
                bottomRight: Radius.circular(30.0),
              ),
              ),
              ),
                 ),
                   Padding(
                     padding:  EdgeInsets.only(top:28.0,left: 75,bottom: 25),
                     child: Container(
                       height:65 ,
                       child: Column(
                         mainAxisAlignment: MainAxisAlignment.center,
                         children:  [
                           Text("MEET ZENIA",
                           style: GoogleFonts.lato(
                             fontSize: 40,
                             fontWeight: FontWeight.bold,
                             letterSpacing: 5,
                             color: Colors.purpleAccent,

                           ),
                           ),
                         ],
                       ),
                     ),
                   ),
                  const SizedBox(
                     height: 15,
                   ),
                   Padding(
                     padding: const EdgeInsets.only(top: 30.0,left: 75,bottom: 25),
                     child: Container(
                       height:175 ,
                       child: Column(
                         mainAxisAlignment: MainAxisAlignment.center,
                         children:  [
                           Text("ALL-in-one solutions for \n your fitness goals.",
                             style: GoogleFonts.lato(
                               fontSize: 27,
                               letterSpacing: 2,
                               color: Colors.grey,

                             ),
                           ),
                         ],

                       ),


                     ),
                   ),
                  const SizedBox(
                     height: 15,
                   ),
                   Container(
                     child: Column(
                       children: const [
                         Padding(
                           padding: EdgeInsets.only(top: 130.0,left: 70),
                           child: Text(
                             "",
                             style: TextStyle(
                               color: Colors.deepOrangeAccent,
                               fontSize: 30,
                             ),
                           ),
                         ),
                       ],
                     ),
                   ),
              ],
             ),
                const SizedBox(
                  height: 40,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 28.0),
                  child: Container(
                    child: Row(
                      children:  [
                        Text("Join the  #1 fitness app trusted by \n hundreds of thousands of people.",
                        style: GoogleFonts.raleway(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          letterSpacing: 1,
                          color: Colors.black,

                        )
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  width: double.infinity,
                  child:  RawMaterialButton(
                    fillColor: Colors.deepOrangeAccent,
                    elevation: 10.0,
                    padding: EdgeInsets.symmetric(vertical: 13.0),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(52.0)
                    ),
                    onPressed: () { Navigator.push(context, MaterialPageRoute(builder :(context) => HomeView())); },
                    child:  Text("Next",
                      style: GoogleFonts.oxygen(
                        letterSpacing: 3,
                          color: Colors.black,
                          fontSize: 24.0
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                GestureDetector(
                  onTap: (){ Navigator.push(context, MaterialPageRoute(builder :(context) => SignUp())); },
                  child: Padding(
                    padding:EdgeInsets.only(top: 5.0,left: 13),
                    child: Row(
                      mainAxisAlignment :MainAxisAlignment.spaceBetween,
                      children : [
                        Text(
                          " Already have an account? ",
                          style: GoogleFonts.dosis(
                            fontSize: 16,
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                         Center(
                          child: Padding(
                            padding: EdgeInsets.only(right: 173.0),

                            child: SizedBox(
                              height: 29,
                              child: Center(
                                child: Text(
                                  "Login",
                                  style: GoogleFonts.dosis(
                                    fontSize: 23.0,
                                    color: Colors.deepOrangeAccent,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 40,
                ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                    children : const [Text("by pressing the Next button, you confirm and gurantee that you\n"
                        "have read and agree to our Terms of use and Privacy Policy ",
                       style: TextStyle(
                         color: Colors.grey,
                         fontSize: 14
                       ),
                    ),
                      ],
                  ),
              ],



          ),



          ),
      ),


    );
  }
}
