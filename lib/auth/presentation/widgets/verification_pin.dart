import 'package:flutter/material.dart';
import 'package:pinput/pinput.dart';

class VerificationPin extends StatefulWidget {
  const VerificationPin({super.key});

  @override
  State<VerificationPin> createState() => _VerificationPinState();
}

class _VerificationPinState extends State<VerificationPin> {
  final defaultPinTheme = PinTheme(
    width: 58,
    height: 58,
    textStyle: const TextStyle(
        fontSize: 20,
        color: Color.fromRGBO(30, 60, 87, 1),
        fontWeight: FontWeight.w600),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(10),
      color: const Color(0xffF6F6F6),
      border: Border.all(color: Colors.transparent),
      boxShadow: [
        BoxShadow(
            color: Colors.grey[200]!,
            offset: const Offset(4.0, 4.0),
            blurRadius: 15.0,
            spreadRadius: 1.0),
        const BoxShadow(
            color: Colors.white,
            offset: Offset(-4.0, -4.0),
            blurRadius: 15.0,
            spreadRadius: 1.0),
      ],
      gradient: LinearGradient(
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
        colors: [
          Colors.grey[300]!,
          Colors.grey[200]!,
          Colors.grey[100]!,
        ],
        stops: const [
          0.05,
          0.1,
          1,
        ],
      ),
    ),
  );
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: Pinput(
        defaultPinTheme: defaultPinTheme,
        onCompleted: (pin) {},
      ),
    );
  }
}
