import 'package:flutter/material.dart';
import 'package:news_app/presentation/utils/string_utils.dart';
import 'package:news_app/presentation/widgets/rounded_button.dart';

class CustomErrorWidget extends StatelessWidget {
  const CustomErrorWidget({
    super.key,
    this.onPressed,
  });

  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
           const Text(
            NewsAppString.somethingWentWrong,
            style:  TextStyle(
              fontWeight: FontWeight.w300,
              fontSize: 18,
              color: Colors.red,
            ),
          ),
          RoundedButton(
            name: NewsAppString.tryAgain,
            onPressed: onPressed,
          )
        ],
      ),
    );
  }
}
