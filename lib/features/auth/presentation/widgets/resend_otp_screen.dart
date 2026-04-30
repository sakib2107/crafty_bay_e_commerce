import 'dart:async';

import 'package:e_com/app/extensions/localization_extention.dart';
import 'package:flutter/material.dart';

import '../../../../app/app_colors.dart';

class ResendOtpSection extends StatefulWidget {
  const ResendOtpSection({super.key});

  @override
  State<ResendOtpSection> createState() => _ResendOtpSectionState();
}

class _ResendOtpSectionState extends State<ResendOtpSection> {
  Timer? _timer;
  int _start = 30;
  bool _showResendOtpButton = true;

  @override
  void initState() {
    super.initState();
    _startTimer();
  }

  void _startTimer() {
    _start = 30;
    _showResendOtpButton = false;
    setState(() {});

    _timer = Timer.periodic(Duration(seconds: 1), (timer) {
      if (_start == 0) {
        timer.cancel();
        _showResendOtpButton = true;
      } else {
        _start--;
      }
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        if (!_showResendOtpButton)
          RichText(
            text: TextSpan(
              style: TextStyle(color: Colors.black54),
              children: [
                TextSpan(text:context.l10n.otpPageLastTitle),
                TextSpan(
                  text: '${_start}s',
                  style: TextStyle(
                    color: AppColors.themeColor,
                    fontWeight:FontWeight.w600,
                  ),
                ),
              ],
            ),
          ),
        if (_showResendOtpButton)
          TextButton(onPressed: _onTapSignUpButton, child: Text(context.l10n.resent)),
      ],
    );
  }

  void _onTapSignUpButton() {
    _startTimer();
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }
}
