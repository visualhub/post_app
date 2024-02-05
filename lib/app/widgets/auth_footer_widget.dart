import 'package:flutter/material.dart';
import 'package:post_app/app/widgets/custom_outlined_icon_button.dart';

class AuthFooterWidget extends StatelessWidget {
  const AuthFooterWidget({
    super.key,
    required this.buttonText,
    required this.bottomPostfixText,
    required this.bottomPrefixText,
    required this.onPressed,
  });
  final String buttonText;
  final String bottomPrefixText;
  final String bottomPostfixText;
  final VoidCallback onPressed;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const Text("OR"),
        const SizedBox(
          height: 10,
        ),
        CustomOutlineIconButton(
          onPressed: onPressed,
          buttonText: buttonText,
        ),
        const SizedBox(
          height: 10,
        ),
        TextButton(
          onPressed: onPressed,
          child: Text.rich(
            TextSpan(
              text: bottomPrefixText,
              style: Theme.of(context).textTheme.bodyMedium,
              children: [
                TextSpan(
                  text: bottomPostfixText,
                  style: const TextStyle(color: Colors.blue),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
