import 'package:ctc_calculator/src/theme/app_color.dart';
import 'package:flutter/material.dart';

class CustomContainer extends StatelessWidget {
  const CustomContainer({super.key, required this.child, required EdgeInsets padding});

  final Widget child;
  
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: AppColors.cardBackground,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withAlpha(25),
            
            blurRadius: 6,
            offset: const Offset(0, 3),
            spreadRadius: 4,
          ),
          BoxShadow(
            color: Colors.grey.withAlpha(13),
            blurRadius: 6,
            offset: const Offset(0, 1),
            spreadRadius: 2,
          ),
        ],
      ),
      child: child,
    );
  }
}