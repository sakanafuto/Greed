import "package:flutter/material.dart";
import 'package:go_router/go_router.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:table_calendar/table_calendar.dart';

final calendarFormatProvider = StateProvider(
  (ref) => CalendarFormat.month,
);

class HomeScreen extends ConsumerWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    DateTime focusedDay = DateTime.now();
    CalendarFormat calendarFormat = ref.watch(calendarFormatProvider);

    return Scaffold(
      body: TableCalendar(
          firstDay: DateTime.utc(2020, 1, 1),
          lastDay: DateTime.utc(2030, 12, 31),
          focusedDay: focusedDay,
          calendarFormat: calendarFormat,
          onFormatChanged: (format) {
            calendarFormat != format
                ? ref.read(calendarFormatProvider.state).state = format
                : null;
          }),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          context.go('/addGreed');
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
