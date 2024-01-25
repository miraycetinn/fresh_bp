import 'package:flutter/material.dart';
import 'package:freshh/themes/freshh_app_theme.dart';
import 'package:freshh/models/skincares_list_data/skincares_list_data.dart';
import 'package:freshh/main.dart';

class SkincareRoutineItemView extends StatefulWidget {
  const SkincareRoutineItemView(
      {Key? key, required this.skincaresListData, required this.animationController, required this.animation})
      : super(key: key);
  final SkincareListData skincaresListData;
  final AnimationController animationController;
  final Animation<double> animation;

  @override
  State<SkincareRoutineItemView> createState() => _SkincareRoutineItemViewState();
}

class _SkincareRoutineItemViewState extends State<SkincareRoutineItemView> {


  List<Widget> getIcon(BuildContext context) {
    return [
      Positioned(
        top: 0,
        left: 0,
        child: Container(
          width: 84,
          height: 84,
          decoration: BoxDecoration(
            color: FreshhAppTheme.nearlyWhite.withOpacity(0.2),
            shape: BoxShape.circle,
          ),
        ),
      ),
      Positioned(
        top: 0,
        left: 8,
        child: SizedBox(
          width: 80,
          height: 80,
          child: Image.network(widget.skincaresListData.imagePath),
        ),
      )
    ];
  }
  onTap(){
    setState(() {
      widget.skincaresListData.isUsed=true;
    });
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: widget.animationController,
      builder: (BuildContext context, Widget? child) {
        return FadeTransition(
          opacity: widget.animation,
          child: Transform(
            transform: Matrix4.translationValues(
                100 * (1.0 - widget.animation.value), 0.0, 0.0),
            child: SizedBox(
              width: 130,
              child: Stack(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                        top: 32, left: 8, right: 8, bottom: 16),
                    child: Container(
                      decoration: BoxDecoration(
                        boxShadow: <BoxShadow>[
                          BoxShadow(
                              color: HexColor(widget.skincaresListData.endColor)
                                  .withOpacity(0.6),
                              offset: const Offset(1.1, 4.0),
                              blurRadius: 8.0),
                        ],
                        gradient: LinearGradient(
                          colors: <HexColor>[
                            HexColor(widget.skincaresListData.startColor),
                            HexColor(widget.skincaresListData.endColor),
                          ],
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                        ),
                        borderRadius: const BorderRadius.only(
                          bottomRight: Radius.circular(8.0),
                          bottomLeft: Radius.circular(8.0),
                          topLeft: Radius.circular(8.0),
                          topRight: Radius.circular(54.0),
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(
                            top: 54, left: 16, right: 16, bottom: 8),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              widget.skincaresListData.titleTxt,
                              textAlign: TextAlign.center,
                              style: const TextStyle(
                                fontFamily: FreshhAppTheme.fontName,
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                                letterSpacing: 0.2,
                                color: FreshhAppTheme.white,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  ...getIcon(context)
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
