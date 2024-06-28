import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);

    return Scaffold(
        backgroundColor: Color(0xFF1A1A22),
        body: Column(
          children: [
            Padding(
              padding:
                  const EdgeInsets.only(top: 20.0, left: 20.0, right: 20.0),
              child: Container(
                height: mediaQuery.size.height * 0.2,
                width: mediaQuery.size.width,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [
                      Color(0xffC1F5B8),
                      Color(0xff9EF494),
                      Color(0xff68F45C)
                    ],
                  ),
                ),
                child: ListTile(
                  trailing: Text("😊", style: TextStyle(fontSize: 45)),
                  title: Text(
                    'Goals for the week: 5',
                    style: GoogleFonts.poppins(
                      textStyle: TextStyle(
                        color: Color(0xFF1A1A22),
                        fontSize: 26,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  subtitle: Text(
                    'Achieved Goals: 2',
                    style: GoogleFonts.poppins(
                      textStyle: TextStyle(
                        color: Color(0xFF1A1A22),
                        fontSize: 24,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: const EdgeInsets.only(left: 20.0),
                child: Text(
                  'Trending News',
                  style: GoogleFonts.poppins(
                    textStyle: TextStyle(
                      color: Color(0xFFE5E5E5),
                      fontSize: 24,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 10,
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
            SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20.0),
                  child: Text(
                    'Our Stock Picks',
                    style: GoogleFonts.poppins(
                      textStyle: TextStyle(
                        color: Color(0xFFE5E5E5),
                        fontSize: 24,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),

              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 200,
                  width: 200,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Color(0xff1D1C28),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(50),
                              child: SvgPicture.network('https://s3-symbol-logo.tradingview.com/tata--big.svg',
                                  width: 50,
                                  height: 50),
                            ),
                            Text(
                              'Tata Motors',
                              style: GoogleFonts.poppins(
                                textStyle: TextStyle(
                                  color: Color(0xFFFFFFFF),
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          '₹955.50',
                          style: GoogleFonts.poppins(
                            textStyle: TextStyle(
                              color: Color(0xFFFFFFFF),
                              fontSize: 16,
                              fontWeight: FontWeight.w300,
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 8.0),
                        child: Text(
                          '+₹20',
                          style: GoogleFonts.poppins(
                            textStyle: TextStyle(
                              color: Color(0xFF30FF60),
                              fontSize: 15,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                      ),
                      Center(
                        child: Text(
                          "BUY",
                          style: GoogleFonts.poppins(
                            textStyle: TextStyle(
                              color: Color(0xFF30FF60),
                              fontSize: 40,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 200,
                  width: 200,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Color(0xff1D1C28),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(50),
                              child: SvgPicture.network(
                                  'https://s3-symbol-logo.tradingview.com/reliance-group--big.svg',
                                  width: 50,
                                  height: 50),
                            ),
                            Text(
                              'Reliance Power',
                              style: GoogleFonts.poppins(
                                textStyle: TextStyle(
                                  color: Color(0xFFFFFFFF),
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          '₹29.65',
                          style: GoogleFonts.poppins(
                            textStyle: TextStyle(
                              color: Color(0xFFFFFFFF),
                              fontSize: 16,
                              fontWeight: FontWeight.w300,
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 8.0),
                        child: Text(
                          '-₹0.050',
                          style: GoogleFonts.poppins(
                            textStyle: TextStyle(
                              color: Color(0xFFFF3030),
                              fontSize: 15,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                      ),
                      Center(
                        child: Text(
                          "SELL",
                          style: GoogleFonts.poppins(
                            textStyle: TextStyle(
                              color: Color(0xFFFF3030),
                              fontSize: 40,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ]),
          ],
        ));
  }
}
