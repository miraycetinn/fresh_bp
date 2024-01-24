import 'package:flutter/material.dart';
import 'package:freshh/features/skincare/components/skincare_routine_item_view.dart';
import 'package:freshh/models/globals.dart';

import '../../models/skincares_list_data/skincares_list_data.dart';

class SkincareRoutineView extends StatefulWidget {
  const SkincareRoutineView(
      {Key? key, this.mainScreenAnimationController, this.mainScreenAnimation})
      : super(key: key);

  final AnimationController? mainScreenAnimationController;
  final Animation<double>? mainScreenAnimation;

  @override
  _SkincareRoutineViewState createState() => _SkincareRoutineViewState();
}

class _SkincareRoutineViewState extends State<SkincareRoutineView>
    with TickerProviderStateMixin {
  AnimationController? animationController;
  List<SkincareListData> skincaresListData = SkincareGlobal.tabIconsList;

  @override
  void initState() {
    animationController = AnimationController(
        duration: const Duration(milliseconds: 2000), vsync: this);
    super.initState();
  }

  Future<bool> getData() async {
    await Future<dynamic>.delayed(const Duration(milliseconds: 50));
    return true;
  }

  @override
  void dispose() {
    animationController?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: widget.mainScreenAnimationController!,
      builder: (BuildContext context, Widget? child) {
        return FadeTransition(
          opacity: widget.mainScreenAnimation!,
          child: Transform(
            transform: Matrix4.translationValues(
                0.0, 30 * (1.0 - widget.mainScreenAnimation!.value), 0.0),
            child: Container(
              height: 300,
              width: double.infinity,
              child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2, // number of items in each row
                  mainAxisSpacing: 8.0, // spacing between rows
                  crossAxisSpacing: 8.0, // spacing between columns
                ),
                padding: const EdgeInsets.only(
                    top: 10, bottom: 0, right: 16, left: 16),
                itemCount: skincaresListData.length,
                scrollDirection: Axis.vertical,
                itemBuilder: (BuildContext context, int index) {
                  final int count = skincaresListData.length > 10
                      ? 10
                      : skincaresListData.length;
                  final Animation<double> animation =
                  Tween<double>(begin: 0.0, end: 1.0).animate(
                      CurvedAnimation(
                          parent: animationController!,
                          curve: Interval((1 / count) * index, 1.0,
                              curve: Curves.fastOutSlowIn)));
                  animationController?.forward();

                  return  Center(
                    child: SkincareRoutineItemView(
                      skincaresListData: skincaresListData[index],
                      animation: animation,
                      animationController: animationController!,
                    ),
                  );
                },
              ),
            ),
          ),
        );
      },
    );
  }
}
