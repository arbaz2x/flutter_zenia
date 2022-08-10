import 'package:floating_bottom_navigation_bar/floating_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_zenia/Challenge.dart';
import 'package:flutter_zenia/Explore.dart';
import 'package:flutter_zenia/SignUp.dart';
import 'package:flutter_zenia/Profile.dart';
import 'package:google_fonts/google_fonts.dart';
import 'welcome.dart';
class HomeView extends StatefulWidget {
  // ignore: non_constant_identifier_names
  
  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  int _selectedIndex = 0;
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  static const List<Widget> _pages = <Widget>[

  ];
   int _currentIndex =0;
   final screen =[
     HomeView(),
     Challenge(),
     Profile(),

   ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: SingleChildScrollView(
        child: Container(

          child: Padding(
          padding: EdgeInsets.only(top: 70,left: 15),
            child: Column(
              //mainAxisAlignment: MainAxisAlignment.start,
              children: [

                   Padding(
                     padding: EdgeInsets.only(right:175),
                   child: Row(
                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        child:const Center(
                          child: CircleAvatar(
                            backgroundImage: AssetImage("assets/zenia.png"),
                            radius: 23,
                          ),


                        ),
                      ),
                      Row(
                        children:  [
                          Text(
                            "Hi Yoga Lover!",
                            style: GoogleFonts.lato(
                              letterSpacing: 1,
                              fontSize: 25.0,
                              fontWeight: FontWeight.bold,
                              color:Colors.black,
                            ),
                          )
                        ],
                      ),
                    ],
                ),
                 ),
                const SizedBox(
                  height: 12,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 58.0),
                  child: Row(
                      children : [
                        Text(
                          "Challenge Yourself! Do yoga 3 times a week",
                          style: GoogleFonts.oxygen(
                            fontSize: 15.0,
                            fontWeight: FontWeight.bold,
                            color:Colors.grey,
                          ),
                        ),
                      ],
                  ),
                ),

                const SizedBox(
                  height: 15,
                ),

                Container(
                  //width: 190,
                  child:  RawMaterialButton(
                    onLongPress: (){Navigator.push(context, MaterialPageRoute(builder :(context) => Explore()));},
                    fillColor: Colors.white,
                    elevation: 3.0,
                    padding: EdgeInsets.symmetric(vertical: 0.0),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(17.0)
                    ),
                    onPressed: () {Navigator.push(context, MaterialPageRoute(builder :(context) => Explore()));   },
                    child: TextButton(
                      onPressed: (){},
                      child: Row(
                        children : [
                          IconButton(onPressed: () { Navigator.push(context, MaterialPageRoute(builder :(context) => Challenge())); },
                            icon: Icon(Icons.star),
                            color: Colors.yellow,
                            iconSize: 35,
                          ),
                           Text("Achieve your goals",
                            style: GoogleFonts.mavenPro(
                              color: Colors.black,
                              fontSize: 21,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 95.0),
                            child: IconButton(onPressed: () {Navigator.push(context, MaterialPageRoute(builder :(context) => Challenge()));  },
                              icon: Icon(Icons.arrow_forward_ios_outlined),
                              color: Colors.grey,
                              iconSize: 35,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
               /////////
               const SizedBox(
                  height: 12,
                ),
                Container(
                  //width: 190,
                  child:  RawMaterialButton(
                    onLongPress: (){Navigator.push(context, MaterialPageRoute(builder :(context) => Profile()));},
                    fillColor: Colors.white,
                    elevation: 3.0,
                    padding: EdgeInsets.symmetric(vertical: 0.0),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(17.0)
                    ),
                    onPressed: () {Navigator.push(context, MaterialPageRoute(builder :(context) => Profile()));   },
                    child: TextButton(
                      onPressed: (){},
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children : [
                          IconButton(onPressed: () {Navigator.push(context, MaterialPageRoute(builder :(context) => Profile()));  },
                            icon: Icon(Icons.person),
                            color: Colors.grey,
                            iconSize: 35,
                          ),
                           Text("Set up your account",
                            style: GoogleFonts.mavenPro(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 21,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 85.0),
                            child: IconButton(onPressed: () {Navigator.push(context, MaterialPageRoute(builder :(context) => Profile())); },
                              icon: Icon(Icons.arrow_forward_ios_outlined),
                              color: Colors.grey,
                              iconSize: 35,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 13,
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children : [
                    Text(
                      "Recommended Courses",
                      style: GoogleFonts.mavenPro(
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold,
                        color:Colors.black,
                      ),
                    ),
                     Padding(
                      padding:  EdgeInsets.only(left: 100.0),
                      child: Text("explore",style: GoogleFonts.lato(
                        color: Colors.grey,
                        fontSize: 17,
                      ),),
                    ),
                    IconButton(onPressed: (){ Navigator.push(context, MaterialPageRoute(builder :(context) => Explore()));},
                        icon: Icon(Icons.arrow_forward_sharp))
                  ],
                ),
                // the yoga girl picture
                Container(
                  height: 300,
                  decoration:const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(58.0)),
                    image : DecorationImage(
                      image:  AssetImage("assets/yoga2.png",
                      ),

                      fit : BoxFit.contain,
                    ),
                  ),
                  child: Column(
                    children:  [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children:    [
                          Padding(
                            padding:EdgeInsets.only(top: 55.0,),
                            child: Text(
                              "35 Days , BEGINNER ",
                              style: GoogleFonts.lato(
                                letterSpacing: 3,
                                fontSize: 20,
                                color: Colors.white54,
                                //fontWeight: FontWeight.bold,
                                //letterSpacing: 1.6,
                              ),
                            ),
                          ),

                        ],
                      ),
                      const SizedBox(height: 12,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children:    [
                          Padding(
                            padding:EdgeInsets.only(top: 10.0,),
                            child: Text(
                              " Begin your journey ",
                              style: GoogleFonts.bebasNeue(
                                letterSpacing: 5,
                                fontSize: 45,
                                color: Colors.white54,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 32,),
                            Row(

                          children :  [
                            Padding(
                            padding: EdgeInsets.only(top: 0.0, left: 73),
                            child :Text(
                            " with our followers  ",
                            style: GoogleFonts.oxygen(
                              fontSize: 25,
                              color: Colors.white54,
                             // fontWeight: FontWeight.bold,
                              //letterSpacing: 1.6,
                            ),
                           ),

                            ),
                            CircleAvatar(
                              radius: 20,
                              backgroundColor: Colors.deepOrangeAccent,
                              child: IconButton(onPressed: (){},
                                  icon: Icon(Icons.person_add_alt_1_outlined)),
                            )

                          ],
                ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 12,
                ),
                 Row(
                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                   children: [

                     Padding(
                      padding: EdgeInsets.only(right: 142.0),
                      child: Text(
                       "SINGLE PRACTICES",
                        style: GoogleFonts.laila(
                          color: Colors.blue,
                          fontWeight: FontWeight.bold,
                          fontSize: 15
                        ),
                      ),

                ),
                     Padding(
                       padding: const EdgeInsets.only(right: 5.0),
                       child: Text("explore",style: GoogleFonts.lato(
                         color: Colors.grey,
                         fontSize: 17,
                       ),
                       ),
                     ),
                     IconButton(onPressed: (){},
                         icon: Icon(Icons.arrow_forward))
                   ],

                 ),

                Container(
                  height: 300,
                  decoration:const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(58.0)),
                    image : DecorationImage(
                      image:  AssetImage("assets/pose.png"),

                      fit : BoxFit.contain,
                    ),
                  ),
                  child: Row(
                    children:  [
                      Padding(
                        padding: EdgeInsets.only(left: 68.0,bottom: 208,top: 0),
                        child: Text("Wheel Yoga",
                          style: GoogleFonts.bebasNeue(
                            letterSpacing: 12,
                            fontSize: 44,
                            color: Colors.white70,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),

                ),
                 const SizedBox(
                  height: 12,
                ),
                Container(
                  height: 300,
                  decoration:const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(58.0)),
                    image : DecorationImage(
                      image:  AssetImage("assets/logo2.png",
                      ),
                      fit : BoxFit.contain,

                    ),
                  ),
                  child: Row(
                    children:  [
                      Padding(
                        padding: EdgeInsets.only(left: 78.0,bottom: 158),
                        child: Text("Warrior Yoga",
                        style: GoogleFonts.bebasNeue(
                          letterSpacing: 7,
                          color:Colors.white54,
                          fontSize: 45,
                          fontWeight: FontWeight.bold,

                        ),
                        ),
                      ),
                    ],
                  ),

                ),
                Container(
                  height: 100,

                  child: Row(
                    children:  [
                       Padding(
                        padding: EdgeInsets.only(left: 0.0,bottom:28),
                        child: Text("Instructors of the week",
                          style: GoogleFonts.monda(
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                       Padding(
                        padding: EdgeInsets.only(left:70,bottom: 28.0),
                        child: Text("See all",
                        style: GoogleFonts.lato(
                          fontSize: 17,
                        ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(bottom: 28.0,left: 0,right: 0),
                        child: IconButton(onPressed:()  { },
                            icon: Icon(Icons.arrow_forward_ios_outlined)),
                      ),

                    ],
                  ),
                ),
              const SizedBox(
                height: 15,
              ),
                Padding(

                  padding: const EdgeInsets.only(right: 130.0),
                  child: Row(
                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children :    [
                      const Center(
                        child: CircleAvatar(
                          backgroundImage: AssetImage("assets/user3.png",
                          ),
                          radius: 45,
                        ),
                      ),
                       Padding(
                        padding: EdgeInsets.only(top: 7,right: 0,left: 12),
                        child: Text("Camila",
                          style: GoogleFonts.lato(
                            color: Colors.black,
                            fontSize: 27,
                            fontWeight: FontWeight.bold,
                          ),
                        ),

                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 38.0,),
                        child: IconButton(onPressed: (){},
                            icon: Icon(Icons.arrow_forward_sharp)),
                      ),

                    ],

                  ),
                ),
                const SizedBox(
                  height: 45,
                ),
                Padding(

                  padding: const EdgeInsets.only(right: 130.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children :   [
                      const Center(
                        child: CircleAvatar(
                          backgroundImage: AssetImage("assets/user2.png",
                          ),
                          radius: 45,
                        ),
                      ),
                       Padding(
                        padding: EdgeInsets.only(right: 0.0,top: 7,left: 12),
                        child: Text("Emily",
                          style: GoogleFonts.lato(
                            color: Colors.black,
                            fontSize: 27,
                            fontWeight: FontWeight.bold,
                          ),
                        ),

                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 38.0,),
                        child: IconButton(onPressed: (){},
                            icon: Icon(Icons.arrow_forward_sharp)),
                      ),
                    ],

                  ),
                ),
                const SizedBox(
                  height: 45,
                ),
                Padding(

                  padding: const EdgeInsets.only(right: 130.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children :   [
                      const Center(
                        child: CircleAvatar(
                          backgroundImage: AssetImage("assets/user4.png",
                          ),
                          radius: 45,
                        ),
                      ),
                       Padding(
                        padding: EdgeInsets.only(right: 0.0,top: 7),
                        child: Text("Jane",
                          style: GoogleFonts.lato(
                            color: Colors.black,
                            fontSize: 27,
                            fontWeight: FontWeight.bold,
                          ),
                        ),

                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 38.0,),
                        child: IconButton(onPressed: (){},
                            icon: Icon(Icons.arrow_forward_sharp)),
                      ),
                    ],

                  ),
                ),
            ]
          ),

    ),

    ),
      ),
      bottomNavigationBar: FloatingNavbar(
        backgroundColor: Colors.deepOrangeAccent,
        selectedBackgroundColor: Colors.white,
        onTap: (int val) {
          //returns tab id which is user tapped
        },
        currentIndex: 0,
        items: [
          FloatingNavbarItem(icon: Icons.home_filled, title: 'Home'),
          FloatingNavbarItem(icon: Icons.explore, title: 'Explore'),
          FloatingNavbarItem(icon: Icons.category_rounded, title: 'Challenge'),
          FloatingNavbarItem(icon: Icons.person, title: 'Profile'),
        ],
      ),

    );
  }
}
