import 'package:ecom/src/on_boarding/presentation/utils/on_boarding_utils.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key, required this.state, required this.child});
  final GoRouterState state;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Scaffold(key: DashBoardUtils.sacffoldKey, body: child);
  }
}
