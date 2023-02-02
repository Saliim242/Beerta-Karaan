import 'package:flutter/material.dart';

class BeertaQebaheda extends StatelessWidget {
  const BeertaQebaheda({Key? key, this.image, this.text, this.money})
      : super(key: key);

  final image;
  final text;
  final money;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        GestureDetector(
          onTap: (){
            print("Hello Word");
          },
          child: Row(
            children: [
              Container(
                margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                width: 170,
                height: 180,
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      spreadRadius: 1,
                        offset: Offset(-2, -2),
                        blurRadius: 4,
                        color:  Colors.grey.withOpacity(0.6)
                      // AppColor.gradientSecond.withOpacity(0.1),
                    ),
                    BoxShadow(
                      spreadRadius: 1,
                      offset: Offset(2, 2),
                      blurRadius: 4,
                      color:  Colors.white.withOpacity(0.6),
                    )
                  ],
                  borderRadius: BorderRadius.circular(12),
                  image: DecorationImage(
                    image: AssetImage(image),
                    fit: BoxFit.cover,
                  ),
                ),

              ),

            ],
          ),
        ),
        Container(
          margin: EdgeInsets.only(left: 20),
          child: RichText(
            text: TextSpan(

              text: text,
              style: TextStyle(
                color:Color(0xFF2f2f51),
                fontSize: 15,
                fontFamily: "Quintessential",
                fontWeight: FontWeight.bold,
                letterSpacing: 0.2,
              ),

              children: [
                TextSpan(
                  text: money,
                  style: TextStyle(
                    color: Color(0xffc0392b),
                    fontSize: 15,
                    fontFamily: "Quintessential",
                    fontWeight: FontWeight.w500,
                    letterSpacing: 0.2,
                  ),
                )
              ],
            ),
          ),
        ),
      ],
    );
  }


}
