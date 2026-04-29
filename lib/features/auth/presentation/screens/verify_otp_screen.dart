import 'package:e_com/features/app/extensions/utils_extention.dart';
import 'package:flutter/material.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

import '../../../../app/app_colors.dart';
import '../widgets/app_logo.dart';
class VerifyOtpScreen extends StatefulWidget {
  const VerifyOtpScreen({super.key});
  static const String name = '/verify_otp';
  @override
  State<VerifyOtpScreen> createState() => _VerifyOtpScreenState();
}

class _VerifyOtpScreenState extends State<VerifyOtpScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.all(16),
            child: Column(
              children: [
                AppLogo(height: 100, width: 100),
                const SizedBox(height: 16),
                Text("Enter OTP Code",
                  style: context.textTheme.titleLarge,
                ),
                Text("A 4 digit otp code has been sent",
                  style: context.textTheme.bodyMedium?.copyWith(color: Colors.grey),
                ),
                const SizedBox(height: 24),
                MaterialPinField(
                  length: 4,
                  // pinController: _otpTEController,
                  keyboardType: TextInputType.number,
                  textInputAction: TextInputAction.done,
                  theme: MaterialPinTheme(
                    shape: MaterialPinShape.outlined,
                    fillColor: Colors.transparent,
                    borderColor: AppColors.themeColor,
                    completeFillColor: Colors.transparent,
                    completeBorderColor: AppColors.themeColor,
                    spacing: 16,
                    cellSize: Size(50, 50),
                  ),
                ),
                const SizedBox(height: 16),
                FilledButton(
                  onPressed: _onTapSignPage,
                  child: Text('Next'),
                ),
                ],
            ),
          ),
        ),
      ),
    );
  }
  void _onTapSignPage(){

  }
}
