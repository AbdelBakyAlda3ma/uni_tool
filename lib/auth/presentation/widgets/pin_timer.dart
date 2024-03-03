import 'dart:async';

import 'package:flutter/material.dart';

class PinTimer extends StatefulWidget {
  const PinTimer({super.key});

  @override
  State<PinTimer> createState() => _PinTimerState();
}

class _PinTimerState extends State<PinTimer> {
  Timer? _timer;
  int _start = 0;
  void startTimer() {
    const oneSec = Duration(seconds: 1);
    _timer = Timer.periodic(
      oneSec,
      (Timer timer) {
        if (_start == 14) {
          setState(() {
            _start = 0;
          });
        } else {
          setState(() {
            _start++;
          });
        }
      },
    );
  }

  @override
  void initState() {
    startTimer();
    super.initState();
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Text(
      "00:$_start Sec",
    );
  }
}
