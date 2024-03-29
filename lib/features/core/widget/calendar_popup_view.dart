import 'package:flutter/material.dart';
import 'package:freshh/themes/app_theme.dart';

import 'custom_calendar.dart';

class CalendarPopupView extends StatefulWidget {
  const CalendarPopupView({
    Key? key,
    this.initialStartDate,
    this.onApplyClick,
    this.onCancelClick,
    this.barrierDismissible = true,
  }) : super(key: key);

  final bool barrierDismissible;
  final DateTime? initialStartDate;
  final Function(DateTime)? onApplyClick;

  final Function()? onCancelClick;

  @override
  _CalendarPopupViewState createState() => _CalendarPopupViewState();
}

class _CalendarPopupViewState extends State<CalendarPopupView> with TickerProviderStateMixin {
  AnimationController? animationController;
  DateTime? startDate;

  @override
  void initState() {
    animationController = AnimationController(duration: const Duration(milliseconds: 400), vsync: this);
    if (widget.initialStartDate != null) {
      startDate = widget.initialStartDate;
    }
    animationController?.forward();
    super.initState();
  }

  @override
  void dispose() {
    animationController?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: AnimatedBuilder(
          animation: animationController!,
          builder: (BuildContext context, Widget? child) {
            return AnimatedOpacity(
              duration: const Duration(milliseconds: 100),
              opacity: animationController!.value,
              child: InkWell(
                splashColor: Colors.transparent,
                focusColor: Colors.transparent,
                highlightColor: Colors.transparent,
                hoverColor: Colors.transparent,
                onTap: () {
                  if (widget.barrierDismissible) {
                    Navigator.pop(context);
                  }
                },
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.all(24.0),
                    child: Container(
                      decoration: BoxDecoration(
                        color: AppTheme.buildLightTheme().backgroundColor,
                        borderRadius: const BorderRadius.all(Radius.circular(24.0)),
                        boxShadow: <BoxShadow>[
                          BoxShadow(color: Colors.grey.withOpacity(0.2), offset: const Offset(4, 4), blurRadius: 8.0),
                        ],
                      ),
                      child: InkWell(
                        borderRadius: const BorderRadius.all(Radius.circular(24.0)),
                        onTap: () {},
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            CustomCalendarView(
                              initialStartDate: widget.initialStartDate,
                              startEndDateChange: (DateTime startDateData) {
                                setState(() {
                                  startDate = startDateData;
                                });
                              },
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 16, right: 16, bottom: 16, top: 8),
                              child: Container(
                                height: 48,
                                decoration: BoxDecoration(
                                  color: AppTheme.buildLightTheme().primaryColor,
                                  borderRadius: const BorderRadius.all(Radius.circular(24.0)),
                                  boxShadow: <BoxShadow>[
                                    BoxShadow(
                                      color: Colors.grey.withOpacity(0.6),
                                      blurRadius: 8,
                                      offset: const Offset(4, 4),
                                    ),
                                  ],
                                ),
                                child: Material(
                                  color: Colors.transparent,
                                  child: InkWell(
                                    borderRadius: const BorderRadius.all(Radius.circular(24.0)),
                                    highlightColor: Colors.transparent,
                                    onTap: () {
                                      try {
                                        widget.onApplyClick!(startDate!);
                                        Navigator.pop(context);
                                      } catch (_) {}
                                    },
                                    child: const Center(
                                      child: Text(
                                        'Apply',
                                        style: TextStyle(fontWeight: FontWeight.w500, fontSize: 18, color: Colors.white),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
