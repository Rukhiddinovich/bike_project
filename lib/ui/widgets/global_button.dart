import 'package:flutter/material.dart';

import '../../utils/icons.dart';

class GlobalButton extends StatelessWidget {
  const GlobalButton({Key? key, required this.title, required this.buttonColor, required this.img, required this.textColor})
      : super(key: key);

  final String title;
  final String img;
  final Color buttonColor;
  final Color textColor;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:const EdgeInsets.symmetric(vertical: 8),
      child: Ink(
        height: 52,
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(100),
          color: buttonColor,
        ),
        child: InkWell(
          onTap: (){},
          child: Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(img==""?AppImages.apple:img,width: img==""?0:23,height: img==""?0:23),
                SizedBox(width: img==""?0:10,),
                Text(
                  title,
                  style:TextStyle(
                    fontWeight: FontWeight.w600,
                    color: textColor,
                    fontSize: 18,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}