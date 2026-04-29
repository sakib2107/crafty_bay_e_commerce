import 'sign_in_screen.dart';

import '../../../app/extensions/utils_extention.dart';
import 'package:flutter/material.dart';

import '../../../shared/presentation/widgets/language_switcher.dart';
import '../widgets/app_logo.dart';


class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  static const String name = '/sign_up';
  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text(context.l10n.signUp),
      // ),
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
                  context.l10n.createAccount,

                  style: context.textTheme.titleLarge?.copyWith(fontSize: 22),
                ),
                Text(
                  context.l10n.subtitleSignUp,
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
                  textInputAction: TextInputAction.next,
                  decoration: InputDecoration(hintText: context.l10n.firstName),
                ),
                const SizedBox(height: 8),
                TextField(
                  textInputAction: TextInputAction.next,
                  decoration: InputDecoration(hintText: context.l10n.lastName),
                ),
                const SizedBox(height: 8),
                TextField(
                  textInputAction: TextInputAction.next,
                  decoration: InputDecoration(hintText: context.l10n.phone),
                ),
                const SizedBox(height: 8),
                TextField(
                  textInputAction: TextInputAction.next,
                  decoration: InputDecoration(hintText: context.l10n.city),
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
                  onPressed: _onTapSignUpButton,
                  child: Text(context.l10n.signUp),
                ),
                const SizedBox(height: 16),
                TextButton(
                  onPressed: _onTapSignInButton,
                  child: Text(context.l10n.signIn),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void _onTapSignUpButton() {}
  void _onTapSignInButton() {
    Navigator.pushNamed(context, SignInScreen.name);
  }
}
