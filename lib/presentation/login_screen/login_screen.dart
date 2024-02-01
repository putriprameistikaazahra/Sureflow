import 'package:flutter/material.dart';
import 'package:theflutterway_s_admin_app/core/app_export.dart';
import 'package:theflutterway_s_admin_app/widgets/custom_elevated_button.dart';
import 'package:theflutterway_s_admin_app/widgets/custom_text_form_field.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({Key? key})
      : super(
          key: key,
        );

  TextEditingController emailController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Form(
          key: _formKey,
          child: SizedBox(
            width: double.maxFinite,
            child: Column(
              children: [
                SizedBox(height: 19.v),
                Expanded(
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        _buildTwentyOne(context),
                        SizedBox(height: 22.v),
                        _buildTwentyThree(context),
                        SizedBox(height: 20.v),
                        _buildFifteen(context),
                        SizedBox(height: 30.v),
                        CustomElevatedButton(
                          width: 154.h,
                          text: "LOGIN",
                        ),
                        SizedBox(height: 6.v),
                        RichText(
                          text: TextSpan(
                            children: [
                              TextSpan(
                                text: "Belum punya akun? ",
                                style: theme.textTheme.bodySmall,
                              ),
                              TextSpan(
                                text: "Register",
                                style: theme.textTheme.labelLarge,
                              ),
                            ],
                          ),
                          textAlign: TextAlign.left,
                        ),
                        SizedBox(height: 13.v),
                        CustomImageView(
                          imagePath: ImageConstant.imgEllipse4,
                          height: 95.v,
                          width: 75.h,
                          alignment: Alignment.centerLeft,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildTwentyOne(BuildContext context) {
    return SizedBox(
      height: 121.v,
      width: 358.h,
      child: Stack(
        alignment: Alignment.topRight,
        children: [
          Align(
            alignment: Alignment.bottomLeft,
            child: SizedBox(
              width: 281.h,
              child: RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: "Hello, \n",
                      style: theme.textTheme.displaySmall,
                    ),
                    TextSpan(
                      text: "Welcome ",
                      style: CustomTextStyles.displaySmallLime600,
                    ),
                    TextSpan(
                      text: "Back !",
                      style: theme.textTheme.displaySmall,
                    ),
                  ],
                ),
                textAlign: TextAlign.left,
              ),
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgRectangle5,
            height: 34.v,
            width: 116.h,
            alignment: Alignment.topRight,
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildTwelve(BuildContext context) {
    return Align(
      alignment: Alignment.bottomLeft,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Email ",
            style: theme.textTheme.headlineSmall,
          ),
          CustomTextFormField(
            controller: emailController,
            hintText: "Type here...",
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildTwentyThree(BuildContext context) {
    return SizedBox(
      height: 376.v,
      width: double.maxFinite,
      child: Stack(
        alignment: Alignment.topLeft,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgRectangle1,
            height: 263.v,
            width: 242.h,
            alignment: Alignment.topCenter,
          ),
          CustomImageView(
            imagePath: ImageConstant.imgEllipse1,
            height: 175.v,
            width: 75.h,
            alignment: Alignment.topLeft,
            margin: EdgeInsets.only(top: 21.v),
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: SizedBox(
              height: 162.v,
              width: 367.h,
              child: Stack(
                alignment: Alignment.bottomLeft,
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgEllipse3,
                    height: 95.v,
                    width: 50.h,
                    alignment: Alignment.topRight,
                  ),
                  _buildTwelve(context),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildFifteen(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 26.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Password",
            style: theme.textTheme.headlineSmall,
          ),
          SizedBox(height: 6.v),
          CustomTextFormField(
            controller: passwordController,
            hintText: "Type here...",
            textInputAction: TextInputAction.done,
            textInputType: TextInputType.visiblePassword,
            obscureText: true,
          ),
        ],
      ),
    );
  }
}
