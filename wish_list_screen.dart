import 'package:flutter/material.dart';

class WishListScreen extends StatefulWidget {
  const WishListScreen({Key? key}) : super(key: key);

  @override
  State<WishListScreen> createState() => _WishListScreenState();
}

class _WishListScreenState extends State<WishListScreen> {
  @override
  Widget build(BuildContext context) {
    return const EmptyWishListScreen();
  }
}

class EmptyWishListScreen extends StatefulWidget {
  const EmptyWishListScreen({Key? key}) : super(key: key);

  @override
  State<EmptyWishListScreen> createState() => _EmptyWishListScreenState();
}

class _EmptyWishListScreenState extends State<EmptyWishListScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        decoration: const BoxDecoration(color: Colors.white),
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 70,
              child: Container(
                color: const Color(0xFFFFFFFF),
              ),
            ),
            SizedBox(
              width: double.infinity,
              height: 250,
              child: Image.asset(
                "assets/images/Emp.png",
                height: 250,
                width: double.infinity,
              ),
            ),
            SizedBox(
              height: 40,
              child: Container(
                color: const Color(0xFFFFFFFF),
              ),
            ),
            const SizedBox(
              width: double.infinity,
              child: Text(
                "You haven't anything to wish List",
                style: TextStyle(
                  color: Colors.orange,
                  fontFamily: 'Roboto-Light.ttf',
                  fontSize: 20,
                  fontStyle: FontStyle.normal,
                ),
                textAlign: TextAlign.center,
              ),
            )
          ],
        ),
      ),
    );
  }
}
