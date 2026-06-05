import 'package:flutter/material.dart';
import '../../core/app_colors.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final IconData? icon;
  final VoidCallback onPressed;
  final bool fullWidth;
  final Color? color;

  const CustomButton({
    super.key,
    required this.text,
    this.icon,
    required this.onPressed,
    this.fullWidth = false,
    this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: fullWidth ? double.infinity : null,
      height: 50,
      decoration: BoxDecoration(
        color: color ?? AppColors.netflixRed,
        borderRadius: BorderRadius.circular(4),
      ),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: onPressed,
          borderRadius: BorderRadius.circular(4),
          child: Center(
            child: Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  text,
                  style: const TextStyle(
                    color: AppColors.textWhite,
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                if (icon != null) ...[
                  const SizedBox(width: 8),
                  Icon(icon, color: AppColors.textWhite, size: 20),
                ],
              ],
            ),
          ),
        ),
      ),
    );
  }
}