import 'package:flutter/material.dart';

class Background extends StatelessWidget {
  final Widget child;
  const Background({
    super.key,
    required this.child,
    this.topImage = "assets/images/12.png",
  });

  final String topImage;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SizedBox(
        width: double.infinity,
        height: MediaQuery.of(context).size.height,
        child: Stack(
          alignment: Alignment.center,
          children: <Widget>[
            SizedBox.expand(
              child: Image.asset(
                topImage,
                fit: BoxFit.cover,
              ),
            ),
            SafeArea(child: child),
          ],
        ),
      ),
    );
  }
}
