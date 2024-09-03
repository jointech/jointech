import '/components/day_label_component_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'dart:math' as math;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'calendar_model.dart';
export 'calendar_model.dart';

class CalendarWidget extends StatefulWidget {
  const CalendarWidget({
    super.key,
    required this.inputDate,
    required this.initialSelectedDate,
    this.onSelectDateAction,
  });

  final DateTime? inputDate;
  final DateTime? initialSelectedDate;
  final Future Function(DateTime? selectedDate)? onSelectDateAction;

  @override
  State<CalendarWidget> createState() => _CalendarWidgetState();
}

class _CalendarWidgetState extends State<CalendarWidget> {
  late CalendarModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CalendarModel());

    // On component load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      logFirebaseEvent('CALENDAR_COMP_calendar_ON_INIT_STATE');
      _model.inputDate = widget.inputDate;
      setState(() {});
      if (widget.initialSelectedDate != null) {
        _model.selectedDate = widget.initialSelectedDate;
        setState(() {});
      }
    });
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 320.0,
      height: 340.0,
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).secondaryBackground,
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Row(
            mainAxisSize: MainAxisSize.max,
            children: [
              Expanded(
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        valueOrDefault<String>(
                          dateTimeFormat("MMMM", _model.inputDate),
                          '0',
                        ),
                        style: FlutterFlowTheme.of(context).labelLarge.override(
                              fontFamily: 'Readex Pro',
                              letterSpacing: 0.0,
                            ),
                      ),
                      Align(
                        alignment: const AlignmentDirectional(0.0, 0.0),
                        child: Text(
                          valueOrDefault<String>(
                            dateTimeFormat("y", _model.inputDate),
                            '0',
                          ),
                          textAlign: TextAlign.start,
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Readex Pro',
                                    fontSize: 16.0,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.w600,
                                  ),
                        ),
                      ),
                      Align(
                        alignment: const AlignmentDirectional(0.0, 0.0),
                        child: Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              100.0, 0.0, 0.0, 0.0),
                          child: InkWell(
                            splashColor: Colors.transparent,
                            focusColor: Colors.transparent,
                            hoverColor: Colors.transparent,
                            highlightColor: Colors.transparent,
                            onTap: () async {
                              logFirebaseEvent(
                                  'CALENDAR_COMP_Icon_m7ecrh50_ON_TAP');
                              _model.inputDate = getCurrentTimestamp;
                              _model.selectedDate = getCurrentTimestamp;
                              setState(() {});
                              await widget.onSelectDateAction?.call(
                                _model.selectedDate,
                              );
                            },
                            child: Icon(
                              Icons.restart_alt,
                              color: FlutterFlowTheme.of(context).secondary,
                              size: 30.0,
                            ),
                          ),
                        ),
                      ),
                    ].divide(const SizedBox(width: 4.0)),
                  ),
                ),
              ),
            ].addToStart(const SizedBox(width: 24.0)).addToEnd(const SizedBox(width: 24.0)),
          ),
          Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                wrapWithModel(
                  model: _model.dayLabelComponentModel1,
                  updateCallback: () => setState(() {}),
                  child: const DayLabelComponentWidget(
                    day: 'Lun',
                  ),
                ),
                wrapWithModel(
                  model: _model.dayLabelComponentModel2,
                  updateCallback: () => setState(() {}),
                  child: const DayLabelComponentWidget(
                    day: 'Mar',
                  ),
                ),
                wrapWithModel(
                  model: _model.dayLabelComponentModel3,
                  updateCallback: () => setState(() {}),
                  child: const DayLabelComponentWidget(
                    day: 'Mie',
                  ),
                ),
                wrapWithModel(
                  model: _model.dayLabelComponentModel4,
                  updateCallback: () => setState(() {}),
                  child: const DayLabelComponentWidget(
                    day: 'Jue',
                  ),
                ),
                wrapWithModel(
                  model: _model.dayLabelComponentModel5,
                  updateCallback: () => setState(() {}),
                  child: const DayLabelComponentWidget(
                    day: 'Vie',
                  ),
                ),
                wrapWithModel(
                  model: _model.dayLabelComponentModel6,
                  updateCallback: () => setState(() {}),
                  child: const DayLabelComponentWidget(
                    day: 'Sab',
                  ),
                ),
                wrapWithModel(
                  model: _model.dayLabelComponentModel7,
                  updateCallback: () => setState(() {}),
                  child: const DayLabelComponentWidget(
                    day: 'Do',
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: 202.0,
            decoration: const BoxDecoration(),
            child: Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
              child: Builder(
                builder: (context) {
                  final calendar =
                      functions.getCalendarForMonth(_model.inputDate!).toList();

                  return GridView.builder(
                    padding: EdgeInsets.zero,
                    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 7,
                      crossAxisSpacing: 18.0,
                      mainAxisSpacing: 12.0,
                      childAspectRatio: 1.0,
                    ),
                    primary: false,
                    shrinkWrap: true,
                    scrollDirection: Axis.vertical,
                    itemCount: calendar.length,
                    itemBuilder: (context, calendarIndex) {
                      final calendarItem = calendar[calendarIndex];
                      return Container(
                        width: 24.0,
                        height: 24.0,
                        decoration: BoxDecoration(
                          color: dateTimeFormat(
                                      "d/M/y", calendarItem.calendarDate) ==
                                  dateTimeFormat("d/M/y", _model.selectedDate)
                              ? FlutterFlowTheme.of(context).primary
                              : FlutterFlowTheme.of(context).primaryBackground,
                          borderRadius: BorderRadius.circular(8.0),
                          border: Border.all(
                            color: dateTimeFormat(
                                        "d/M/y", calendarItem.calendarDate) ==
                                    dateTimeFormat("d/M/y", getCurrentTimestamp)
                                ? FlutterFlowTheme.of(context).primary
                                : FlutterFlowTheme.of(context)
                                    .primaryBackground,
                            width: 0.8,
                          ),
                        ),
                        alignment: const AlignmentDirectional(0.0, 0.0),
                        child: InkWell(
                          splashColor: Colors.transparent,
                          focusColor: Colors.transparent,
                          hoverColor: Colors.transparent,
                          highlightColor: Colors.transparent,
                          onTap: () async {
                            logFirebaseEvent(
                                'CALENDAR_COMP_Text_q79i8c4y_ON_TAP');
                            _model.selectedDate = calendarItem.calendarDate;
                            setState(() {});
                            await widget.onSelectDateAction?.call(
                              _model.selectedDate,
                            );
                          },
                          child: Text(
                            dateTimeFormat(
                                "d",
                                dateTimeFromSecondsSinceEpoch(
                                    valueOrDefault<int>(
                                  calendarItem.calendarDate?.secondsSinceEpoch,
                                  0,
                                ))),
                            style: FlutterFlowTheme.of(context)
                                .labelLarge
                                .override(
                                  fontFamily: 'Readex Pro',
                                  color: calendarItem.isPreviousMonth ||
                                          calendarItem.isNextMonth
                                      ? (dateTimeFormat("d/M/y",
                                                  calendarItem.calendarDate) ==
                                              dateTimeFormat(
                                                  "d/M/y", _model.selectedDate)
                                          ? FlutterFlowTheme.of(context)
                                              .secondaryBackground
                                          : FlutterFlowTheme.of(context)
                                              .secondaryText)
                                      : (dateTimeFormat("d/M/y",
                                                  calendarItem.calendarDate) ==
                                              dateTimeFormat(
                                                  "d/M/y", _model.selectedDate)
                                          ? FlutterFlowTheme.of(context)
                                              .secondaryBackground
                                          : FlutterFlowTheme.of(context)
                                              .primaryText),
                                  fontSize: 14.0,
                                  letterSpacing: 0.0,
                                  fontWeight: FontWeight.normal,
                                ),
                          ),
                        ),
                      );
                    },
                  );
                },
              ),
            ),
          ),
          Container(
            height: 40.0,
            decoration: const BoxDecoration(),
            child: Align(
              alignment: const AlignmentDirectional(0.0, 0.0),
              child: Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 10.0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Transform.rotate(
                      angle: 180.0 * (math.pi / 180),
                      child: InkWell(
                        splashColor: Colors.transparent,
                        focusColor: Colors.transparent,
                        hoverColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        onTap: () async {
                          logFirebaseEvent(
                              'CALENDAR_COMP_Icon_b97lk9cn_ON_TAP');
                          _model.inputDate =
                              functions.getLastMonthDateTime(_model.inputDate!);
                          setState(() {});
                        },
                        child: Icon(
                          Icons.play_arrow,
                          color: FlutterFlowTheme.of(context).secondary,
                          size: 24.0,
                        ),
                      ),
                    ),
                    InkWell(
                      splashColor: Colors.transparent,
                      focusColor: Colors.transparent,
                      hoverColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      onTap: () async {
                        logFirebaseEvent('CALENDAR_COMP_Icon_zjcjkuhx_ON_TAP');
                        _model.inputDate =
                            functions.getNextMonthDateTime(_model.inputDate!);
                        setState(() {});
                      },
                      child: Icon(
                        Icons.play_arrow,
                        color: FlutterFlowTheme.of(context).secondary,
                        size: 24.0,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ].addToStart(const SizedBox(height: 16.0)),
      ),
    );
  }
}
