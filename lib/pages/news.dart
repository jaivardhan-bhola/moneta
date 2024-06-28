import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class News extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff1A1A22),
      body: ListView(
        children: [
          SizedBox(height: 20),
          Padding(padding: EdgeInsets.only(left: 20),
              child: Text("News", style: GoogleFonts.poppins(
                textStyle: TextStyle(
                  color: Color(0xFFE5E5E5),
                  fontSize: 30,
                  fontWeight: FontWeight.w600,
                ),
              ),)
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(
              color: Color(0xff1D1C28),
              child: ListTile(
                trailing: Image.network(
                    'https://images.moneycontrol.com/static-mcnews/2024/06/20240628024732_Stock-Market-New-2.jpg?impolicy=website&width=770&height=431" width="100" height="100'),
                title: Text(
                  'Nifty above 24,100, Sensex gains 280 pts; RIL, NTPC, Tata Motors top gainers',
                  style: GoogleFonts.poppins(
                    textStyle: TextStyle(
                      color: Color(0xFFE5E5E5),
                      fontSize: 20,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
                subtitle: Text(
                  'JUNE 28, 2024',
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
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(
              color: Color(0xff1D1C28),
              child: ListTile(
                trailing: Image.network(
                    'https://bsmedia.business-standard.com/_media/bs/img/article/2024-04/12/full/1712942528-7989.jpg?im=FeatureCrop,size=(826,465)" width="100" height="100'),
                title: Text(
                  'Gold price slips Rs 10 to Rs 71,720, silver falls Rs 100 to Rs 89,900',
                  style: GoogleFonts.poppins(
                    textStyle: TextStyle(
                      color: Color(0xFFE5E5E5),
                      fontSize: 20,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
                subtitle: Text(
                  'JUNE 28, 2024',
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
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(
              color: Color(0xff1D1C28),
              child: ListTile(
                trailing: Image.network(
                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRLJqD_FZmtT37LX37fF5zxTFtQLt-q9b8npw&s" width="100" height="100'),
                title: Text(
                  'Crude oil price resumes the bullish trend – Forecast today - 28-06-2024',
                  style: GoogleFonts.poppins(
                    textStyle: TextStyle(
                      color: Color(0xFFE5E5E5),
                      fontSize: 20,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
                subtitle: Text(
                  'JUNE 28, 2024',
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
          ),
        ],
      ),
    );
  }
}
