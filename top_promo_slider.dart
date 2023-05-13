import 'package:another_carousel_pro/another_carousel_pro.dart';
import 'package:flutter/material.dart';


class TopPromoSlider extends StatelessWidget {
  const TopPromoSlider(
      {Key? key})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10, right: 10),
      child: SizedBox(
          height: 150.0,
          width: double.infinity,
          child:AnotherCarousel(
            images: [
              Image.asset(
                "assets/images/1.jpg",
                height: 150,
                width: double.infinity,
              ),
              Image.asset(
                "assets/images/2.jpg",
                height: 150,
                width: double.infinity,
              ),
              Image.asset(
                "assets/images/3.jpg",
                height: 150,
                width: double.infinity,
              ),
              Image.asset(
                "assets/images/4.jpg",
                height: 150,
                width: double.infinity,
              ),

 ],
            dotSize: 4.0,
            dotSpacing: 15.0,
            dotColor: Colors.purple,
            indicatorBgPadding: 5.0,
            dotBgColor: Colors.black54.withOpacity(0.2),
            borderRadius: true,
            radius: const Radius.circular(20),
            moveIndicatorFromBottom: 180.0,
            noRadiusForIndicator: true,
          )),
    );
  }
}