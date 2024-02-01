import 'package:flutter/material.dart';
import 'package:theflutterway_s_admin_app/core/app_export.dart';
import 'package:theflutterway_s_admin_app/widgets/custom_text_form_field.dart';

class DashboardScreen extends StatelessWidget {
  DashboardScreen({Key? key})
      : super(
          key: key,
        );

  TextEditingController editTextController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: SizedBox(
          height: SizeUtils.height,
          width: double.maxFinite,
          child: Stack(
            alignment: Alignment.centerRight,
            children: [
              _buildNine(context),
              Align(
                alignment: Alignment.centerRight,
                child: Container(
                  margin: EdgeInsets.only(right: 20.h),
                  padding: EdgeInsets.symmetric(
                    horizontal: 12.h,
                    vertical: 27.v,
                  ),
                  decoration: AppDecoration.outlineGray.copyWith(
                    borderRadius: BorderRadiusStyle.roundedBorder10,
                  ),
                  child: _buildSeven(context),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildNine(BuildContext context) {
    return Align(
      alignment: Alignment.topCenter,
      child: Container(
        width: double.maxFinite,
        margin: EdgeInsets.only(bottom: 815.v),
        padding: EdgeInsets.symmetric(vertical: 4.v),
        decoration: AppDecoration.fillGray100,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            CustomImageView(
              imagePath: ImageConstant.imgRectangle5,
              height: 25.v,
              width: 81.h,
              margin: EdgeInsets.only(top: 4.v),
            ),
            Padding(
              padding: EdgeInsets.only(left: 6.h),
              child: SizedBox(
                height: 27.v,
                child: VerticalDivider(
                  width: 1.h,
                  thickness: 1.v,
                  indent: 3.h,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                left: 8.h,
                top: 6.v,
                bottom: 4.v,
              ),
              child: Text(
                "Dashboard",
                style: CustomTextStyles.labelLargeGray900,
              ),
            ),
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildSeven(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 8.h,
        vertical: 16.v,
      ),
      decoration: AppDecoration.outlineGray.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder10,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 1.h),
              child: Text(
                "Pemasukan dan Pengeluaran",
                style: theme.textTheme.labelLarge,
              ),
            ),
          ),
          SizedBox(height: 7.v),
          Padding(
            padding: EdgeInsets.only(left: 1.h),
            child: CustomTextFormField(
              controller: editTextController,
              textInputAction: TextInputAction.done,
              borderDecoration: TextFormFieldStyleHelper.fillGray,
              fillColor: appTheme.gray100,
            ),
          ),
          SizedBox(height: 21.v),
          Padding(
            padding: EdgeInsets.only(left: 1.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 129.h,
                  padding: EdgeInsets.symmetric(
                    horizontal: 19.h,
                    vertical: 2.v,
                  ),
                  decoration: AppDecoration.fillGray100.copyWith(
                    borderRadius: BorderRadiusStyle.roundedBorder5,
                  ),
                  child: Text(
                    "Total Pemasukan",
                    style: theme.textTheme.labelMedium,
                  ),
                ),
                Container(
                  width: 129.h,
                  margin: EdgeInsets.only(left: 18.h),
                  padding: EdgeInsets.symmetric(
                    horizontal: 15.h,
                    vertical: 2.v,
                  ),
                  decoration: AppDecoration.fillGray100.copyWith(
                    borderRadius: BorderRadiusStyle.roundedBorder5,
                  ),
                  child: Text(
                    "Total Pemasukan",
                    style: theme.textTheme.labelMedium,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 3.v),
        ],
      ),
    );
  }
}
