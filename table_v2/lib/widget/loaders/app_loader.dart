import 'package:flutter/cupertino.dart';
import 'package:lottie/lottie.dart';

class AppLoader extends StatelessWidget {
  final double? height, width;

  const AppLoader({Key? key, this.height, this.width}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Lottie.asset('assets/lottie/balon.json',
            fit: BoxFit.contain,
            height: height ?? 100,
            width: width ?? 100));
  }
}