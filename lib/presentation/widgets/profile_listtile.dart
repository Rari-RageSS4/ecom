import 'package:ecom/presentation/styles/colors/colors.dart';
import 'package:flutter/material.dart';

class ProfileListtile extends StatelessWidget {
  const ProfileListtile({
    super.key,
    required this.icon,
    required this.text,
    this.isTrailing = true,
  });
  final Widget icon;
  final String text;
  final bool isTrailing;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Container(
          padding: const EdgeInsets.all(6),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            color: AppColors.profileIconBg,
          ),
          child: icon),
      title: Text(text),
      trailing: isTrailing? const Icon(Icons.arrow_forward_ios_rounded, size: 10,) : const SizedBox(),
    );
  }
}
