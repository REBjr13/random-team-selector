import "package:flutter/material.dart";
import 'package:readwriteapp/ui/landscape_ui.dart';
import "package:readwriteapp/ui/ui.dart";

class MasterDetailScreen extends StatefulWidget {
  const MasterDetailScreen({Key key}) : super(key: key);

  @override
  State<MasterDetailScreen> createState() => _MasterDetailScreenState();
}

class _MasterDetailScreenState extends State<MasterDetailScreen> {
  static const int tabletBreakPoint = 600;

  Widget _buildMobileLayout() {
    return const PortraitUI();
  }

  Widget _buildTabletLayout() {
    return const LandscapeUI();
  }

  @override
  Widget build(BuildContext context) {
    Widget content;
    var shortSide = MediaQuery.of(context).size.shortestSide;
    var orientation = MediaQuery.of(context).orientation;

    if (orientation == Orientation.portrait && shortSide < tabletBreakPoint) {
      //Mobile

      content = _buildMobileLayout();
    } else {
      //tablet
      content = _buildTabletLayout();
    }

    return Scaffold(
      body: content,
    );
  }
}
