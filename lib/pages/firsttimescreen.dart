import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:moneta/pages/login.dart';

class FirstTimeScreen extends StatelessWidget {
  const FirstTimeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context);
    return Scaffold(
      backgroundColor: Color(0xFF1A1A22),
      body: Column(
        children: [
          SizedBox(
            height: mediaQuery.size.height * 0.1,
          ),
          Align(
            alignment: AlignmentDirectional(-1, 0),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(0),
              child: Image.asset(
                'assets/images/Start.png',
                width: mediaQuery.size.width,
                height: 529,
                fit: BoxFit.cover,
              ),
            ),
          ),
          Align(
            alignment: AlignmentDirectional(-1, 0),
            child: Padding(
              padding: EdgeInsetsDirectional.fromSTEB(17, 34, 0, 0),
              child: Text(
                'Moneta',
                style: GoogleFonts.poppins(
                  textStyle: TextStyle(
                    color: Color(0xFFE5E5E5),
                    fontSize: 36,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
          ),
          Align(
            alignment: AlignmentDirectional(-1, 0),
            child: Padding(
              padding: EdgeInsetsDirectional.fromSTEB(17, 0, 0, 0),
              child: Text(
                'Smarter Finance, Brighter Future',
                style: GoogleFonts.poppins(
                  textStyle: TextStyle(
                    color: Color(0xFFE5E5E5),
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
          ),
          Align(
            alignment: AlignmentDirectional(0, 1),
            child: Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0, 75, 0, 0),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Login(),
                    ),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xFFFFC130),
                  padding: EdgeInsetsDirectional.fromSTEB(100, 0, 100, 0),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                child: Text(
                  'Get Started',
                  style: GoogleFonts.poppins(
                    textStyle: TextStyle(
                        color: Color(0xff000000),
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        letterSpacing: 0),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
