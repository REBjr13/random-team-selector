import 'package:flutter/material.dart';

class Details extends StatelessWidget {


  final bool isInTabletLayout;

  const Details(this.isInTabletLayout, {Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final TextTheme textTheme = Theme.of(context).textTheme;
    final Widget content = const Center(

    );
    if (isInTabletLayout){
      return Center(
        child: content,
      );
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text( 'No Jokes'),
      ),
      backgroundColor: Colors.grey,
      body: Center(child: content,

      ),
    );
  }


}
