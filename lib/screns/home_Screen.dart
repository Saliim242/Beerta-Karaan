import 'package:art_sweetalert/art_sweetalert.dart';
import 'package:berta_karaan/hidden_drawer.dart';
import 'package:berta_karaan/screns/QebahaBeerta.dart';

import 'package:carousel_slider/carousel_slider.dart';

import 'package:flutter/material.dart';

import 'package:rflutter_alert/rflutter_alert.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int activateIdicotor =0;

  final List<String> images = [
    "images/C2.jpg",
    "images/C1.jpg",
    "images/b1.jpg",
    "images/b1.jpg",
    "images/b2.jpg",
    "images/b3.jpg",
    "images/b4.jpg",
    "images/b5.jpg",
    "images/b6.jpg",
    "images/b7.jpg",
    "images/b8.jpg",
    "images/b9.jpg",
    "images/b10.jpg",
    "images/b11.jpg",
    "images/b12.jpg",
    "images/b13.jpg",
    "images/b14.jpg",

  ];
  @override
  Widget build(BuildContext context) {


    return Scaffold(
      backgroundColor: Colors.white,
      // appBar: AppBar(
      //   elevation: 0,
      //   backgroundColor: Colors.white,
      //   title: RichText(
      //     text: TextSpan(
      //         text: "Saluu House ",
      //         style: TextStyle(
      //           color: Color(0xffc0392b),
      //           fontSize: 25,
      //           fontFamily: "Pacifico",
      //         fontWeight: FontWeight.bold,
      //           letterSpacing: 0.2,
      //         ),
      //         // Farm
      //         children: [
      //           TextSpan(
      //             text: "Farm",
      //             style: TextStyle(
      //               color:  Color(0xFF2f2f51)  ,    //Color(0xff2ecc71),
      //               fontSize: 23,
      //               fontFamily: "Pacifico",
      //              fontWeight: FontWeight.bold,
      //               letterSpacing: 0.2,
      //             ),
      //           )
      //         ]),
      //   ),
      //   // Menu Icon Button
      //   leading: IconButton(
      //     icon: Icon(
      //       Icons.menu_rounded,
      //       size: 25,
      //       color: Color(0xFF2f2f51),
      //     ),
      //     onPressed: () {
      //       HiddenDawer();
      //
      //
      //     },
      //   ),
      //   actions: [
      //     IconButton(
      //       icon: Icon(
      //         Icons.phone,
      //         size: 25,
      //         color: Color(0xff3498db),
      //       ),
      //       onPressed: () {},
      //     ),
      //     IconButton(
      //       icon: Icon(
      //         Icons.logout,
      //         size: 25,
      //         color: Color(0xffc0392b),
      //       ),
      //       onPressed: () {},
      //     ),
      //   ],
      // ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Image View
            SizedBox(
              height: 15,
            ),
            Container(
              //MediaQuery.of(context).size.width
              width: double.infinity,
              decoration: BoxDecoration(
                //color: Colors.white,
                borderRadius: BorderRadius.circular(20),
              ),
              child: CarouselSlider(
                options: CarouselOptions(
                  onPageChanged: (index , reson) => setState(() =>
                      activateIdicotor = index),
                  height: 200,
                  autoPlay: true,
                 //  enlargeCenterPage: true,
                  aspectRatio: 16 / 9,
                  autoPlayCurve: Curves.fastOutSlowIn,
                 // viewportFraction: 0.7,
                  autoPlayAnimationDuration: Duration(milliseconds: 800),
                  enableInfiniteScroll: true,
                ),
                items: images
                    .map(
                      (e) => ClipRRect(
                        borderRadius: BorderRadius.circular(14),
                        child: Stack(
                          //fit: StackFit.loose,
                          children: [
                            Image.asset(
                              e,
                              width: 300,
                              height: 200,
                              fit: BoxFit.cover,
                            )
                          ],
                        ),
                      ),
                    )
                    .toList(),
              ),
            ),
            // Qeebta Ticks
            SizedBox(height: 15),
            buildIdicotor(),
            // Ticket
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "List Of Tickets",
                  style: TextStyle(
                    color: Color(0xFF2f2f51),
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      fontFamily: "Quintessential"),
                ),
                SizedBox(width: 5),
                Icon(
                  Icons.airplane_ticket,
                  size: 30,
                  color: Color(0xffc0392b),
                ),
              ],
            ),

            // Home Page Waaye//
            // Muhiim Saa Id Waaye
            GestureDetector(
              onTap: (){
                Alert(
                  context: context,
                  image: Image.asset("images/l.gif", height: 100,),
                  // type: AlertType.info,
                  title: "Saluu House Farm",
                  style: AlertStyle(
                    titleStyle:
                        TextStyle(
                          color: Color(0xFF2f2f51),
                        fontSize: 25,
                        fontFamily: "Quintessential",
                        fontWeight: FontWeight.bold,
                        letterSpacing: 0.2,
                      ),
                    alertBorder: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(14),
                      side: BorderSide(
                        color: Colors.grey,
                      ),
                    ),
                    animationType: AnimationType.fromTop,
                    animationDuration: Duration(milliseconds: 400),
                    descStyle: TextStyle(fontSize: 14),
                    descTextAlign: TextAlign.start,



                  ),
                  desc: "Hello Salim Abukar Ahmed Ma hubtaa inaad jaranayso "
                      "Ticket_ka Galidda Beerta Qiimahuna Waa \$ 2.0 . ",
                  buttons: [
                    DialogButton(
                      child: Text(
                        "Maya",
                        style: TextStyle(  color: Colors.white, fontSize: 20,),
                      ),
                      onPressed: () {
                        Navigator.pop(context);
                        ArtSweetAlert.show(
                            context: context,
                            artDialogArgs: ArtDialogArgs(

                              sizeErrorIcon: 70,
                                confirmButtonText: "Ok",
                                confirmButtonColor: Color(0xFFc0392b) ,
                                type: ArtSweetAlertType.danger,

                                title: "Oops Wad Ka Noqotay!",
                                text: "Wan Ka Xunahay Madan Jaran !"
                            )
                        );
                        },
                      color: Color(0xFFc0392b),
                    ),
                    DialogButton(
                      child: Text(
                        "Haa",
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                      onPressed: () {
                        Navigator.pop(context);
                        ArtSweetAlert.show(
                            context: context,
                            artDialogArgs: ArtDialogArgs(
                           sizeSuccessIcon: 70,
                              confirmButtonText: "Haye",
                              confirmButtonColor: Color(0xFF2ecc71) ,
                                type: ArtSweetAlertType.success,
                                title: "Wad Aqbashay inad jarato!",
                                text: "So dhawaaw Wad ku Mahad santahay So "
                                    "Boqoshadada !"
                            )
                        );
                        },
                        color: Color(0xFF2ecc71),
                    )
                  ],
                ).show();



              },
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),

                decoration: BoxDecoration(
                  color: Colors.white,

                  boxShadow: [
                    BoxShadow(
                      // changes position of shadow
                      blurRadius: 12,
                      offset: Offset(1,5),
                      color: Colors.grey.withOpacity(1),
                    ),
                    BoxShadow(
                      // changes position of shadow
                      blurRadius: 12,
                      offset: Offset(1,5),
                      color: Colors.grey.shade200.withOpacity(0.6),
                    ),
                  ],
                  borderRadius: BorderRadius.circular(12),
                  image: DecorationImage(
                    image: AssetImage("images/H.jpg"),
                    fit: BoxFit.cover,
                  ),
                ),
                width: double.infinity,
                height: 200,
              ),
            ),
            // Text Galiida Beerta
            Container(
              child: RichText(
                text: TextSpan(
                  text: "Galidda Beerta ",
                  style: TextStyle(
                    color: Color(0xFF2f2f51),
                    fontSize: 20,
                    fontFamily: "Quintessential",
                    fontWeight: FontWeight.bold,
                    letterSpacing: 0.2,
                  ),
                  children: [
                    TextSpan(
                      text: "\$2.0",
                      style: TextStyle(
                        color: Color(0xffc0392b),
                        fontSize: 20,
                        fontFamily: "Quintessential",
                        fontWeight: FontWeight.w500,
                        letterSpacing: 0.2,
                      ),
                    )
                  ],
                ),
              ),
            ),
            //Displaying List Of Row
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    BeertaQebaheda(
                      image: "images/Carurta.jpg",
                      text: "Qeebta Carurta",
                      money: " \$10",
                    ),
                    BeertaQebaheda(
                      image: "images/C1.jpg",
                      text: "Qeebta Libaaxyada",
                      money: " \$5",
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    BeertaQebaheda(
                      image: "images/carur.jpg",
                      text: "Qeebta Carurta",
                      money: " \$3",
                    ),
                    BeertaQebaheda(
                      image: "images/wareg.jpg",
                      text: "Qeebta Wareega",
                      money: " \$7",
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    BeertaQebaheda(
                      image: "images/b12.jpg",
                      text: "Qeebta Lamanaha",
                      money: " \$12",
                    ),
                    BeertaQebaheda(
                      image: "images/b6.jpg",
                      text: "Qeebta Xafladaha ",
                      money: " \$20",
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }


  // This What Makes The App So Nice Wana Indicators
  Widget   buildIdicotor() => AnimatedSmoothIndicator(
      activeIndex: activateIdicotor,
      count: images.length,
      axisDirection: Axis.horizontal,
      effect: WormEffect(
        dotHeight: 10,
        dotWidth: 10,
        activeDotColor: Color(0xffc0392b),
        type: WormType.thin,
        radius: 3,
        dotColor: Colors.deepPurple.shade200,
       spacing: 12,
        paintStyle: PaintingStyle.stroke,


      ),

  );


}
