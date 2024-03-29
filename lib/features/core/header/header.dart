import 'package:flutter/material.dart';
import 'package:freshh/features/core/widget/calendar_popup_view.dart';
import 'package:freshh/models/globals.dart';
import 'package:freshh/themes/freshh_app_theme.dart';

class Header extends StatefulWidget {
  const Header({Key? key, required this.animationController, required this.scrollController}) : super(key: key);
  final AnimationController animationController;
  final ScrollController scrollController;

  @override
  State<Header> createState() => _HeaderState();
}

class _HeaderState extends State<Header> {
  Animation<double> topBarAnimation = const AlwaysStoppedAnimation(0);
  double topBarOpacity = 0.0;

  void initState() {
    topBarAnimation = Tween<double>(begin: 0.0, end: 1.0)
        .animate(CurvedAnimation(parent: widget.animationController, curve: const Interval(0, 0.5, curve: Curves.fastOutSlowIn)));

    widget.scrollController.addListener(() {
      if (widget.scrollController.offset >= 24) {
        if (topBarOpacity != 1.0) {
          setState(() {
            topBarOpacity = 1.0;
          });
        }
      } else if (widget.scrollController.offset <= 24 && widget.scrollController.offset >= 0) {
        if (topBarOpacity != widget.scrollController.offset / 24) {
          setState(() {
            topBarOpacity = widget.scrollController.offset / 24;
          });
        }
      } else if (widget.scrollController.offset <= 0) {
        if (topBarOpacity != 0.0) {
          setState(() {
            topBarOpacity = 0.0;
          });
        }
      }
    });
    super.initState();
  }

  DateTime startDate = SkincareGlobal.date;

  void showDemoDialog({BuildContext? context}) {
    showDialog<dynamic>(
      context: context!,
      builder: (BuildContext context) => CalendarPopupView(
        barrierDismissible: true,
        //  maximumDate: DateTime(DateTime.now().year, DateTime.now().month, DateTime.now().day + 10),
        initialStartDate: startDate,
        onApplyClick: (DateTime startData) {
          setState(() {
            startDate = startData;
          });
        },
        onCancelClick: () {},
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AnimatedBuilder(
          animation: widget.animationController,
          builder: (BuildContext context, Widget? child) {
            return FadeTransition(
              opacity: topBarAnimation,
              child: Transform(
                transform: Matrix4.translationValues(0.0, 30 * (1.0 - topBarAnimation.value), 0.0),
                child: Container(
                  decoration: BoxDecoration(
                    color: FreshhAppTheme.white.withOpacity(topBarOpacity),
                    borderRadius: const BorderRadius.only(
                      bottomLeft: Radius.circular(32.0),
                    ),
                    boxShadow: <BoxShadow>[
                      BoxShadow(color: FreshhAppTheme.grey.withOpacity(0.4 * topBarOpacity), offset: const Offset(1.1, 1.1), blurRadius: 10.0),
                    ],
                  ),
                  child: Column(
                    children: [
                      SizedBox(
                        height: MediaQuery.of(context).padding.top,
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 16, right: 16, top: 16 - 8.0 * topBarOpacity, bottom: 12 - 8.0 * topBarOpacity),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Expanded(
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  'Fresh',
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                    fontFamily: FreshhAppTheme.fontName,
                                    fontWeight: FontWeight.w700,
                                    fontSize: 22 + 6 - 6 * topBarOpacity,
                                    letterSpacing: 1.2,
                                    color: FreshhAppTheme.darkerText,
                                  ),
                                ),
                              ),
                            ),
                            /* SizedBox(
                              height: 38,
                              width: 38,
                              child: InkWell(
                                highlightColor: Colors.transparent,
                                borderRadius: const BorderRadius.all(
                                    Radius.circular(32.0)),
                                onTap: () {
                                  setState(() {
                                    startDate = startDate.add(const Duration(days: -1));
                                  });
                                },
                                child: const Center(
                                  child: Icon(
                                    Icons.keyboard_arrow_left,
                                    color: FreshhAppTheme.grey,
                                  ),
                                ),
                              ),
                            ),
                            InkWell(
                              onTap: ()=>showDemoDialog(context: context),
                              child: Padding(
                                padding: const EdgeInsets.only(
                                  left: 8,
                                  right: 8,
                                ),
                                child: Row(
                                  children: [
                                    const Padding(
                                      padding: EdgeInsets.only(right: 8),
                                      child: Icon(
                                        Icons.calendar_today,
                                        color: FreshhAppTheme.grey,
                                        size: 18,
                                      ),
                                    ),
                                    Text(
                                      DateFormat("dd MMM").format(startDate),
                                      textAlign: TextAlign.left,
                                      style: const TextStyle(
                                        fontFamily: FreshhAppTheme.fontName,
                                        fontWeight: FontWeight.normal,
                                        fontSize: 18,
                                        letterSpacing: -0.2,
                                        color: FreshhAppTheme.darkerText,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 38,
                              width: 38,
                              child: InkWell(
                                highlightColor: Colors.transparent,
                                borderRadius: const BorderRadius.all(
                                    Radius.circular(32.0)),
                                onTap: () {setState(() {
                                  startDate = startDate.add(const Duration(days: 1));
                                }); },
                                child: const Center(
                                  child: Icon(
                                    Icons.keyboard_arrow_right,
                                    color: FreshhAppTheme.grey,
                                  ),
                                ),
                              ),
                            ),*/
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            );
          },
        )
      ],
    );
  }
}
