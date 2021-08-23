import 'package:flutter/material.dart';
import 'package:gigi_store/components/custom_suffix_icon.dart';
import 'package:gigi_store/components/default_button.dart';
import 'package:gigi_store/components/form_error.dart';
import 'package:gigi_store/components/no_account_text.dart';
import 'package:gigi_store/components/social_card.dart';

import '../../../constants.dart';
import '../../../size_config.dart';

class ForgotPasswordForm extends StatefulWidget {
  @override
  _ForgotPasswordFormState createState() => _ForgotPasswordFormState();
}

class _ForgotPasswordFormState extends State<ForgotPasswordForm> {
  final _formKey = GlobalKey<FormState>();
  final List<String> errors = [];
  String? email;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          TextFormField(
            keyboardType: TextInputType.emailAddress,
            onSaved: (newValue) => email = newValue,
            onChanged: (value) {
              if (value.isNotEmpty && errors.contains(kEmailNullError)) {
                setState(() {
                  errors.remove(kEmailNullError);
                });
              } else if (emailValidatorRegExp.hasMatch(value) &&
                  errors.contains(kInvalidEmailError)) {
                setState(() {
                  errors.remove(kInvalidEmailError);
                });
              }
              return null;
            },
            validator: (value) {
              if (value!.isEmpty && !errors.contains(kEmailNullError)) {
                setState(() {
                  errors.add(kEmailNullError);
                });
              } else if (!emailValidatorRegExp.hasMatch(value) &&
                  !errors.contains(kInvalidEmailError)) {
                setState(() {
                  errors.add(kInvalidEmailError);
                });
              }
              return null;
            },
            decoration: InputDecoration(
              labelText: "Email",
              hintText: "Enter your email",
              floatingLabelBehavior: FloatingLabelBehavior.always,
              suffixIcon: CustomSuffix(
                icon: Icons.email_outlined,
              ),
            ),
          ),
          SizedBox(height: getProportionateScreenHeight(30)),
          FormError(errors: errors),
          SizedBox(height: SizeConfig.screenHeight! * 0.15),
          DefaultButton(
            text: "Continue",
            press: () {
              if (_formKey.currentState!.validate()) {
                _formKey.currentState!.save();
              }
            },
          ),
          SizedBox(height: SizeConfig.screenHeight! * 0.1),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SocialCard(
                icon: "assets/images/icons8-google-48.png",
                press: () {},
              ),
              SocialCard(
                icon: "assets/images/logo-facebookpng-32214.png",
                press: () {},
              ),
              SocialCard(
                icon: "assets/images/icons8-twitter-48.png",
                press: () {},
              ),
            ],
          ),
          SizedBox(height: getProportionateScreenHeight(20)),
          NoAccountText(),
        ],
      ),
    );
  }
}