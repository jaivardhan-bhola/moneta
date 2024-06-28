import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

class PaperTrading extends StatefulWidget {
  const PaperTrading({super.key});

  @override
  State<PaperTrading> createState() => _PaperTradingState();
}

class _PaperTradingState extends State<PaperTrading> {
  var Stocks = [
    {
      'Name': 'Apple, Inc',
      'Symbol': 'AAPL',
      'Price': '17817.78',
      'Change': '+0.18%',
      'Previous Close': '₹17,788.05',
      'Open': '₹17,812.05',
      'Volume': '67.95M',
      'Average Volume': '74.82M',
      'Market Cap': '₹267.8T',
      'Dividend Share' : '0.96',
      'Dividend Yield' : '0.48%',
      'EPS' : '6.44',
      'Logo': 'https://s3-symbol-logo.tradingview.com/apple--big.svg',
      'owned': 0
    },
    {
      'Name': 'Tata Motors Ltd.',
      'Symbol': 'TATAMOTORS',
      'Price': '955.50',
      'Change': '+0.18%',
      'Previous Close': '₹951.85',
      'Open': '₹952.50',
      'Volume': '19.38M',
      'Average Volume': '10.11M',
      'Market Cap': '₹18.8B',
      'Dividend Share' : '0.75',
      'Dividend Yield' : '0.31%',
      'EPS' : '45.42',
      'Logo': 'https://s3-symbol-logo.tradingview.com/tata--big.svg',
      'owned': 0
    },
    {
      'Name': 'Reliance Power Ltd.',
      'Symbol': 'RPOWER',
      'Price': '29.85',
      'Change': '-1.57%',
      'Previous Close': '₹29.27',
      'Open': '₹29.28',
      'Volume': '21.33M',
      'Average Volume': '31.63M',
      'Market Cap': '₹600M',
      'Dividend Share' : '0.00',
      'Dividend Yield' : '0.00%',
      'EPS' : '0.00',
      'Logo': 'https://s3-symbol-logo.tradingview.com/reliance-group--big.svg',
      'owned': 0

    },
    {
      'Name': 'Nvidia',
      'Symbol': 'NVDA',
      'Price': '10370.76',
      'Change': '-1.67',
      'Previous Close': '₹10,548.80',
      'Open': '₹10,548.80',
      'Volume': '202M',
      'Average Volume': '435M',
      'Market Cap': '₹254.52T',
      'Dividend Share' : '0.04',
      'Dividend Yield' : '0.03%',
      'EPS' : '1.71',
      'Logo': 'https://s3-symbol-logo.tradingview.com/nvidia--big.svg',
      'owned': 0
    },
    {
      'Name': 'Meta Platforms, Inc.',
      'Symbol': 'META',
      'Price': '43330.52',
      'Change': '+1.22%',
      'Previous Close': '₹42,820.63',
      'Open': '₹42,949.98',
      'Volume': '7.62M',
      'Average Volume': '15.09M',
      'Market Cap': '₹109.91T',
      'Dividend Share': '2.00',
      'Dividend Yield': '0.39%',
      'EPS': '17.39',
      'Logo': 'https://s3-symbol-logo.tradingview.com/meta-platforms--big.svg',
      'owned': 0,
    },
    {
      'Name' : 'Alphabet Inc.',
      'Symbol' : 'GOOGL',
      'Price' : '15585.75',
      'Change' : '+0.78%',
      'Previous Close' : '₹15,471.41',
      'Open' : '₹15,471.41',
      'Volume' : '9.10M',
      'Average Volume' : '19.6M',
      'Market Cap' : '₹191.12T',
      'Dividend Share' : '0.80',
      'Dividend Yield' : '0.43%',
      'EPS' : '6.53',
      'Logo' : 'https://s3-symbol-logo.tradingview.com/alphabet--big.svg',
      'owned' : 0,
    },
    {
      'Name': 'Amazon.com, Inc.',
      'Symbol': 'AMZN',
      'Price': '16483.80',
      'Change': '+2.02%',
      'Previous Close': '₹16,143.97',
      'Open': '₹16,142.97',
      'Volume': '63.82M',
      'Average Volume': '40.45M',
      'Market Cap': '₹171.01T',
      'Dividend Share': '0.00',
      'Dividend Yield': '0.00%',
      'EPS': '3.52',
      'Logo': 'https://s3-symbol-logo.tradingview.com/amazon--big.svg',
      'owned': 0
    },
    {
      'Name': 'Netflix, Inc.',
      'Symbol': 'NFLX',
      'Price': '57086.36',
      'Change': '+0.94%',
      'Previous Close': '₹56,548.97',
      'Open': '₹56,547.92',
      'Volume': '1.52M',
      'Average Volume': '3.45M',
      'Market Cap': '₹24.59T',
      'Dividend Share': '0.00',
      'Dividend Yield': '0.00%',
      'EPS': '14.43',
      'Logo': 'https://s3-symbol-logo.tradingview.com/netflix--big.svg',
      'owned': 0
    },
    {
      'Name': 'Microsoft Corporation',
      'Symbol': 'MSFT',
      'Price': '37762.20',
      'Change': '+0.06%',
      'Previous Close': '₹37,739.00',
      'Open': '₹37,738.82',
      'Volume': '9.56M',
      'Average Volume': '18.56M',
      'Market Cap': '₹280.76T',
      'Dividend Share': '3.00',
      'Dividend Yield': '0.60%',
      'EPS': '11.53',
      'Logo': 'https://s3-symbol-logo.tradingview.com/microsoft--big.svg',
      'owned': 0
    }
  ];
  bool isBudgetSet = false;
  final _budgetController = TextEditingController();
  final _quantityController = TextEditingController();
  double balance = 0;
  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    return Scaffold(
      backgroundColor: Color(0xFF1A1A22),
      body: isBudgetSet
          ? ListView(
          children:[
            Padding(
              padding:
              const EdgeInsets.only(top: 20.0, left: 20.0, right: 20.0),
              child: Container(
                height: mediaQuery.size.height * 0.2,
                width: mediaQuery.size.width,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [Color(0xFF5C90F4), Color(0xFFB8D0F5)],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: ListTile(
                  title: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Total Balance',
                        style: GoogleFonts.poppins(
                          textStyle: TextStyle(
                            color: Color(0xFF1A1A22),
                            fontSize: 24,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                      Text(
                        '₹ ' + balance.toString(),
                        style: GoogleFonts.poppins(
                          textStyle: TextStyle(
                            color: Color(0xFF1A1A22),
                            fontSize: 32,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                      Spacer(),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 48.0),
                        child: Row(
                          children: [
                            Text("Profit today - ", style: GoogleFonts.poppins(
                              textStyle: TextStyle(
                                color: Color(0xFF1A1A22),
                                fontSize: 16,
                                fontWeight: FontWeight.w400,
                              ),
                            ),),
                            Text (
                              '0',
                              style: GoogleFonts.poppins(
                                textStyle: TextStyle(
                                  color: Color(0xFF1A1A22),
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height: 50),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ElevatedButton(
                  onPressed:(){
                    showModalBottomSheet(
                      constraints: BoxConstraints(maxHeight: MediaQuery.of(context).size.height * 0.4),
                      backgroundColor: Color(0xFF1A1A22),
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.only(topLeft: Radius.circular(10), topRight: Radius.circular(10))
                      ),
                        context: context, builder: (context){
                        return ListView.builder(itemBuilder: (context, index){
                          return GestureDetector(
                            onTap: (){
                              showDialog(context: context, builder: (context){
                                return AlertDialog(

                                  backgroundColor: Color(0xFF1A1A22),
                                  title: Center(
                                    child: ClipRRect(child: SvgPicture.network(Stocks[index]['Logo'] as String, height: 50, width: 50,), borderRadius: BorderRadius.circular(50),),
                                  ),
                                  content: Builder(
                                    builder: (context) {
                                      var height = MediaQuery.of(context).size.height;
                                      var width = MediaQuery.of(context).size.width;
                                      return SizedBox(
                                        height: height * 0.8,
                                        width: width * 0.95,
                                        child:ListView(
                                          children: [
                                            Center(
                                              child: Text(Stocks[index]['Name'] as String, style: GoogleFonts.poppins(
                                                textStyle: GoogleFonts.poppins(
                                                  color: Color(0xFFFFFFFF),
                                                  fontSize: 24,
                                                  fontWeight: FontWeight.w600,
                                                ),
                                              ),
                                            ),
                                            ),
Center(
                                              child: Text(Stocks[index]['Symbol'] as String, style: GoogleFonts.poppins(
                                                textStyle: GoogleFonts.poppins(
                                                  color: Color(0xFFFFFFFF),
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.w400,
                                                ),
                                              ),
                                            ),
                                            ),
                                            SizedBox(height: 30),
                                            Padding(padding: EdgeInsets.only(left: 20), child: Container(
                                              decoration: BoxDecoration(
                                                color: Color(0xFF2A2A2E),
                                                borderRadius: BorderRadius.circular(10),
                                              ),
                                              child: Padding(
                                                padding: const EdgeInsets.all(8.0),
                                                child: Column(
                                                  children: [
                                                    Text('₹' + (Stocks[index]['Price'] as String), style: GoogleFonts.poppins(
                                                      textStyle: TextStyle(
                                                        color: Color(0xFFFFFFFF),
                                                        fontSize: 32,
                                                        fontWeight: FontWeight.w400,
                                                      ),
                                                    ),),
                                                    Container(
                                                      decoration: BoxDecoration(
                                                        color: Stocks[index]['Change'].toString().contains('+') ? Color(0x1A30FF60) : Color(0x1AFF3030),
                                                        borderRadius: BorderRadius.circular(10),
                                                      ),
                                                      child: Padding(
                                                        padding: const EdgeInsets.all(4.0),
                                                        child: Text(Stocks[index]['Change'] as String, style: GoogleFonts.poppins(
                                                          textStyle: GoogleFonts.poppins(
                                                            color: Stocks[index]['Change'].toString().contains('+') ? Color(0xFF30FF60) : Color(0xFFFF3030),
                                                            fontSize: 16,
                                                            fontWeight: FontWeight.w400,
                                                          ),
                                                        ),),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),),
                                            SizedBox(height: 40),
                                            Padding(padding: EdgeInsets.only(left: 20), child: Column(
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              children: [
                                                Text('Previous Close', style: GoogleFonts.poppins(
                                                  textStyle: TextStyle(
                                                    color: Color(0xFFFFFFFF),
                                                    fontSize: 16,
                                                    fontWeight: FontWeight.w400,
                                                  ),
                                                ),),
                                                Text(Stocks[index]['Previous Close'] as String, style: GoogleFonts.poppins(
                                                  textStyle: TextStyle(
                                                    color: Color(0xFFFFFFFF),
                                                    fontSize: 16,
                                                    fontWeight: FontWeight.w600,
                                                  ),
                                                ),),
                                              ],
                                            ),),
                                            SizedBox(height: 20),
                                            Padding(padding: EdgeInsets.only(left: 20), child: Column(
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              children: [
                                                Text('Open', style: GoogleFonts.poppins(
                                                  textStyle: TextStyle(
                                                    color: Color(0xFFFFFFFF),
                                                    fontSize: 16,
                                                    fontWeight: FontWeight.w400,
                                                  ),
                                                ),),
                                                Text(Stocks[index]['Open'] as String, style: GoogleFonts.poppins(
                                                  textStyle: TextStyle(
                                                    color: Color(0xFFFFFFFF),
                                                    fontSize: 16,
                                                    fontWeight: FontWeight.w600,
                                                  ),
                                                ),),
                                              ],
                                            ),),
                                            SizedBox(height: 40),
                                            Padding(padding: EdgeInsets.only(left: 20), child: Column(
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              children: [
                                                Text('Key Statistics', style: GoogleFonts.poppins(
                                                  textStyle: TextStyle(
                                                    color: Color(0xFFFFFFFF),
                                                    fontSize: 16,
                                                    fontWeight: FontWeight.w600,
                                                  ),
                                                ),),
                                                SizedBox(height: 20),
                                                Row(
                                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                  children: [
                                                    Text('Volume', style: GoogleFonts.poppins(
                                                      textStyle: TextStyle(
                                                        color: Color(0xFFFFFFFF),
                                                        fontSize: 16,
                                                        fontWeight: FontWeight.w400,
                                                      ),
                                                    ),),
                                                    Text(Stocks[index]['Volume'] as String, style: GoogleFonts.poppins(
                                                      textStyle: TextStyle(
                                                        color: Color(0xFFFFFFFF),
                                                        fontSize: 16,
                                                        fontWeight: FontWeight.w600,
                                                      ),
                                                    ),),
                                                  ],
                                                ),
                                                SizedBox(height: 20),
                                                Row(
                                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                  children: [
                                                    Text('Average Volume', style: GoogleFonts.poppins(
                                                      textStyle: TextStyle(
                                                        color: Color(0xFFFFFFFF),
                                                        fontSize: 16,
                                                        fontWeight: FontWeight.w400,
                                                      ),
                                                    ),),
                                                    Text(Stocks[index]['Average Volume'] as String, style: GoogleFonts.poppins(
                                                      textStyle: TextStyle(
                                                        color: Color(0xFFFFFFFF),
                                                        fontSize: 16,
                                                        fontWeight: FontWeight.w600,
                                                      ),
                                                    ),),
                                                  ],
                                                ),
                                                SizedBox(height: 20),
                                                Row(
                                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                  children: [
                                                    Text('Market Cap', style: GoogleFonts.poppins(
                                                      textStyle: TextStyle(
                                                        color: Color(0xFFFFFFFF),
                                                        fontSize: 16,
                                                        fontWeight: FontWeight.w400,
                                                      ),
                                                    ),),
                                                    Text(Stocks[index]['Market Cap'] as String, style: GoogleFonts.poppins(
                                                      textStyle: TextStyle(
                                                        color: Color(0xFFFFFFFF),
                                                        fontSize: 16,
                                                        fontWeight: FontWeight.w600,
                                                      ),
                                                    ),),
                                                  ],
                                                ),
                                                SizedBox(height: 20),
                                                Row(
                                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                  children: [
                                                    Text('Dividend Share', style: GoogleFonts.poppins(
                                                      textStyle: TextStyle(
                                                        color: Color(0xFFFFFFFF),
                                                        fontSize: 16,
                                                        fontWeight: FontWeight.w400,
                                                      ),
                                                    ),),
                                                    Text(Stocks[index]['Dividend Share'] as String, style: GoogleFonts.poppins(
                                                      textStyle: TextStyle(
                                                        color: Color(0xFFFFFFFF),
                                                        fontSize: 16,
                                                        fontWeight: FontWeight.w600,
                                                      ),
                                                    ),),
                                                  ],
                                                ),
                                                SizedBox(height: 20),
                                                Row(
                                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                  children: [
                                                    Text('Dividend Yield', style: GoogleFonts.poppins(
                                                      textStyle: TextStyle(
                                                        color: Color(0xFFFFFFFF),
                                                        fontSize: 16,
                                                        fontWeight: FontWeight.w400,
                                                      ),
                                                    ),),
                                                    Text(Stocks[index]['Dividend Yield'] as String, style: GoogleFonts.poppins(
                                                      textStyle: TextStyle(
                                                        color: Color(0xFFFFFFFF),
                                                        fontSize: 16,
                                                        fontWeight: FontWeight.w600,
                                                      ),
                                                    ),),
                                                  ],
                                                ),
                                                SizedBox(height: 20),
                                                Row(
                                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                  children: [
                                                    Text('EPS', style: GoogleFonts.poppins(
                                                      textStyle: TextStyle(
                                                        color: Color(0xFFFFFFFF),
                                                        fontSize: 16,
                                                        fontWeight: FontWeight.w400,
                                                      ),
                                                    ),),
                                                    Text(Stocks[index]['EPS'] as String, style: GoogleFonts.poppins(
                                                      textStyle: TextStyle(
                                                        color: Color(0xFFFFFFFF),
                                                        fontSize: 16,
                                                        fontWeight: FontWeight.w600,
                                                      ),
                                                    ),),
                                                  ],
                                                ),
                                          ],
                                        ),
                                      ),
                                      SizedBox(height: 40),
                                      Row(
                                        children: [
                                          Padding(padding: EdgeInsets.only(left: 20, right: 20), child: Container(
                                            width: 100,
                                            child: TextField(
                                              keyboardType: TextInputType.number,
                                              controller: _quantityController,
                                              style: GoogleFonts.poppins(
                                                color: Colors.white,
                                                fontSize: 16,
                                              ),
                                              decoration: InputDecoration(
                                                hintText: 'Qty',
                                                hintStyle: GoogleFonts.poppins(
                                                  color: Colors.white,
                                                  fontSize: 16,
                                                ),

                                              ),
                                            ),
                                          ),),
                                          ElevatedButton(
                                            onPressed:(){
                                              var quantity = double.parse(_quantityController.text);
                                              var price = double.parse(Stocks[index]['Price'] as String);
                                              if (balance >= quantity * price){
                                                balance -= (quantity * price).toInt();
                                                Stocks[index]['owned'] = quantity+(Stocks[index]['owned'] as  int);
                                                setState(() {});
                                                _quantityController.clear();
                                                Navigator.pop(context);

                                              }
                                              else{
                                                showDialog(context: context, builder: (context) => AlertDialog(
                                                  backgroundColor: Color(0xFF1A1A22),
                                                  title: Text('Insufficient Balance', style: GoogleFonts.poppins(
                                                    color: Colors.white,
                                                    fontSize: 24,
                                                    fontWeight: FontWeight.w600,
                                                  ),),
                                                  content: Text('You do not have enough balance to buy this stock', style: GoogleFonts.poppins(
                                                    color: Colors.white,
                                                    fontSize: 16,
                                                    fontWeight: FontWeight.w400,
                                                  ),),
                                                  actions: [
                                                    ElevatedButton(
                                                      onPressed:(){
                                                        Navigator.pop(context);
                                                        Navigator.pop(context);
                                                      },
                                                      child: Text(
                                                        'OK',
                                                        style: GoogleFonts.poppins(
                                                          color: Colors.black,
                                                          fontSize: 16,
                                                          fontWeight: FontWeight.w600,
                                                        ),
                                                      ),
                                                      style: ElevatedButton.styleFrom(
                                                        backgroundColor: Color(0xFF30FF60),
                                                        shape: RoundedRectangleBorder(
                                                          borderRadius: BorderRadius.circular(10),
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ));
                                              }
                                            },
                                            child: Text(
                                              'BUY',
                                              style: GoogleFonts.poppins(
                                                color: Colors.black,
                                                fontSize: 16,
                                                fontWeight: FontWeight.w600,
                                              ),
                                            ),
                                            style: ElevatedButton.styleFrom(
                                              backgroundColor: Color(0xFF30FF60),
                                              shape: RoundedRectangleBorder(
                                                borderRadius: BorderRadius.circular(10),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                      ],)
                                      );
                                    }
                                  ),

                                );
                              });
                            },
                            child: Padding(
                              padding: const EdgeInsets.only(top:20.0, left:16.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  ClipRRect(child: SvgPicture.network(Stocks[index]['Logo'] as String, height: 50, width: 50,), borderRadius: BorderRadius.circular(50),),
                                  Padding(padding: EdgeInsets.only(left: 20)),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(Stocks[index]['Name'] as String, style: GoogleFonts.poppins(
                                        textStyle: TextStyle(
                                          color: Color(0xFFFFFFFF),
                                          fontSize: 16,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),),
                                      Text(Stocks[index]['Symbol'] as String, style: GoogleFonts.poppins(
                                        textStyle: TextStyle(
                                          color: Color(0xFFFFFFFF),
                                          fontSize: 12,
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),),
                                    ],
                                  ),
                                  Spacer(),
                                  Padding(
                                    padding: const EdgeInsets.only(right: 16.0),
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.end,
                                      children: [
                                        Text(Stocks[index]['Price'] as String, style: GoogleFonts.poppins(
                                          textStyle: TextStyle(
                                            color: Color(0xFFFFFFFF),
                                            fontSize: 16,
                                            fontWeight: FontWeight.w600,
                                          ),
                                        ),),
                                        Text(Stocks[index]['Change'] as String, style: GoogleFonts.poppins(
                                          textStyle: TextStyle(
                                            color: Stocks[index]['Change'].toString().contains('+') ? Color(0xFF30FF60) : Color(0xFFFF3030),
                                            fontSize: 12,
                                            fontWeight: FontWeight.w400,
                                          ),
                                        ),),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            )
                          );
                        },
                          itemCount: Stocks.length,
                        );
                    }
                    );
                  },
                  child: Text(
                    'BUY',
                    style: GoogleFonts.poppins(
                      color: Colors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xFF30FF60),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
                ElevatedButton(
                  onPressed:(){
                    showModalBottomSheet(
                        constraints: BoxConstraints(maxHeight: MediaQuery.of(context).size.height * 0.4),
                        backgroundColor: Color(0xFF1A1A22),
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.only(topLeft: Radius.circular(10), topRight: Radius.circular(10))
                        ),
                        context: context, builder: (context){
                      return ListView.builder(itemBuilder: (context, index){
                        return GestureDetector(
                            onTap: (){
                              showDialog(context: context, builder: (context){
                                return AlertDialog(

                                  backgroundColor: Color(0xFF1A1A22),
                                  title: Center(
                                    child: ClipRRect(child: SvgPicture.network(Stocks[index]['Logo'] as String, height: 50, width: 50,), borderRadius: BorderRadius.circular(50),),
                                  ),
                                  content: Builder(
                                      builder: (context) {
                                        var height = MediaQuery.of(context).size.height;
                                        var width = MediaQuery.of(context).size.width;
                                        return SizedBox(
                                            height: height * 0.8,
                                            width: width * 0.95,
                                            child:ListView(
                                              children: [
                                                Center(
                                                  child: Text(Stocks[index]['Name'] as String, style: GoogleFonts.poppins(
                                                    textStyle: GoogleFonts.poppins(
                                                      color: Color(0xFFFFFFFF),
                                                      fontSize: 24,
                                                      fontWeight: FontWeight.w600,
                                                    ),
                                                  ),
                                                  ),
                                                ),
                                                Center(
                                                  child: Text(Stocks[index]['Symbol'] as String, style: GoogleFonts.poppins(
                                                    textStyle: GoogleFonts.poppins(
                                                      color: Color(0xFFFFFFFF),
                                                      fontSize: 16,
                                                      fontWeight: FontWeight.w400,
                                                    ),
                                                  ),
                                                  ),
                                                ),
                                                SizedBox(height: 30),
                                                Padding(padding: EdgeInsets.only(left: 20), child: Container(
                                                  decoration: BoxDecoration(
                                                    color: Color(0xFF2A2A2E),
                                                    borderRadius: BorderRadius.circular(10),
                                                  ),
                                                  child: Padding(
                                                    padding: const EdgeInsets.all(8.0),
                                                    child: Column(
                                                      children: [
                                                        Text('₹' + (Stocks[index]['Price'] as String), style: GoogleFonts.poppins(
                                                          textStyle: TextStyle(
                                                            color: Color(0xFFFFFFFF),
                                                            fontSize: 32,
                                                            fontWeight: FontWeight.w400,
                                                          ),
                                                        ),),
                                                        Container(
                                                          decoration: BoxDecoration(
                                                            color: Stocks[index]['Change'].toString().contains('+') ? Color(0x1A30FF60) : Color(0x1AFF3030),
                                                            borderRadius: BorderRadius.circular(10),
                                                          ),
                                                          child: Padding(
                                                            padding: const EdgeInsets.all(4.0),
                                                            child: Text(Stocks[index]['Change'] as String, style: GoogleFonts.poppins(
                                                              textStyle: GoogleFonts.poppins(
                                                                color: Stocks[index]['Change'].toString().contains('+') ? Color(0xFF30FF60) : Color(0xFFFF3030),
                                                                fontSize: 16,
                                                                fontWeight: FontWeight.w400,
                                                              ),
                                                            ),),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ),),
                                                SizedBox(height: 40),
                                                Padding(padding: EdgeInsets.only(left: 20), child: Column(
                                                  crossAxisAlignment: CrossAxisAlignment.start,
                                                  children: [
                                                    Text('Previous Close', style: GoogleFonts.poppins(
                                                      textStyle: TextStyle(
                                                        color: Color(0xFFFFFFFF),
                                                        fontSize: 16,
                                                        fontWeight: FontWeight.w400,
                                                      ),
                                                    ),),
                                                    Text(Stocks[index]['Previous Close'] as String, style: GoogleFonts.poppins(
                                                      textStyle: TextStyle(
                                                        color: Color(0xFFFFFFFF),
                                                        fontSize: 16,
                                                        fontWeight: FontWeight.w600,
                                                      ),
                                                    ),),
                                                  ],
                                                ),),
                                                SizedBox(height: 20),
                                                Padding(padding: EdgeInsets.only(left: 20), child: Column(
                                                  crossAxisAlignment: CrossAxisAlignment.start,
                                                  children: [
                                                    Text('Open', style: GoogleFonts.poppins(
                                                      textStyle: TextStyle(
                                                        color: Color(0xFFFFFFFF),
                                                        fontSize: 16,
                                                        fontWeight: FontWeight.w400,
                                                      ),
                                                    ),),
                                                    Text(Stocks[index]['Open'] as String, style: GoogleFonts.poppins(
                                                      textStyle: TextStyle(
                                                        color: Color(0xFFFFFFFF),
                                                        fontSize: 16,
                                                        fontWeight: FontWeight.w600,
                                                      ),
                                                    ),),
                                                  ],
                                                ),),
                                                SizedBox(height: 40),
                                                Padding(padding: EdgeInsets.only(left: 20), child: Column(
                                                  crossAxisAlignment: CrossAxisAlignment.start,
                                                  children: [
                                                    Text('Key Statistics', style: GoogleFonts.poppins(
                                                      textStyle: TextStyle(
                                                        color: Color(0xFFFFFFFF),
                                                        fontSize: 16,
                                                        fontWeight: FontWeight.w600,
                                                      ),
                                                    ),),
                                                    SizedBox(height: 20),
                                                    Row(
                                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                      children: [
                                                        Text('Volume', style: GoogleFonts.poppins(
                                                          textStyle: TextStyle(
                                                            color: Color(0xFFFFFFFF),
                                                            fontSize: 16,
                                                            fontWeight: FontWeight.w400,
                                                          ),
                                                        ),),
                                                        Text(Stocks[index]['Volume'] as String, style: GoogleFonts.poppins(
                                                          textStyle: TextStyle(
                                                            color: Color(0xFFFFFFFF),
                                                            fontSize: 16,
                                                            fontWeight: FontWeight.w600,
                                                          ),
                                                        ),),
                                                      ],
                                                    ),
                                                    SizedBox(height: 20),
                                                    Row(
                                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                      children: [
                                                        Text('Average Volume', style: GoogleFonts.poppins(
                                                          textStyle: TextStyle(
                                                            color: Color(0xFFFFFFFF),
                                                            fontSize: 16,
                                                            fontWeight: FontWeight.w400,
                                                          ),
                                                        ),),
                                                        Text(Stocks[index]['Average Volume'] as String, style: GoogleFonts.poppins(
                                                          textStyle: TextStyle(
                                                            color: Color(0xFFFFFFFF),
                                                            fontSize: 16,
                                                            fontWeight: FontWeight.w600,
                                                          ),
                                                        ),),
                                                      ],
                                                    ),
                                                    SizedBox(height: 20),
                                                    Row(
                                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                      children: [
                                                        Text('Market Cap', style: GoogleFonts.poppins(
                                                          textStyle: TextStyle(
                                                            color: Color(0xFFFFFFFF),
                                                            fontSize: 16,
                                                            fontWeight: FontWeight.w400,
                                                          ),
                                                        ),),
                                                        Text(Stocks[index]['Market Cap'] as String, style: GoogleFonts.poppins(
                                                          textStyle: TextStyle(
                                                            color: Color(0xFFFFFFFF),
                                                            fontSize: 16,
                                                            fontWeight: FontWeight.w600,
                                                          ),
                                                        ),),
                                                      ],
                                                    ),
                                                    SizedBox(height: 20),
                                                    Row(
                                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                      children: [
                                                        Text('Dividend Share', style: GoogleFonts.poppins(
                                                          textStyle: TextStyle(
                                                            color: Color(0xFFFFFFFF),
                                                            fontSize: 16,
                                                            fontWeight: FontWeight.w400,
                                                          ),
                                                        ),),
                                                        Text(Stocks[index]['Dividend Share'] as String, style: GoogleFonts.poppins(
                                                          textStyle: TextStyle(
                                                            color: Color(0xFFFFFFFF),
                                                            fontSize: 16,
                                                            fontWeight: FontWeight.w600,
                                                          ),
                                                        ),),
                                                      ],
                                                    ),
                                                    SizedBox(height: 20),
                                                    Row(
                                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                      children: [
                                                        Text('Dividend Yield', style: GoogleFonts.poppins(
                                                          textStyle: TextStyle(
                                                            color: Color(0xFFFFFFFF),
                                                            fontSize: 16,
                                                            fontWeight: FontWeight.w400,
                                                          ),
                                                        ),),
                                                        Text(Stocks[index]['Dividend Yield'] as String, style: GoogleFonts.poppins(
                                                          textStyle: TextStyle(
                                                            color: Color(0xFFFFFFFF),
                                                            fontSize: 16,
                                                            fontWeight: FontWeight.w600,
                                                          ),
                                                        ),),
                                                      ],
                                                    ),
                                                    SizedBox(height: 20),
                                                    Row(
                                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                      children: [
                                                        Text('EPS', style: GoogleFonts.poppins(
                                                          textStyle: TextStyle(
                                                            color: Color(0xFFFFFFFF),
                                                            fontSize: 16,
                                                            fontWeight: FontWeight.w400,
                                                          ),
                                                        ),),
                                                        Text(Stocks[index]['EPS'] as String, style: GoogleFonts.poppins(
                                                          textStyle: TextStyle(
                                                            color: Color(0xFFFFFFFF),
                                                            fontSize: 16,
                                                            fontWeight: FontWeight.w600,
                                                          ),
                                                        ),),
                                                      ],
                                                    ),
                                                  ],
                                                ),
                                                ),
                                                SizedBox(height: 40),
                                                Row(
                                                  children: [
                                                    Padding(padding: EdgeInsets.only(left: 20, right: 20), child: Container(
                                                      width: 100,
                                                      child: TextField(
                                                        keyboardType: TextInputType.number,
                                                        controller: _quantityController,
                                                        style: GoogleFonts.poppins(
                                                          color: Colors.white,
                                                          fontSize: 16,
                                                        ),
                                                        decoration: InputDecoration(
                                                          hintText: 'Qty',
                                                          hintStyle: GoogleFonts.poppins(
                                                            color: Colors.white,
                                                            fontSize: 16,
                                                          ),

                                                        ),
                                                      ),
                                                    ),),
                                                    ElevatedButton(
                                                      onPressed:(){
                                                        var quantity = double.parse(_quantityController.text);
                                                        var price = double.parse(Stocks[index]['Price'] as String);
                                                        if (quantity>(Stocks[index]['owned']as double)){
                                                          showDialog(context: context, builder: (context) => AlertDialog(
                                                            backgroundColor: Color(0xFF1A1A22),
                                                            title: Text('Insufficient Stocks', style: GoogleFonts.poppins(
                                                              color: Colors.white,
                                                              fontSize: 24,
                                                              fontWeight: FontWeight.w600,
                                                            ),),
                                                            content: Text('You do not have enough stocks to sell', style: GoogleFonts.poppins(
                                                              color: Colors.white,
                                                              fontSize: 16,
                                                              fontWeight: FontWeight.w400,
                                                            ),),
                                                            actions: [
                                                              ElevatedButton(
                                                                onPressed:(){
                                                                  Navigator.pop(context);
                                                                },
                                                                child: Text(
                                                                  'OK',
                                                                  style: GoogleFonts.poppins(
                                                                    color: Colors.black,
                                                                    fontSize: 16,
                                                                    fontWeight: FontWeight.w600,
                                                                  ),
                                                                ),
                                                                style: ElevatedButton.styleFrom(
                                                                  backgroundColor: Color(0xFF30FF60),
                                                                  shape: RoundedRectangleBorder(
                                                                    borderRadius: BorderRadius.circular(10),
                                                                  ),
                                                                ),
                                                              ),
                                                            ],
                                                          ));
                                                        }
                                                        else{
                                                          balance += (quantity * price).toInt();
                                                          Stocks[index]['owned'] = (Stocks[index]['owned'] as double) - quantity;
                                                          setState(() {});
                                                          _quantityController.clear();
                                                          Navigator.pop(context);
                                                          Navigator.pop(context);
                                                        }


                                                      },
                                                      child: Text(
                                                        'SELL',
                                                        style: GoogleFonts.poppins(
                                                          color: Colors.black,
                                                          fontSize: 16,
                                                          fontWeight: FontWeight.w600,
                                                        ),
                                                      ),
                                                      style: ElevatedButton.styleFrom(
                                                        backgroundColor: Color(0xFFFF3030),
                                                        shape: RoundedRectangleBorder(
                                                          borderRadius: BorderRadius.circular(10),
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ],)
                                        );
                                      }
                                  ),

                                );
                              });
                            },
                          child: (Stocks[index]['owned'] != 0) ? Padding(
                            padding: const EdgeInsets.only(top:20.0, left:16.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                ClipRRect(child: SvgPicture.network(Stocks[index]['Logo'] as String, height: 50, width: 50,), borderRadius: BorderRadius.circular(50),),
                                Padding(padding: EdgeInsets.only(left: 20)),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(Stocks[index]['Name'] as String, style: GoogleFonts.poppins(
                                      textStyle: TextStyle(
                                        color: Color(0xFFFFFFFF),
                                        fontSize: 16,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),),
                                    Text(Stocks[index]['Symbol'] as String, style: GoogleFonts.poppins(
                                      textStyle: TextStyle(
                                        color: Color(0xFFFFFFFF),
                                        fontSize: 12,
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),),
                                  ],
                                ),
                                Spacer(),
                                Padding(
                                  padding: const EdgeInsets.only(right: 16.0),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      Text(Stocks[index]['Price'] as String, style: GoogleFonts.poppins(
                                        textStyle: TextStyle(
                                          color: Color(0xFFFFFFFF),
                                          fontSize: 16,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),),
                                      Text(Stocks[index]['Change'] as String, style: GoogleFonts.poppins(
                                        textStyle: TextStyle(
                                          color: Stocks[index]['Change'].toString().contains('+') ? Color(0xFF30FF60) : Color(0xFFFF3030),
                                          fontSize: 12,
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ) : SizedBox(),
                        );
                      },
                        itemCount: Stocks.length,
                      );
                    }
                    );
                  },
                  child: Text(
                    'SELL',
                    style: GoogleFonts.poppins(
                      color: Colors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xFFFF3030),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 40),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: const EdgeInsets.only(left:24.0),
                child: Text("Your Assets", style: GoogleFonts.poppins(
                  textStyle: TextStyle(
                    color: Color(0xFFFFFFFF),
                    fontSize: 24,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                ),
              ),
            ),
            SizedBox(height: 30),
            ListView.builder(
              shrinkWrap: true,
              itemBuilder: (context, index){
                if (Stocks[index]['owned'] != 0){
                  return  Padding(
                    padding: const EdgeInsets.only(top:20.0, left:16.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        ClipRRect(child: SvgPicture.network(Stocks[index]['Logo'] as String, height: 50, width: 50,), borderRadius: BorderRadius.circular(50),),
                        Padding(padding: EdgeInsets.only(left: 20)),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(Stocks[index]['Name'] as String, style: GoogleFonts.poppins(
                              textStyle: TextStyle(
                                color: Color(0xFFFFFFFF),
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                              ),
                            ),),
                            Text(Stocks[index]['Symbol'] as String, style: GoogleFonts.poppins(
                              textStyle: TextStyle(
                                color: Color(0xFFFFFFFF),
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                              ),
                            ),),
                          ],
                        ),
                        Spacer(),
                        Padding(padding: EdgeInsets.only(right: 40),
                          child: Text(Stocks[index]['owned'].toString(), style: GoogleFonts.poppins(
                            textStyle: TextStyle(
                              color: Color(0xFFFFFFFF),
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                            ),
                          ),),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left:16, right: 16.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Text(Stocks[index]['Price'] as String, style: GoogleFonts.poppins(
                                textStyle: TextStyle(
                                  color: Color(0xFFFFFFFF),
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),),
                              Text(Stocks[index]['Change'] as String, style: GoogleFonts.poppins(
                                textStyle: TextStyle(
                                  color: Stocks[index]['Change'].toString().contains('+') ? Color(0xFF30FF60) : Color(0xFFFF3030),
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),),
                            ],
                          ),
                        ),
                      ],
                    ),
                  );
                }
                else{
                  return SizedBox();
                }
              },
              itemCount: Stocks.length,
            ),
          ]
      )
          : Column(
        children: [
          SizedBox(height: mediaQuery.size.height * 0.05),
          Center(
            child: Text(
              'Welcome to MonaTrade',
              style: GoogleFonts.poppins(
                color: Colors.white,
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(height: mediaQuery.size.height * 0.05),
          Text("Set a budget to start paper trading"),
          SizedBox(height: mediaQuery.size.height * 0.05),
          Container(
            width: mediaQuery.size.width * 0.8,
            child: TextField(
              style: GoogleFonts.poppins(
                color: Colors.white,
                fontSize: 16,
              ),
              controller: _budgetController,
              decoration: InputDecoration(
                hintText: 'Enter your budget',
                hintStyle: GoogleFonts.poppins(
                  color: Colors.white,
                  fontSize: 16,
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
          ),
          SizedBox(height: mediaQuery.size.height * 0.05),
          ElevatedButton(
            onPressed:(){
              isBudgetSet = true;
              balance = double.parse(_budgetController.text);
              setState(() {});
            },
            child: Text(
              'Start Trading',
              style: GoogleFonts.poppins(
                color: Colors.black,
                fontSize: 16,
                fontWeight: FontWeight.w600,
              ),
            ),
            style: ElevatedButton.styleFrom(
              backgroundColor: Color(0xFFFFC130),
              padding: EdgeInsets.symmetric(
                horizontal: mediaQuery.size.width * 0.3,
                vertical: mediaQuery.size.height * 0.02,
              ),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
          ),
        ],
      ),

    );
  }
}
