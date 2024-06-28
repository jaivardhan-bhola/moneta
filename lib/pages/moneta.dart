import 'package:dialog_flowtter/dialog_flowtter.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';
import 'package:moneta/pages/messages.dart';
import 'package:url_launcher/url_launcher.dart';

class Moneta extends StatefulWidget {
  const Moneta({super.key});

  @override
  State<Moneta> createState() => _MonetaState();
}

class _MonetaState extends State<Moneta> {
  late DialogFlowtter dialogFlowtter;
  final TextEditingController _controller = TextEditingController();
  List<Map<String, dynamic>> messages = [];
  int hour = DateTime.now().hour;

  void initState() {
    super.initState();
    DialogFlowtter.fromFile().then((instance) => dialogFlowtter = instance);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF1A1A22),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'Good ${hour < 12 ? 'Morning' : hour < 18 ? 'Afternoon' : 'Evening'}'
                  , style: GoogleFonts.poppins(
            fontSize: 36,
            fontWeight: FontWeight.bold,
            color: Color(0xFFFFFFFF)
            )),
          ),
          SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.only(left:16.0,right: 16.0),
            child: GestureDetector(
              onTap: (){
                showDialog(context: context, builder: (context){
                  return AlertDialog(
                    backgroundColor: Color(0xFF1A1A22),
                    title: Center(
                      child: Text("MonaAI", style: GoogleFonts.poppins(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFFFFFFFF)
                      )),
                    ),
                    content: SizedBox(
                      height: MediaQuery.of(context).size.height * 0.8,
                      width: MediaQuery.of(context).size.width * 0.9,
                      child: Column(
                        children: [
                          Expanded(child: MessagesScreen(messages: messages)),
                          Container(
                            padding: EdgeInsets.symmetric(
                              horizontal: 14,
                              vertical: 8,
                            ),
                            color: Color(0xff1D1C28),
                            child: Row(
                              children: [
                                Expanded(
                                  child: TextField(
                                    controller: _controller,
                                    style: GoogleFonts.poppins(
                                      color: Colors.white,

                                    ),
                                    decoration: InputDecoration(
                                      hintText: 'Type a message',
                                      hintStyle: TextStyle(
                                        color: Colors.white,
                                      ),
                                      border: InputBorder.none,
                                    ),
                                  ),
                                ),
                                IconButton(onPressed: (){
                                  sendMessage(_controller.text);
                                  _controller.clear();
                                FocusScope.of(context).unfocus();
                                }, icon: Icon(Icons.send_rounded, color: Colors.white)),
                              ],
                            ),
                          )
                        ],
                      ),
                    )
                  );
                });
    },
              child: Container(
                height: 80,
                decoration: BoxDecoration(
                  color: Color(0xFFFFFFFF),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left:8.0, right: 8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text("Ask MonaAI anything", style: GoogleFonts.poppins(
                          fontSize: 24,
                          fontWeight: FontWeight.w600,
                          color: Color(0xFF000000),
                        )),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Icon(Icons.assistant_outlined, color: Color(0xFF000000), size: 40,),
                      ),

                    ],
                  ),
                ),
              ),
            ),
          ),
          SizedBox(height: 30),
          Center(
            child: Container(
              height:180,
              width: 360,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                image: DecorationImage(
                  image: AssetImage('assets/images/Slideshow.png'),
                  fit: BoxFit.cover
                )
              ),
              child: ImageSlideshow(
                width : 360,
                height: 180,
                initialPage: 0,
                indicatorColor: Color(0xFFFAC840),
                indicatorBackgroundColor: Color(0xFF00855E),
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 20),
                      Padding(
                        padding: const EdgeInsets.only(left:8.0),
                        child: Text("what are stocks?", style: GoogleFonts.poppins(
                          fontSize: 24,
                          fontWeight: FontWeight.w600,
                          color: Color(0xFFFFFFFF)
                        )),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text("A share in the ownership of a company, including a claim on the company's earnings and assets .", style: GoogleFonts.poppins(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: Color(0xFFFFFFFF)
                        )),
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 20),
                      Padding(
                        padding: const EdgeInsets.only(left:8.0),
                        child: Text("Loan tip", style: GoogleFonts.poppins(
                            fontSize: 24,
                            fontWeight: FontWeight.w600,
                            color: Color(0xFFFFFFFF)
                        )),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text("Getting money without any security from the Bank via a Personal Loan is cheaper than borrowing from private agencies.", style: GoogleFonts.poppins(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: Color(0xFFFFFFFF)
                        )),
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 20),
                      Padding(
                        padding: const EdgeInsets.only(left:8.0),
                        child: Text("Beware of little expenses. A small leak will sink a great ship.", style: GoogleFonts.poppins(
                            fontSize: 24,
                            fontWeight: FontWeight.w600,
                            color: Color(0xFFFFFFFF)
                        )),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text("-Benjamin Franklin", style: GoogleFonts.poppins(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: Color(0xFFFFFFFF)
                        )),
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 20),
                      Padding(
                        padding: const EdgeInsets.only(left:8.0),
                        child: Text("Indian market is one of the most attractively priced in the world today", style: GoogleFonts.poppins(
                            fontSize: 24,
                            fontWeight: FontWeight.w600,
                            color: Color(0xFFFFFFFF)
                        )),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text("-Porinju Veliyath", style: GoogleFonts.poppins(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: Color(0xFFFFFFFF)
                        )),
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 20),
                      Padding(
                        padding: const EdgeInsets.only(left:8.0),
                        child: Text("It's not your salary that makes you rich, it's your spending habits.", style: GoogleFonts.poppins(
                            fontSize: 24,
                            fontWeight: FontWeight.w600,
                            color: Color(0xFFFFFFFF)
                        )),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text("- Charles A.Jaffe", style: GoogleFonts.poppins(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: Color(0xFFFFFFFF)
                        )),
                      ),
                    ],
                  ),
                ],
                isLoop: true,
                autoPlayInterval: 5000,
              )
            ),
          ),
          SizedBox(height: 30),
          Padding(
            padding: const EdgeInsets.only(left: 16.0),
            child: Text("Popular Courses", style: GoogleFonts.poppins(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Color(0xFFFFFFFF)
            )),
          ),
          SizedBox(height: 20),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: Row(
                children: [
                  GestureDetector(
                    onTap: () async {
                                  const url = 'https://www.udemy.com/course/introduction-to-accounting-finance-modeling-valuation-by-chris-haroun/?couponCode=LETSLEARNNOWPP';
                                  if(await canLaunch(url)){
                                  await launch(url);
                                  }else {
                                  throw 'Could not launch $url';
                                  }
                                  },
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: 230,
                        width: 240,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Color(0xFF00855E)
                          ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: Image.network('https://img-b.udemycdn.com/course/480x270/888716_4225_8.jpg', width: 240, height: 120, fit: BoxFit.cover)
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text("Introduction to Finance, Accounting, Modeling and Valuation", style: GoogleFonts.poppins(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: Color(0xFFFFFFFF)
                              )),
                            ),
                          Padding(
                            padding: const EdgeInsets.only(left: 8.0),
                            child: Text("5 hours", style: GoogleFonts.poppins(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              color: Color(0xFFFFFFFF)
                            )),
                          )

                          ],
                        ),
                      ),

                    ),
                  ),
                  GestureDetector(
                    onTap: () async {
                                  const url = 'https://www.udemy.com/course/green-finance-strategy/?couponCode=IND21PM';
                                  if(await canLaunch(url)){
                                  await launch(url);
                                  }else {
                                  throw 'Could not launch $url';
                                  }
                                  },
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: 230,
                        width: 240,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Color(0xFF00855E)
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            ClipRRect(
                                borderRadius: BorderRadius.circular(10),
                                child: Image.network('https://img-b.udemycdn.com/course/480x270/5421620_a908_6.jpg', width: 240, height: 120, fit: BoxFit.cover)
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text("Green Finance Strategy", style: GoogleFonts.poppins(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xFFFFFFFF)
                              )),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 8.0),
                              child: Text("1 hour", style: GoogleFonts.poppins(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                  color: Color(0xFFFFFFFF)
                              )),
                            )

                          ],
                        ),
                      ),

                    ),
                  ),
                  GestureDetector(
                    onTap: () async {
                                  const url = 'https://www.udemy.com/course/bond-valuation-mastery/?couponCode=IND21PM';
                                  if(await canLaunch(url)){
                                  await launch(url);
                                  }else {
                                  throw 'Could not launch $url';
                                  }
                                  },
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: 230,
                        width: 240,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Color(0xFF00855E)
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            ClipRRect(
                                borderRadius: BorderRadius.circular(10),
                                child: Image.network('https://img-b.udemycdn.com/course/240x135/1691772_5b02_3.jpg', width: 240, height: 120, fit: BoxFit.cover)
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text("Bond Valuation Mastery - Learn To Value Bonds From Scratch.", style: GoogleFonts.poppins(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xFFFFFFFF)
                              )),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 8.0),
                              child: Text("3.5 hours", style: GoogleFonts.poppins(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                  color: Color(0xFFFFFFFF)
                              )),
                            )

                          ],
                        ),
                      ),

                    ),
                  ),
                  GestureDetector(
                    onTap: () async {
                                  const url = 'https://www.udemy.com/course/how-to-invest-in-stocks-like-a-pro-the-complete-course/?couponCode=IND21PM';
                                  if(await canLaunch(url)){
                                  await launch(url);
                                  }else {
                                  throw 'Could not launch $url';
                                  }
                                  },
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: 230,
                        width: 240,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Color(0xFF00855E)
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            ClipRRect(
                                borderRadius: BorderRadius.circular(10),
                                child: Image.network('https://img-b.udemycdn.com/course/480x270/5764062_0830_2.jpg', width: 240, height: 120, fit: BoxFit.cover)
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text("How to invest in stocks like a pro.The Complete Course!", style: GoogleFonts.poppins(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xFFFFFFFF)
                              )),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 8.0),
                              child: Text("9.5 hours", style: GoogleFonts.poppins(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                  color: Color(0xFFFFFFFF)
                              )),
                            )

                          ],
                        ),
                      ),

                    ),
                  ),
                  GestureDetector(
                    onTap: () async {
                                  const url = 'https://www.udemy.com/course/stock-valuation-using-multiples/';
                                  if(await canLaunch(url)){
                                  await launch(url);
                                  }else {
                                  throw 'Could not launch $url';
                                  }
                                  },
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: 230,
                        width: 240,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Color(0xFF00855E)
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            ClipRRect(
                                borderRadius: BorderRadius.circular(10),
                                child: Image.network('https://img-b.udemycdn.com/course/750x422/2145578_c1a4_2.jpg', width: 240, height: 120, fit: BoxFit.cover)
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text("Build a Robust Stock Valuation System - Financial Modeling", style: GoogleFonts.poppins(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xFFFFFFFF)
                              )),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 8.0),
                              child: Text("4 hours", style: GoogleFonts.poppins(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                  color: Color(0xFFFFFFFF)
                              )),
                            )

                          ],
                        ),
                      ),

                    ),
                  ),
                ]
              ),

            )
          )
        ],
      )
    );
  }
  sendMessage(String text) async {
    if (text.isEmpty) {
      print('Message is empty');
    } else {
      setState(() {
        addMessage(Message(text: DialogText(text: [text])), true);
      });

      DetectIntentResponse response = await dialogFlowtter.detectIntent(
          queryInput: QueryInput(text: TextInput(text: text)));
      if (response.message == null) return;
      setState(() {
        addMessage(response.message!);
      });
    }
  }

  addMessage(Message message, [bool isUserMessage = false]) {
    messages.add({'message': message, 'isUserMessage': isUserMessage});
  }
}