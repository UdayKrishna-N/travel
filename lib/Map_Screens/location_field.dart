import 'package:flutter/material.dart';

class LocationField extends StatelessWidget {
  const LocationField({
    Key? key,
    required this.text,
    required this.iconColor,
    required this.onTap,
  }) : super(key: key);

  final String text;
  final Color iconColor;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Container(
          height: 50,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              color: Colors.white,
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Icon(Icons.circle,color: iconColor,size: 14,),
                SizedBox(
                  width: 20,
                ),
                Text(text,style: Theme.of(context).textTheme.bodyText2?.copyWith(color: Colors.black,fontSize: 18),)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
