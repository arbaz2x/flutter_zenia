import 'package:floating_bottom_navigation_bar/floating_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_zenia/Profile.dart';

class Challenge extends StatefulWidget {
  @override
  _ChallengeState createState() => _ChallengeState();
}

class _ChallengeState extends State<Challenge> {
  int _selectedIndex = 1;
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
  int _currentIndex=1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //

      body: Container(
        child: Column(
          children: [
            Stack(
              children : [
            Container(
              height:440 ,
              decoration: const  BoxDecoration(
                image : DecorationImage(
                  image:  AssetImage("assets/logo2.png"),
                  fit : BoxFit.cover,
                  alignment: Alignment.center,
                ),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(50.0),
                  bottomRight: Radius.circular(50.0),
                ),
              ),
            ),
            Positioned(

              top: 190,
              left: 50,
              child: Container(
                child: Column(
                  children: const [
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 15.0),
                      child: Text(
                        "60 sec",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                        ),
                      ),
                    ),
                  ],
                ),

              ),
            ),
                Padding(
                  padding:  EdgeInsets.only(top: 248.0,left: 39),
                  child: Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [

                        Padding(
                          padding: EdgeInsets.symmetric(vertical: 15.0),
                          child: Text(
                            "WARRIOR III challenge",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 35,
                            ),
                          ),
                        ),


                      ],
                    ),

                  ),
                ),
               const SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 328.0),
                  child: Container(

                    width: double.infinity,
                    child:  RawMaterialButton(

                      fillColor: Colors.white,
                      elevation: 10.0,
                      padding: EdgeInsets.symmetric(vertical: 15.0),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(32.0)

                      ),
                      onPressed: () { Navigator.push(context, MaterialPageRoute(builder :(context) => Profile())); },
                      child: const Text("Start the challenge",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                            fontSize: 19.0
                        ),),
                    ),
                  ),
                ),
           ],
          ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 28.0),
              child: Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Text("You must hold the warrior III pose for one minute in order to \n complete the challenge."
                      ,
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.black,
                        //fontWeight: FontWeight.bold,
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
              padding: const EdgeInsets.only(left: 18.0),
              child: Container(
                child: Row(
                  //mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Text("Leaderboard"
                      ,
                      style: TextStyle(
                        fontSize: 25,
                        color: Colors.black,
                        fontWeight:  FontWeight.bold,
                      ),
                    ),

                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 78.0),
              child: IconButton(onPressed: (){},
                  icon: Icon(Icons.star,
                  color: Colors.yellow,
                  size: 40,)),

            ),


            const Padding(
              padding: EdgeInsets.only(bottom: 8.0),
              child: Text("+12,235 completed challenges",style:TextStyle(
                color: Colors.grey,
                fontSize: 20,
              ) ,),
            ),
          ],
        ),
      ),
      bottomNavigationBar: FloatingNavbar(
        backgroundColor: Colors.deepOrangeAccent,
        selectedBackgroundColor: Colors.white,
        onTap: (int val) {
          //returns tab id which is user tapped
        },
        currentIndex: 2,
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
