import 'package:asroo_store/core/common/animations/animate_do.dart';
import 'package:flutter/material.dart';

class UserAvararImage extends StatelessWidget {
  const UserAvararImage({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomFadeInDown(
      duration: 500,
      child: CircleAvatar(
        radius: 38,
        backgroundImage: NetworkImage(
            'https://images.unsplash.com/photo-1682686580036-b5e25932ce9a?q=80&w=1550&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDF8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D'),
      ),
    );
  }
}
