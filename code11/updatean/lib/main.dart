import 'package:flutter/material.dart';
// ignore: depend_on_referenced_packages
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_svg/flutter_svg.dart';
// ignore: unused_import
import 'package:memow11/home.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginPage(),
      routes: {
        '/secondpage':(context) =>  SecondPage()
      },
    );
  }
}

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  void _login() {
    String username = _usernameController.text;
    String password = _passwordController.text;

    // Gantilah dengan logika otentikasi yang sesuai
    if (username == 'agusperdii' && password == 'agusperdii') {
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            backgroundColor: Color(0xFFFAFAD9),
            title: Text('Login Successfully', style: GoogleFonts.poppins(fontWeight: FontWeight.w600),),
            content: Text('Welcome back, $username!', style: GoogleFonts.poppins(fontWeight: FontWeight.w400)),
            actions: [
              TextButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: TextButton(onPressed: () { Navigator.pushNamed(context, '/secondpage');
                  
                }, child: Text("OK", style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w600, color: Colors.amber,
                  fontSize: 20),),),
              ),
            ],
          );
        },
      );
    } else {
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            backgroundColor: Color(0xFFFAFAD9),
            title: Text('Login Failed', style: GoogleFonts.poppins(fontWeight: FontWeight.w600)),
            content: Text('Check again your username and password!', style: GoogleFonts.poppins(fontWeight: FontWeight.w400)),
            actions: [
              TextButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: Text('OK', style: GoogleFonts.poppins(fontWeight: FontWeight.w600, fontSize: 20, color: Colors.amber)),
              ),
            ],
          );
        },
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: const Color(0xFFFAFAD9),
        appBar: AppBar(
          backgroundColor: const Color(0xFFFAFAD9),
          title: Center(
            child: Text(
              'Memo11',
              style: GoogleFonts.poppins(fontWeight: FontWeight.w700, fontSize: 30),
            ),
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 0.0, bottom: 16.0),
                child: Text(
                  'Log in to your Memow',
                  style: GoogleFonts.poppins(fontSize: 20),
                ),
              ),
              Center(
                child: Padding(
                  padding: const EdgeInsets.only(top: 20.0),
                  child: Image.asset('assets/images/gbr.png'),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 75.0),
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    SvgPicture.string(
                      '''
                      <svg width="305" height="49" viewBox="0 0 305 49" fill="none" xmlns="http://www.w3.org/2000/svg">
                        <rect width="305" height="49" rx="24.5" fill="white"/>
                        <rect x="0.5" y="0.5" width="304" height="48" rx="24" stroke="black" stroke-opacity="0.5"/>
                      </svg>
                      ''',
                    ), TextField(
                      controller: _usernameController,
                      style: GoogleFonts.poppins(),
                          decoration: const InputDecoration(
                            hintText: 'Email or Phone Number',
                            hintStyle: TextStyle(color: Colors.black),
                            border: InputBorder.none,
                            contentPadding: EdgeInsets.only(left: 80.0),
                            
                          ),
                        ),

                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 31.0),
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    SvgPicture.string(
                      '''
                      <svg width="305" height="49" viewBox="0 0 305 49" fill="none" xmlns="http://www.w3.org/2000/svg">
                        <rect width="305" height="49" rx="24.5" fill="white"/>
                        <rect x="0.5" y="0.5" width="304" height="48" rx="24" stroke="black" stroke-opacity="0.5"/>
                      </svg>
                      ''',
                    ), TextField(
                      obscureText: true,
                      controller: _passwordController,
                      style: GoogleFonts.poppins(),
                          decoration: const InputDecoration(
                            hintText: 'Password',
                            hintStyle: TextStyle(color: Colors.black),
                            border: InputBorder.none,
                            contentPadding: EdgeInsets.only(left: 80.0),
                            
                          ),
                        ), 
                        
                  ],
                ),
              ),
              Padding(
  padding: const EdgeInsets.only(top: 10.0),
  child: Column(
    children: [

      ElevatedButton(
  onPressed: _login,
  style: ElevatedButton.styleFrom(
    padding: EdgeInsets.all(0), // Atur sesuai kebutuhan Anda
  ),
  child: Container(
    width: 130,
    height: 44,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(22),
      color: const Color(0xFFF0C418),
    ),
    child: Center(
      child: Text(
        'Log In',
        style: GoogleFonts.poppins(color: Colors.white, fontWeight: FontWeight.w700, fontSize: 20),
      ),
    ),
  ),
)

    ],
  ),
),
                Padding(
  padding: const EdgeInsets.only(top: 31.0),
  child: Stack(
    alignment: Alignment.center,
    children: [
      SvgPicture.string(
        '''
        <svg width="305" height="1" viewBox="0 0 305 1" fill="none" xmlns="http://www.w3.org/2000/svg">
          <rect width="131" height="1" fill="#D9D9D9"/>
          <rect x="174" width="131" height="1" fill="#D9D9D9"/>
        </svg>
        ''',
      ),
      Positioned(
        child: Text(
          'or',
          style: GoogleFonts.poppins(
            fontSize: 20.0,
            color:Color(0xFF7D7D6D),
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    ],
  ),
),
Padding(
          padding: const EdgeInsets.only(top: 10.0),
          child: InkWell(
            onTap: () {
              // Tambahkan logika tombol di sini
            },
            child: Container(
              width: 305,
              height: 49,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(24.5),
                color: const Color(0xFFFFECA3),
                border: Border.all(
                  color: Colors.black.withOpacity(0.15),
                  width: 1,
                ),
              ),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(9.0),
                    child: SvgPicture.string('''<svg xmlns="http://www.w3.org/2000/svg"  viewBox="0 0 48 48" width="48px" height="48px"><path fill="#FFC107" d="M43.611,20.083H42V20H24v8h11.303c-1.649,4.657-6.08,8-11.303,8c-6.627,0-12-5.373-12-12c0-6.627,5.373-12,12-12c3.059,0,5.842,1.154,7.961,3.039l5.657-5.657C34.046,6.053,29.268,4,24,4C12.955,4,4,12.955,4,24c0,11.045,8.955,20,20,20c11.045,0,20-8.955,20-20C44,22.659,43.862,21.35,43.611,20.083z"/><path fill="#FF3D00" d="M6.306,14.691l6.571,4.819C14.655,15.108,18.961,12,24,12c3.059,0,5.842,1.154,7.961,3.039l5.657-5.657C34.046,6.053,29.268,4,24,4C16.318,4,9.656,8.337,6.306,14.691z"/><path fill="#4CAF50" d="M24,44c5.166,0,9.86-1.977,13.409-5.192l-6.19-5.238C29.211,35.091,26.715,36,24,36c-5.202,0-9.619-3.317-11.283-7.946l-6.522,5.025C9.505,39.556,16.227,44,24,44z"/><path fill="#1976D2" d="M43.611,20.083H42V20H24v8h11.303c-0.792,2.237-2.231,4.166-4.087,5.571c0.001-0.001,0.002-0.001,0.003-0.002l6.19,5.238C36.971,39.205,44,34,44,24C44,22.659,43.862,21.35,43.611,20.083z"/></svg>'''
                    )
                  ), 
                  const SizedBox(width: 3),
                  Text(
                    'Continue With Google',
                    style: GoogleFonts.poppins(
                      fontSize: 18.0,
                      color: Color(0xFF4D4731),
                      fontWeight: FontWeight.w400
                    ),),
                ]
              )
            )
          )
        ), Padding(
  padding: const EdgeInsets.only(top: 20.0, bottom: 0.0),
  child: GestureDetector(
    onTap: () {
      //BAckendddd
      print('tombolnya di klik');

    },
    child: RichText(
      text: TextSpan(
        text: 'DON\'T HAVE AN ACCOUNT? ',
        style: GoogleFonts.poppins(
          fontSize: 15.0,
          fontWeight: FontWeight.normal,
          color: Colors.black,
        ),
        children: const <TextSpan>[
          TextSpan(
            text: 'SIGN UP',
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    ),
  ),
),
Padding(
  padding: const EdgeInsets.only(top: 0.0,left:197.0),
  child: Stack(
    children: [
      SvgPicture.string(
        '''
        <svg width="46" height="2" viewBox="0 0 46 2" fill="none" xmlns="http://www.w3.org/2000/svg">
<rect width="46" height="2" rx="1" fill="#F0C418"/>
</svg>

        ''')]))


            ],
          ),
        ),
      ),
    );
  }
}
