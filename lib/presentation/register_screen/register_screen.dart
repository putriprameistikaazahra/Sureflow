import 'package:flutter/material.dart';
import 'package:theflutterway_s_admin_app/core/app_export.dart';
import 'package:theflutterway_s_admin_app/widgets/custom_elevated_button.dart';
import 'package:theflutterway_s_admin_app/widgets/custom_text_form_field.dart';

class RegisterScreen extends StatelessWidget {
  RegisterScreen({Key? key})
      : super(
          key: key,
        );

  TextEditingController emailPlaceholderController = TextEditingController();

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
                        _buildEighteen(context),
                        SizedBox(height: 12.v),
                        SizedBox(
                          height: 697.v,
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
                                imagePath: ImageConstant.imgEllipse1175x75,
                                height: 175.v,
                                width: 75.h,
                                alignment: Alignment.topLeft,
                                margin: EdgeInsets.only(top: 21.v),
                              ),
                              CustomImageView(
                                imagePath: ImageConstant.imgEllipse395x50,
                                height: 95.v,
                                width: 50.h,
                                alignment: Alignment.topRight,
                                margin: EdgeInsets.only(top: 214.v),
                              ),
                              CustomImageView(
                                imagePath: ImageConstant.imgEllipse495x75,
                                height: 95.v,
                                width: 75.h,
                                alignment: Alignment.bottomLeft,
                              ),
                              _buildFive(context),
                            ],
                          ),
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
  Widget _buildEighteen(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 25.h,
        right: 10.h,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 230.h,
            margin: EdgeInsets.only(top: 20.v),
            child: RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: "Hello again, \n",
                    style: theme.textTheme.displaySmall,
                  ),
                  TextSpan(
                    text: "Sign Up ",
                    style: CustomTextStyles.displaySmallLime600,
                  ),
                  TextSpan(
                    text: "free",
                    style: theme.textTheme.displaySmall,
                  ),
                  TextSpan(
                    text: " !",
                    style: theme.textTheme.displaySmall,
                  ),
                ],
              ),
              textAlign: TextAlign.left,
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgRectangle5,
            height: 34.v,
            width: 116.h,
            margin: EdgeInsets.only(
              left: 11.h,
              bottom: 97.v,
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildTwo(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Username",
          style: theme.textTheme.headlineSmall,
        ),
        CustomTextFormField(
          controller: emailPlaceholderController,
          hintText: "Type here...",
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildOne(BuildContext context) {
    return Column(
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
    );
  }

  /// Section Widget
  Widget _buildSixteen(BuildContext context) {
    return Column(
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
    );
  }

  /// Section Widget
  Widget _buildFive(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Padding(
        padding: EdgeInsets.only(
          left: 26.h,
          right: 26.h,
          bottom: 32.v,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            _buildTwo(context),
            SizedBox(height: 25.v),
            _buildOne(context),
            SizedBox(height: 19.v),
            _buildSixteen(context),
            SizedBox(height: 30.v),
            CustomElevatedButton(
              width: 154.h,
              text: "REGISTER",
            ),
            SizedBox(height: 6.v),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.only(left: 84.h),
                child: RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: "Sudah punya akun? ",
                        style: theme.textTheme.bodySmall,
                      ),
                      TextSpan(
                        text: "Login",
                        style: theme.textTheme.labelLarge,
                      ),
                    ],
                  ),
                  textAlign: TextAlign.left,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
