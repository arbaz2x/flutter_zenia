import 'package:floating_bottom_navigation_bar/floating_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';

class Explore extends StatefulWidget {
  @override
  _ExploreState createState() => _ExploreState();
}

class _ExploreState extends State<Explore> {
  int _selectedIndex = 1;
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text("Explore",
        style: TextStyle(
          color: Colors.black,
        ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Container(


                  height: 170,
                  width: double.infinity,
                  child:  RawMaterialButton(

                    fillColor: Colors.lime[50],
                    elevation: 11.0,
                    padding: EdgeInsets.symmetric(vertical: 5.0),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0)

                    ),

                    onPressed: () { },
                    child: TextButton(
                      onPressed: (){},
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children :  const [

                          Padding(
                            padding: EdgeInsets.only(left: 10.0,top: 87),
                            child: Text("True Beginner",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 29,
                                fontWeight: FontWeight.bold,
                              ),
                            ),

                          ),

                          Center(
                            child: CircleAvatar(
                              backgroundImage: AssetImage("assets/pose3.png",
                              ),
                              radius: 65,
                            ),
                          ),
                        ],

                      ),

                    ),


                  ),


                ),
              ],
            ),
           const SizedBox(
              height: 10,
            ),
            Container(


              // height: 90,
              width: double.infinity,
              child:  RawMaterialButton(

                fillColor: Colors.redAccent[100],
                elevation: 11.0,
                padding: EdgeInsets.symmetric(vertical: 5.0),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0)

                ),

                onPressed: () { },
                child: TextButton(
                  onPressed: (){},
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children :  const [

                      Padding(
                        padding: EdgeInsets.only(left: 10.0,top: 87),
                        child: Text("De-stress Yoga",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 29,
                            fontWeight: FontWeight.bold,
                          ),
                        ),

                      ),

                      Center(
                        child: CircleAvatar(
                          backgroundImage: AssetImage("assets/yoga.png",
                          ),
                          radius: 65,
                        ),
                      ),
                    ],

                  ),

                ),


              ),


            ),
            const SizedBox(
              height: 10,
            ),
            Container(


              // height: 90,
              width: double.infinity,
              child:  RawMaterialButton(

                fillColor: Colors.greenAccent[100],
                elevation: 11.0,
                padding: EdgeInsets.symmetric(vertical: 5.0),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0)

                ),

                onPressed: () { },
                child: TextButton(
                  onPressed: (){},
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children :  const [

                      Padding(
                        padding: EdgeInsets.only(left: 10.0,top: 87),
                        child: Text("Stress Releif",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 29,
                            fontWeight: FontWeight.bold,
                          ),
                        ),

                      ),

                      Center(
                        child: CircleAvatar(
                          backgroundImage: AssetImage("assets/pose4.png",
                          ),
                          radius: 65,
                        ),
                      ),
                    ],

                  ),

                ),


              ),


            ),
            const SizedBox(
              height: 10,
            ),
            Container(


              // height: 90,
              width: double.infinity,
              child:  RawMaterialButton(

                fillColor: Colors.tealAccent[100],
                elevation: 11.0,
                padding: EdgeInsets.symmetric(vertical: 5.0),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0)

                ),

                onPressed: () { },
                child: TextButton(
                  onPressed: (){},
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children :  const [

                      Padding(
                        padding: EdgeInsets.only(left: 10.0,top: 87),
                        child: Text("Get in shape",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 29,
                            fontWeight: FontWeight.bold,
                          ),
                        ),

                      ),

                      Center(
                        child: CircleAvatar(
                          backgroundImage: AssetImage("assets/pose1.png",
                          ),
                          radius: 65,
                        ),
                      ),
                    ],

                  ),

                ),


              ),


            ),
            const SizedBox(
              height: 10,
            ),
            Container(


              // height: 90,
              width: double.infinity,
              child:  RawMaterialButton(

                fillColor: Colors.cyan[100],
                elevation: 11.0,
                padding: EdgeInsets.symmetric(vertical: 5.0),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0)

                ),

                onPressed: () { },
                child: TextButton(
                  onPressed: (){},
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children :  const [

                      Padding(
                        padding: EdgeInsets.only(left: 10.0,top: 87),
                        child: Text("Pure Energy",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 29,
                            fontWeight: FontWeight.bold,
                          ),
                        ),

                      ),

                      Center(
                        child: CircleAvatar(
                          backgroundImage: AssetImage("assets/pose2.png",
                          ),
                          radius: 65,
                        ),
                      ),
                    ],

                  ),

                ),


              ),


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
        currentIndex: 1,
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
