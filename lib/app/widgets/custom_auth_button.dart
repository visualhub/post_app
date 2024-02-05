import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomAuthButton extends StatelessWidget {
  const CustomAuthButton({
    super.key,
    required this.buttonSubTitle,
    required this.buttonTitle,
    required this.icon,
    required this.onPressed,
  });

  final Icon icon;
  final String buttonTitle, buttonSubTitle;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return CupertinoButton(
      padding: EdgeInsets.zero,
      onPressed: onPressed,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.grey.shade300,
          borderRadius: BorderRadius.circular(10.0),
        ),
        padding: const EdgeInsets.all(10.0),
        margin: EdgeInsets.zero,
        child: Row(
          children: [
            icon,
            const SizedBox(
              width: 10,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  buttonTitle,
                  style: Theme.of(context).textTheme.titleSmall,
                ),
                Text(
                  buttonSubTitle,
                  style: Theme.of(context).textTheme.bodySmall!.copyWith(
                        overflow: TextOverflow.ellipsis,
                      ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
