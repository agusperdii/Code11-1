import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFAFAD9),
      appBar: AppBar(
        automaticallyImplyLeading: false,
        toolbarHeight: 0,
        backgroundColor: Color(0xFFFAFAD9),
      ),
      floatingActionButton: FloatingActionButton(onPressed: () {
        
      },
      child: Icon(Icons.add, size: 30, color: Colors.white,),
      backgroundColor: Colors.amber,
      shape: CircleBorder(),
      
      
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [Stack(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              
              Padding(
                padding: const EdgeInsets.only(left: 30.0, top: 30),
                child: Text("Hello agusperdii!", style: GoogleFonts.poppins(fontSize: 15, fontWeight: FontWeight.w400)),
              ),
              
              Padding(
                padding: const EdgeInsets.only(top: 5, left: 30.0),
                child: Text("You've", style: GoogleFonts.poppins(fontSize: 24, fontWeight: FontWeight.w700)),
              ),
              
              Padding(
                padding: const EdgeInsets.only(left: 30.0),
                child: Row(
                  children: [
                    Text("3 Tasks ", style: GoogleFonts.poppins(fontSize: 24, fontWeight: FontWeight.w700, color: Colors.amber)),
                    Text("Today", style: GoogleFonts.poppins(fontSize: 24, fontWeight: FontWeight.w700)),
                  ],
                ),
              ),
             
             Stack(
                children: [
                  Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 40, left: 30.0),
                            child: Text("To-Do", style: GoogleFonts.poppins(fontSize: 24, fontWeight: FontWeight.w600)),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 0, left: 32.0),
                            child: Text("Your recents To-Do List", style: GoogleFonts.poppins(fontSize: 13, fontWeight: FontWeight.w400)),
                          ),
                        ],
                      ),
                    ],
                  ),

                  Positioned(
                    top: 40.0,
                    right: 30.0,
                    child: GestureDetector(
                      onTap: () {
                        // Handle floating icon tap
                        print('Floating icon tapped!');
                      },
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: Colors.amber
                        ),
                        onPressed: () {
                          print("Show All icon tapped");
                        },
                        child: Text("Show All", style: GoogleFonts.poppins(color: Colors.white)),
                      ),
                    ),
                  ),
                ],
              ),
            

            Padding(
              padding: const EdgeInsets.only(left: 30, top: 10),
              child: Container(
                height: 114,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 0),
                      child: Container(
                        width: 160,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Color(0xFFED9898),),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 10, left: 14),
                            child: Text(
                              "Scientific Paper", 
                              style: GoogleFonts.poppins(
                                color: Colors.white,
                                fontWeight: FontWeight.w700,
                                fontSize: 12),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top:5,),
                            child: Row(
                              children: [
                                const Padding(
                                  padding: EdgeInsets.only(left: 14.0),
                                  child: Icon(Icons.check_circle, size: 12, color: Colors.white,),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 6.0),
                                  child: Text(
                                    "Looking for Journals", 
                                    style: GoogleFonts.poppins(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w400,
                                      fontSize: 11,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top:5,),
                            child: Row(
                              children: [
                                const Padding(
                                  padding: EdgeInsets.only(left: 14.0),
                                  child: Icon(Icons.check_circle, size: 12, color: Colors.white,),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 6.0),
                                  child: Text(
                                    "Distribute Form", 
                                    style: GoogleFonts.poppins(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w400,
                                      fontSize: 11,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top:5,),
                            child: Row(
                              children: [
                                const Padding(
                                  padding: EdgeInsets.only(left: 14.0),
                                  child: Icon(Icons.circle_outlined, size: 12, color: Colors.white,),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 6.0),
                                  child: Text(
                                    "Start Writing", 
                                    style: GoogleFonts.poppins(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w400,
                                      fontSize: 11,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.only(top:5,),
                            child: Row(
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(left: 14.0),
                                  child: Icon(Icons.more_horiz, size: 12, color: Colors.white,),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                      ),
                    ),



                    Padding(
                      padding: const EdgeInsets.only(left: 17.0),
                      child: Container(
                        width: 148,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Color(0xFF84D8B5)),
                          child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 10, left: 14),
                            child: Text(
                              "Today's Activity", 
                              style: GoogleFonts.poppins(
                                color: Colors.white,
                                fontWeight: FontWeight.w700,
                                fontSize: 12),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top:5,),
                            child: Row(
                              children: [
                                const Padding(
                                  padding: EdgeInsets.only(left: 14.0),
                                  child: Icon(Icons.check_circle, size: 12, color: Colors.white,),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 6.0),
                                  child: Text(
                                    "Math Class", 
                                    style: GoogleFonts.poppins(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w400,
                                      fontSize: 11,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top:5,),
                            child: Row(
                              children: [
                                const Padding(
                                  padding: EdgeInsets.only(left: 14.0),
                                  child: Icon(Icons.check_circle, size: 12, color: Colors.white,),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 6.0),
                                  child: Text(
                                    "Buy Groceries", 
                                    style: GoogleFonts.poppins(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w400,
                                      fontSize: 11,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top:5,),
                            child: Row(
                              children: [
                                const Padding(
                                  padding: EdgeInsets.only(left: 14.0),
                                  child: Icon(Icons.check_circle, size: 12, color: Colors.white,),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 6.0),
                                  child: Text(
                                    "Return the Books", 
                                    style: GoogleFonts.poppins(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w400,
                                      fontSize: 11,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.only(top:5,),
                            child: Row(
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(left: 14.0),
                                  child: Icon(Icons.more_horiz, size: 12, color: Colors.white,),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                      ),
                    ),
                    


                    Padding(
                      padding: const EdgeInsets.only(left: 17.0,),
                      child: Container(
                        width: 160,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Color(0xFFBC84E8)),
                          child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 10, left: 14),
                            child: Text(
                              "Final Term", 
                              style: GoogleFonts.poppins(
                                color: Colors.white,
                                fontWeight: FontWeight.w700,
                                fontSize: 12),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top:5,),
                            child: Row(
                              children: [
                                const Padding(
                                  padding: EdgeInsets.only(left: 14.0),
                                  child: Icon(Icons.check_circle, size: 12, color: Colors.white,),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 6.0),
                                  child: Text(
                                    "Review Materials", 
                                    style: GoogleFonts.poppins(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w400,
                                      fontSize: 11,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top:5,),
                            child: Row(
                              children: [
                                const Padding(
                                  padding: EdgeInsets.only(left: 14.0),
                                  child: Icon(Icons.circle_outlined, size: 12, color: Colors.white,),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 6.0),
                                  child: Text(
                                    "Rewatch Videos", 
                                    style: GoogleFonts.poppins(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w400,
                                      fontSize: 11,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top:5,),
                            child: Row(
                              children: [
                                const Padding(
                                  padding: EdgeInsets.only(left: 14.0),
                                  child: Icon(Icons.circle_outlined, size: 12, color: Colors.white,),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 6.0),
                                  child: Text(
                                    "Recheck Assignments", 
                                    style: GoogleFonts.poppins(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w400,
                                      fontSize: 11,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.only(top:5,),
                            child: Row(
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(left: 14.0),
                                  child: Icon(Icons.more_horiz, size: 12, color: Colors.white,),
                                ),
                              ],
                            ),
                          )
                        ],
                      )
                        ),
                      ),
                  ],
                )),
            ),

            Padding(
              
                padding: const EdgeInsets.only(top: 40, left: 48.0),
                child: 

                
              Container(
              width: 313,
              height: 45,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(24.5),
                color: Colors.white,
                border: Border.all(
                  color: Colors.black.withOpacity(0.15),
                  width: 1,
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left:10),
                      child: Icon(Icons.search, size: 25, color: Color(0xFFBFBFBF),),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10.0),
                      child: Text("Search Memo", style: GoogleFonts.poppins(fontSize: 15, color: Color(0xFFBFBFBF)),),
                    ),
                  ],
                ),
              ),
              )
              ),
              

            
              Center(
                child: Padding(
                  padding: const EdgeInsets.only(top: 25, left: 0, right: 0),
                  child: Container(
                width: 348,
                height: 130,
                decoration: BoxDecoration( 
                  image: const DecorationImage(
                    image: AssetImage(
                      'assets/images/gambar.png'), 
                      fit: BoxFit.cover),
                  borderRadius: BorderRadius.circular(15),
                  color: Color(0xFFB6D379),
                ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 8.0, top: 5),
                            child: Image.asset('assets/images/Pin.png',),
                          ), 
                          
                          Padding(
                            padding: const EdgeInsets.only(left:260),
                            child: Icon(Icons.more_horiz,
                              color: Colors.white,
                              size: 35,
                              shadows: [
                                Shadow(
                        color: Colors.black.withOpacity(0.3),
                        offset: Offset(0, 3),
                        blurRadius: 10, 
                        
                      ),
                              ],),
                          )
                        ],
                      ),
                      Center(child: Padding(
                        padding: const EdgeInsets.only(top: 12),
                        child: Text(
                          'Chemistry', 
                          style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w800, 
                            fontSize: 25,
                            color: Colors.white,
                            shadows: [
                      Shadow(
                        color: Colors.black.withOpacity(0.3),
                        offset: Offset(0, 3),
                        blurRadius: 10, 
                      ),
                    ],),),
                      )),
                    ],
                  ),),
                ),
              ),


                            Center(
                child: Padding(
                  padding: const EdgeInsets.only(top: 25, left: 0, right: 0),
                  child: Container(
                width: 348,
                height: 130,
                decoration: BoxDecoration( 
                  image: const DecorationImage(
                    image: AssetImage(
                      'assets/images/image2.png'), 
                      fit: BoxFit.cover),
                  borderRadius: BorderRadius.circular(15),
                  color: Color(0xFFF38C8C),
                ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 8.0, top: 5),
                            child: Image.asset('assets/images/Pin.png',),
                          ), 
                          
                          Padding(
                            padding: const EdgeInsets.only(left:260),
                            child: Icon(Icons.more_horiz,
                              color: Colors.white,
                              size: 35,
                              shadows: [
                                Shadow(
                        color: Colors.black.withOpacity(0.3),
                        offset: Offset(0, 3),
                        blurRadius: 10, 
                        
                      ),
                              ],),
                          )
                        ],
                      ),
                      Center(child: Padding(
                        padding: const EdgeInsets.only(top: 12),
                        child: Text(
                          'Physics', 
                          style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w800, 
                            fontSize: 25,
                            color: Colors.white,
                            shadows: [
                      Shadow(
                        color: Colors.black.withOpacity(0.3),
                        offset: Offset(0, 3),
                        blurRadius: 10, 
                      ),
                    ],),),
                      )),
                    ],
                  ),),
                ),
              ),



                            Center(
                child: Padding(
                  padding: const EdgeInsets.only(top: 25, left: 0, right: 0),
                  child: Container(
                width: 348,
                height: 130,
                decoration: BoxDecoration( 
                  image: const DecorationImage(
                    image: AssetImage(
                      'assets/images/image3.png'), 
                      fit: BoxFit.cover),
                  borderRadius: BorderRadius.circular(15),
                  color: Color(0xFF98C0E4),
                ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left:298),
                            child: Icon(Icons.more_horiz,
                              color: Colors.white,
                              size: 35,
                              shadows: [
                                Shadow(
                        color: Colors.black.withOpacity(0.3),
                        offset: Offset(0, 3),
                        blurRadius: 10, 
                        
                      ),
                              ],),
                          )
                        ],
                      ),
                      Center(child: Padding(
                        padding: const EdgeInsets.only(top: 12),
                        child: Text(
                          'Mathematics', 
                          style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w800, 
                            fontSize: 25,
                            color: Colors.white,
                            shadows: [
                      Shadow(
                        color: Colors.black.withOpacity(0.3),
                        offset: Offset(0, 3),
                        blurRadius: 10, 
                      ),
                    ],),),
                      )),
                    ],
                  ),),
                ),
              ),




                            Center(
                child: Padding(
                  padding: const EdgeInsets.only(top: 25, left: 0, right: 0),
                  child: Container(
                width: 348,
                height: 130,
                decoration: BoxDecoration( 
                  image: const DecorationImage(
                    image: AssetImage(
                      'assets/images/image4.png'), 
                      fit: BoxFit.cover),
                  borderRadius: BorderRadius.circular(15),
                  color: Color.fromARGB(255, 211, 205, 121),
                ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left:298),
                            child: Icon(Icons.more_horiz,
                              color: Colors.white,
                              size: 35,
                              shadows: [
                                Shadow(
                        color: Colors.black.withOpacity(0.3),
                        offset: Offset(0, 3),
                        blurRadius: 10, 
                        
                      ),
                              ],),
                          )
                        ],
                      ),
                      Center(child: Padding(
                        padding: const EdgeInsets.only(top: 12),
                        child: Text(
                          'Biology', 
                          style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w800, 
                            fontSize: 25,
                            color: Colors.white,
                            shadows: [
                      Shadow(
                        color: Colors.black.withOpacity(0.3),
                        offset: Offset(0, 3),
                        blurRadius: 10, 
                      ),
                    ],),),
                      )),
                    ],
                  ),),
                ),
              ),





                            Center(
                child: Padding(
                  padding: const EdgeInsets.only(top: 25, left: 0, right: 0),
                  child: Container(
                width: 348,
                height: 130,
                decoration: BoxDecoration( 
                  image: const DecorationImage(
                    image: AssetImage(
                      'assets/images/image5.png'), 
                      fit: BoxFit.cover),
                  borderRadius: BorderRadius.circular(15),
                  color: Color.fromARGB(255, 161, 113, 206),
                ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left:298),
                            child: Icon(Icons.more_horiz,
                              color: Colors.white,
                              size: 35,
                              shadows: [
                                Shadow(
                        color: Colors.black.withOpacity(0.3),
                        offset: Offset(0, 3),
                        blurRadius: 10, 
                        
                      ),
                              ],),
                          )
                        ],
                      ),
                      Center(child: Padding(
                        padding: const EdgeInsets.only(top: 12),
                        child: Text(
                          'English', 
                          style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w800, 
                            fontSize: 25,
                            color: Colors.white,
                            shadows: [
                      Shadow(
                        color: Colors.black.withOpacity(0.3),
                        offset: Offset(0, 3),
                        blurRadius: 10, 
                      ),
                    ],),),
                      )),
                    ],
                  ),),
                ),
              ),
            ],
          ),

          Positioned(
            top: 45.0,
            right: 30.0,
            child: GestureDetector(
              onTap: () {
                // Handle floating icon tap
                print('Floating icon tapped!');
              },
              child: Image.asset('assets/images/halow.png')
            ),
          ),
        
        ],
      ),]))
    );
  }
}
