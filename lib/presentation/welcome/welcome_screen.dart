import 'package:flutter/material.dart';
import 'package:food_delivery/presentation/welcome/widgets/bottom_gradient_widget.dart';
import 'package:food_delivery/presentation/welcome/widgets/get_started_buttom_widget.dart';
import 'package:food_delivery/presentation/welcome/widgets/header_widget.dart';
import 'package:food_delivery/utils/dimentions.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen>
    with SingleTickerProviderStateMixin {
  
late AnimationController _animCtr;
  late Animation<Offset> _animOffset;

  @override
  void initState() {
    super.initState();

    _animCtr =
        AnimationController(duration: const Duration(seconds: 2), vsync: this)
          ..addListener(() {})
          ..forward();
    _animOffset = Tween<Offset>(
            begin: const Offset(1.5, 0.0), end: const Offset(0.0, 0.0))
        .animate(CurvedAnimation(
            parent: _animCtr,

            curve: const Interval(0.7, 1, curve: Curves.easeIn)));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          const SizedBox.expand(
            child: Image(
              image: AssetImage(
                'assets/images/10.jpg',
              ),
              fit: BoxFit.cover, 
            ),
          ),
          SafeArea(
            child: Stack(
            children: [
              Positioned(                
                left: AppDimens.bodyMarginLarge,
                right: AppDimens.bodyMarginLarge,
                bottom: AppDimens.bodyMarginLarge * 10,
                child: const HeaderWidget(),
              ),
              const Positioned(
                bottom: 0,
                left: 0,
                right: 0,
                child: BottomGradientWidget(),
              ),
              Positioned(
                  bottom: AppDimens.bodyMarginSmall * 1.5,
                  left: AppDimens.bodyMarginMedium,
                  right: AppDimens.bodyMarginMedium,
                  child: SlideTransition(
                    position: _animOffset,
                    child: GetStartedButton(animOffset: _animOffset),
                  ))
            ],
          ),
          ),
        ],
      ),
    );
  }
}
