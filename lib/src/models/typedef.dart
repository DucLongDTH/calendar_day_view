import 'package:flutter/material.dart';

import '../../calendar_day_view.dart';

typedef DayViewItemBuilder<T extends Object> = Widget Function(
  BuildContext context,
  BoxConstraints constraints,

  ///index of the item in same row
  int itemIndex,
  DayEvent<T> event,
);

typedef DayViewTimeRowBuilder<T extends Object> = Widget Function(
  BuildContext context,
  BoxConstraints constraints,
  List<DayEvent<T>> events,
);

typedef EventDayViewItemBuilder<T extends Object> = Widget Function(
  BuildContext context,
  int itemIndex,
  DayEvent<T> event,
);

typedef OnTimeTap = Function(DateTime time);

typedef CategoryDayViewEventBuilder<T extends Object> = Widget Function(
  BoxConstraints constraints,
  EventCategory category,
  DateTime time,
  CategorizedDayEvent<T>? event,
);
typedef CategoryDayViewRowBuilder<T extends Object> = Widget Function(
  List<EventCategory> category,
  List<CategorizedDayEvent<T>> events,
  DateTime time,
);
typedef CategoryDayViewTileTap<T extends Object> = Function(
  EventCategory category,
  DateTime time,
  T model
);

/// To build the controller bar on the top of the day view
///
/// [goToPreviousTab] to animate to previous tabs
/// [goToNextTab] to animate to next tabs
typedef CategoryDayViewControlBarBuilder = Widget Function(
  void Function() goToPreviousTab,
  void Function() goToNextTab,
);

typedef CategoryDayViewHeaderTileBuilder = Function(
  BoxConstraints constraints,
  EventCategory category,
);
