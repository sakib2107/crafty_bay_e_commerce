import 'sign_up_screen.dart';

import '../../../app/extensions/utils_extention.dart';
import 'package:flutter/material.dart';
import '../../../shared/presentation/widgets/language_switcher.dart';
import '../widgets/app_logo.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});
  static const String name = '/sign_in';
  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.all(16),
            child: Column(
              children: [
               // LanguageSwitcher(),
                AppLogo(height: 100, width: 100),
                const SizedBox(height: 16),
                Text(
                  context.l10n.logInAccount,

                  style: context.textTheme.titleLarge?.copyWith(fontSize: 22),
                ),
                Text(
                  context.l10n.logInSubtitle,
                  style: context.textTheme.bodyMedium?.copyWith(
                    color: Colors.grey,
                  ),
                ),
                const SizedBox(height: 24),
                TextField(
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(hintText: context.l10n.email),
                  textInputAction: TextInputAction.next,
                ),
                const SizedBox(height: 8),
                TextField(
                  obscureText: true,
                  obscuringCharacter: '*',
                  textInputAction: TextInputAction.next,
                  decoration: InputDecoration(hintText: context.l10n.password),
                ),
                const SizedBox(height: 16),
                FilledButton(
                  onPressed: _onTapSignInButton,
                  child: Text(context.l10n.signIn),
                ),
                const SizedBox(height: 16),
                TextButton(
                  onPressed: _onTapSignUpButton,
                  child: Text(context.l10n.signUp),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
  void _onTapSignUpButton() {
    Navigator.pop(context);
  }
  void _onTapSignInButton() {

  }
}
