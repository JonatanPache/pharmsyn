import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:t_store/features/authentication/controllers/signup/signup_controller.dart';
import 'package:t_store/utils/constants/colors.dart';
import 'package:t_store/utils/constants/sizes.dart';
import 'package:t_store/utils/constants/text_strings.dart';
import 'package:t_store/utils/helpers/helper_functions.dart';

class TTermsAndConditionsCheckbox extends StatelessWidget {
  const TTermsAndConditionsCheckbox({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = SignupController.instance;
    final dark = THelperFunctions.isDarkMode(context);


    void _showPrivacyPolicyDialog() {
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return PrivacyPolicyAndTermsDialog(
            title: TTexts.privacyPolicyitle,
            content: TTexts.privacyPolicyContent,
          );
        },
      );
    }

    void _showTermsOfUseDialog() {
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return PrivacyPolicyAndTermsDialog(
            title: TTexts.termOfUseTitle,
            content: TTexts.termOfUseContent,
          );
        },
      );
    }


    return Row(
      children: [
        SizedBox(
          width: 24,
          height: 24,
          child: Obx(
                () => Checkbox(
              value: controller.privacyPolicy.value,
              onChanged: (value) => controller.privacyPolicy.value = !controller.privacyPolicy.value,
            ),
          ),
        ),
        const SizedBox(
          height: TSizes.spaceBtwItems,
        ),
        Text.rich(
          TextSpan(
            children: [
              TextSpan(
                text: ' ${TTexts.iAgreeTo} ',
                style: Theme.of(context).textTheme.bodySmall,
              ),
              TextSpan(
                text: TTexts.privacyPolicy,
                style: Theme.of(context).textTheme.bodyMedium!.apply(
                      color: dark ? TColors.white : TColors.primary,
                      decoration: TextDecoration.underline,
                      decorationColor: dark ? TColors.white : TColors.primary,
                    ),
                recognizer: TapGestureRecognizer()
                  ..onTap = _showPrivacyPolicyDialog,
              ),
              TextSpan(
                text: ' ${TTexts.and} ',
                style: Theme.of(context).textTheme.bodySmall,
              ),

              TextSpan(
                text: '\n ${ TTexts.termsOfUse}',
                style: Theme.of(context).textTheme.bodyMedium!.apply(
                  color: dark ? TColors.white : TColors.primary,
                  decoration: TextDecoration.underline,
                  decorationColor: dark ? TColors.white : TColors.primary,
                ),
                recognizer: TapGestureRecognizer()
                  ..onTap = _showTermsOfUseDialog,
              ),
            ],

          ),
        )
      ],
    );
  }
}


class PrivacyPolicyAndTermsDialog extends StatelessWidget {
  final String title;
  final String content;

  PrivacyPolicyAndTermsDialog({required this.title, required this.content});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text(
        title,
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
      content: SingleChildScrollView(
        child: Text(
          content,
          textAlign: TextAlign.justify,
        ),
      ),
      actions: <Widget>[
        TextButton(
          child: Text('Cerrar'),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ],
    );
  }
}

