import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import 'package:google_fonts/google_fonts.dart';
import 'createacc_page.dart';
import 'home_page.dart';
import 'buy_page.dart';
import 'portfolio_page.dart';
import 'records_page.dart';
import 'search_page.dart';
import 'sell_page.dart';
import 'yourAcc_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  //Colors
  Color blueBg = Color.fromRGBO(69, 7, 132, 1);
  Color roseLight = Color.fromRGBO(253, 176, 150, 1);
  Color roseDark = Color.fromRGBO(229, 149, 142, 1);
  Color goldAcc = Color.fromRGBO(255, 185, 2, 1);
  final items = [
    'Item 1',
    'Item 2',
    'Item 3',
    'Item 4',
    'Item 5',
    'Item 6',
    'Item 7',
    'Item 8',
    'Item 9',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: blueBg,
      bottomNavigationBar: CurvedNavigationBar(
          // backgroundColor: Colors.white,
          // color: Colors.deepPurple,
          backgroundColor: blueBg,
          color: roseDark,
          animationDuration: const Duration(milliseconds: 300),
          items: <Widget>[
            Icon(
              Icons.home,
              color: Colors.white,
              size: 50,
            ),
            Icon(
              Icons.search,
              color: Colors.white,
              size: 50,
            ),
            Icon(
              Icons.history,
              color: Colors.white,
              size: 50,
            ),
            Icon(
              Icons.person,
              color: Colors.white,
              size: 50,
            ),
          ],
          onTap: (index) {
            print(index);

            if (index == 0) {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => HomePage()));
            } else if (index == 1) {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => SearchPage()));
            } else if (index == 2) {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => RecordsPage()));
            } else {
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => PortfolioPage()));
            }
          }),
      appBar: AppBar(
        backgroundColor: roseDark,
        centerTitle: true,
        title: const Text('Home'),
        leading: IconButton(
          onPressed: () {},
          icon: Icon(Icons.star),
        ),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => YourAccountPage()));
            },
            icon: Icon(Icons.account_circle), //star==app logo
          ),
        ],
      ),
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Container(
                child: Column(
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.fromLTRB(0, 15, 0, 5),
                      child: Text(
                        "Balance",
                        textAlign: TextAlign.center,
                        style: GoogleFonts.montserrat(
                          fontSize: 30,
                          fontWeight: FontWeight.w600,
                          height: 1.6356666088,
                          letterSpacing: -0.3000000119,
                          color: goldAcc,
                        ),
                      ),
                    ),
                    // Row(
                    //   mainAxisAlignment: MainAxisAlignment.center,
                    //   children: <Widget>[
                    //     Text("\$",
                    //    textAlign:  TextAlign.center,
                    //     style:  GoogleFonts.montserrat(
                    //       fontSize:  37,
                    //       fontWeight:  FontWeight.w700,
                    //       height:  1.6356666153,
                    //       letterSpacing:  -0.3000000119,
                    //       color:  Color(0xffffffff),
                    //     ),
                    //     ),
                    //     SizedBox(
                    //       width: 200,
                    //       child: TextFormField(
                    //         decoration: const InputDecoration(
                    //           labelText: "420.69",
                    //           fillColor: Colors.white,
                    //         ),
                    //       ),
                    //     ),
                    //   ],
                    // ),

                    Padding(
                      padding: EdgeInsets.fromLTRB(0, 0, 0, 5),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            "\$",
                            textAlign: TextAlign.center,
                            style: GoogleFonts.montserrat(
                              fontSize: 45,
                              fontWeight: FontWeight.w700,
                              height: 1.6356666153,
                              letterSpacing: -0.3000000119,
                              color: goldAcc,
                            ),
                          ),
                          Text(
                            "\420.69",
                            textAlign: TextAlign.center,
                            style: GoogleFonts.montserrat(
                              fontSize: 37,
                              fontWeight: FontWeight.w700,
                              height: 1.6356666153,
                              letterSpacing: -0.3000000119,
                              color: goldAcc,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[

                    //new code here
                    // ElevatedButton(
                    //   onPressed: () {
                    //     Navigator.of(context).push(
                    //         MaterialPageRoute(builder: (context) => BuyPage()));
                    //   },
                    //   style: ElevatedButton.styleFrom(
                    //     backgroundColor: Colors.green,
                    //   ),
                    //   child: const Text(
                    //     "Buy",
                    //     style: TextStyle(
                    //       color: Colors.white,
                    //       fontSize: 30,
                    //     ),
                    //   ),
                    // ),

                    //Prototype

                    Container(
                      // buybuttonvzc (1:251)
                      margin: EdgeInsets.fromLTRB(0, 0, 10, 0),
                      child: TextButton(
                        onPressed: () {
                          print('Buy Clicked');
                        },
                        style: TextButton.styleFrom(
                          padding: EdgeInsets.zero,
                        ),
                        child: Container(
                          width: 120,
                          height: 50,
                          decoration: BoxDecoration(
                            color: Color(0xffffffff),
                            borderRadius: BorderRadius.circular(30),
                            boxShadow: [
                              BoxShadow(
                                color: Color(0x93000000),
                                offset: Offset(0, 4),
                                blurRadius: 2,
                              ),
                            ],
                          ),
                          child: Center(
                            child: Center(
                              child: Text(
                                'Buy',
                                textAlign: TextAlign.center,
                                style: GoogleFonts.montserrat(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600,
                                  height: 1.6356666088,
                                  letterSpacing: -0.3000000119,
                                  color: Color(0xff000000),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),

                    //-------------------
                    // ElevatedButton(
                    //   onPressed: () {
                    //     Navigator.of(context).push(MaterialPageRoute(
                    //         builder: (context) => SellPage()));
                    //   },
                    //   style: ElevatedButton.styleFrom(
                    //     backgroundColor: Colors.red,
                    //   ),
                    //   child: const Text(
                    //     "Sell",
                    //     style: TextStyle(
                    //       color: Colors.white,
                    //       fontSize: 30,
                    //     ),
                    //   ),
                    // ),

                    //Sell
                    TextButton(
                      // sellbuttonsoN (1:252)
                      onPressed: () {},
                      style: TextButton.styleFrom(
                        padding: EdgeInsets.zero,
                      ),
                      child: Container(
                        width: 120,
                        height: 50,
                        decoration: BoxDecoration(
                          border: Border.all(color: Color(0xffffffff)),
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: Center(
                          child: Center(
                            child: Text(
                              'Sell',
                              textAlign: TextAlign.center,
                              style: GoogleFonts.montserrat(
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                                height: 1.6356666088,
                                letterSpacing: -0.3000000119,
                                color: Color(0xffffffff),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Padding(
                        padding: EdgeInsets.fromLTRB(60, 40, 60, 0),
                        child: Column(
                          children: [
                            Align(
                              alignment: Alignment.topLeft,
                              child: Text(
                                "Your Watchlist",
                                style: GoogleFonts.montserrat(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  height: 1.6356666088,
                                  letterSpacing: -0.3000000119,
                                  color: goldAcc,
                                ),
                              ),
                            ),
                            SizedBox(
                              width: double.infinity,
                              height: 200,
                              child: ListView.builder(
                                itemCount: items.length,
                                itemBuilder: (context, index) {
                                  return ListTile(
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                    title: Text(
                                      'Item ${items[index]}',
                                      style: GoogleFonts.montserrat(
                                        fontSize: 18,
                                        fontWeight: FontWeight.w600,
                                        height: 1.6356666088,
                                        letterSpacing: -0.3000000119,
                                        color: goldAcc,
                                      ),
                                    ),
                                    subtitle: Text(
                                      'Item description',
                                      style: GoogleFonts.montserrat(
                                        fontSize: 16,
                                        fontWeight: FontWeight.normal,
                                        height: 1.6356666088,
                                        letterSpacing: -0.3000000119,
                                        color: roseLight,
                                      ),
                                    ),
                                    trailing: IconButton(
                                      icon: new Icon(Icons.more_vert),
                                      onPressed: () {
                                        //Additional Details
                                        print("Additonal");
                                      },
                                      color: goldAcc,
                                    ),
                                  );
                                },
                              ),
                            ),
                          ],
                        )),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
