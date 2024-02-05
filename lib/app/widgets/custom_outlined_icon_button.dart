import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:post_app/global/constants/image_strings.dart';

class CustomOutlineIconButton extends StatelessWidget {
  const CustomOutlineIconButton({
    super.key,
    required this.onPressed,
    required this.buttonText,
  });

  final VoidCallback onPressed;
  final String buttonText;

  @override
  Widget build(BuildContext context) {
    return CupertinoButton(
      onPressed: onPressed,
      padding: EdgeInsets.zero,
      child: Container(
        height: 55,
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(18),
          border: Border.all(
            width: 1,
            color: Colors.black87,
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              tGoogleLogo,
              height: 20,
            ),
            const SizedBox(
              width: 6,
            ),
            Text(buttonText)
          ],
        ),
      ),
    );
  }
}
