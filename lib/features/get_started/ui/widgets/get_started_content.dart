import 'package:count_down_app/config/colors/app_colors.dart';
import 'package:count_down_app/config/themes/font_weight.dart';
import 'package:count_down_app/core/animation/fade_transaction.dart';
import 'package:count_down_app/core/components/custom_button.dart';
import 'package:count_down_app/core/helpers/spacing.dart';
import 'package:count_down_app/core/methods/get_responsive_text/responsive_text.dart';
import 'package:count_down_app/features/home/ui/screens/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class GetStartedContent extends StatelessWidget {
  const GetStartedContent({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 20.w,
        right: 20.w,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            AppLocalizations.of(context)!.getStartedTitle,
            style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                  fontSize: getResponsiveFontSize(context, fontSize: 23),
                  color: AppColors.kWhiteColor,
                  fontWeight: FontWeightHelper.semiBold,
                ),
          ),
          Spacing.verticalSpace(10),
          Text(
            AppLocalizations.of(context)!.getStartedDescription,
            style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                  fontSize: getResponsiveFontSize(context, fontSize: 16),
                  color: AppColors.kGrayColor,
                  height: 1.5,
                  fontWeight: FontWeightHelper.regular,
                ),
          ),
          Spacing.verticalSpace(20),
          CustomButton(
            color: AppColors.kWhiteColor,
            height: 50.h,
            textStyle: Theme.of(context).textTheme.bodyMedium!.copyWith(
                  fontSize: getResponsiveFontSize(context, fontSize: 18),
                  color: AppColors.kBlackColor,
                  fontWeight: FontWeightHelper.semiBold,
                ),
            onPressed: () {
              Navigator.push(
                  context, SecondFadeTransaction(const HomeScreen()));
            },
            text: AppLocalizations.of(context)!.getStarted,
          ),
        ],
      ),
    );
  }
}
