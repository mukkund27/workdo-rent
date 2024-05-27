import 'package:cr_calendar/cr_calendar.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:intl/intl.dart';
import 'package:syncfusion_flutter_datepicker/datepicker.dart';
import '../../components/app_constant.dart';
import '../../components/colors.dart';
import '../../components/images.dart';
import '../../components/string.dart';

// ignore: must_be_immutable
class BottomDatePickerTwo extends StatelessWidget {
   BottomDatePickerTwo({Key? key}) : super(key: key);

  String selectedDate = '';
  String dateCount = '';
  String range = '';
  String rangeCount = '';

  void _onSelectionChanged(DateRangePickerSelectionChangedArgs args) {
    if (args.value is PickerDateRange) {
      range = '${DateFormat('dd/MM/yyyy').format(args.value.startDate)} -'
          ' ${DateFormat('dd/MM/yyyy').format(args.value.endDate ?? args.value.startDate)}';
    } else if (args.value is DateTime) {
      selectedDate = args.value.toString();
    } else if (args.value is List<DateTime>) {
      dateCount = args.value.length.toString();
    } else {
      rangeCount = args.value.length.toString();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        GestureDetector(
          onTap: () {
            Get.back();
          },
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                AppIcon.roundCloseIcon,
                scale: 4.7,
              ),
              // CircleAvatar(
              //   radius: width / 40,
              //   backgroundColor: AppColors.blackColor,
              //   child: Icon(Icons.clear, size: width / 25),
              // ),

              SizedBox(
                width: width / 80,
              ),
              Text(
                "Close",
                style: TextStyle(
                    fontSize: width / 28,
                    fontFamily: AppText.montserratSemiBold),
              )
            ],
          ),
        ),
        SizedBox(
          height: height / 60,
        ),
        Container(
          width: width,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.vertical(
              top: Radius.circular(width / 30),
            ),
          ),
          child: Padding(
            padding: EdgeInsets.all(height / 40),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: Row(
                    children: [
                      Text(
                        "Select ",
                        style: TextStyle(
                            fontFamily: AppText.montserratMedium,
                            fontSize: width / 20),
                      ),
                      Text(
                        "Dates",
                        style: TextStyle(
                            fontFamily: AppText.montserratSemiBold,
                            fontSize: width / 20),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                SizedBox(height: height/2.8,
                  child: Card(
                    margin: const EdgeInsets.fromLTRB(10, 2, 10, 10),
                    shape: RoundedRectangleBorder(
                        side: BorderSide(
                          color: AppColors.cardBorderColor, //<-- SEE HERE
                        ),
                        borderRadius: const BorderRadius.all(Radius.circular(10))),
                    child: SfDateRangePicker(
                      startRangeSelectionColor: Colors.black,
                      view: DateRangePickerView.month,
                      selectionRadius: 20,
                      showNavigationArrow: false,
                      showActionButtons: false,
                      selectionShape: DateRangePickerSelectionShape.rectangle,
                      monthCellStyle: DateRangePickerMonthCellStyle(
                          blackoutDatesDecoration: BoxDecoration(
                            color: Colors.yellow,
                            borderRadius: BorderRadius.circular(10),
                          )),
                      todayHighlightColor: Colors.white,
                      headerStyle: const DateRangePickerHeaderStyle(
                        textAlign: TextAlign.center,
                      ),
                      headerHeight: 50,
                      // allowViewNavigation: false,
                      // showTodayButton: false,
                      monthViewSettings: const DateRangePickerMonthViewSettings(
                          viewHeaderHeight: 30,
                          enableSwipeSelection: true,
                          viewHeaderStyle: DateRangePickerViewHeaderStyle(
                              backgroundColor: Colors.black,
                              textStyle:
                              TextStyle(fontSize: 14, letterSpacing: 5))),
                      selectionColor: Colors.black,
                      endRangeSelectionColor: Colors.black,
                      onSelectionChanged: _onSelectionChanged,
                      selectionMode: DateRangePickerSelectionMode.range,
                      rangeSelectionColor: Colors.black,
                      toggleDaySelection: true,
                      rangeTextStyle: const TextStyle(color: Colors.white),
                      selectionTextStyle: const TextStyle(color: Colors.white),
                      initialSelectedRange: PickerDateRange(
                          DateTime.now().subtract(const Duration(days: 4)),
                          DateTime.now().add(const Duration(days: 3))),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      height: height / 18,
                      width: width / 2.5,
                      decoration: BoxDecoration(
                          color: AppColors.whiteColor,
                          borderRadius: BorderRadius.circular(width / 30),
                          border: Border.all(color: AppColors.blackColor)),
                      child: Center(
                        child: Text(
                          AppText.clearAll,
                          style: TextStyle(
                              fontFamily: AppText.montserratSemiBold,
                              color: AppColors.blackColor,
                              fontSize: width / 25),
                        ),
                      ),
                    ),
                    Container(
                      height: height / 18,
                      width: width / 2.5,
                      decoration: BoxDecoration(
                          color: AppColors.blackColor,
                          borderRadius: BorderRadius.circular(width / 30)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            AppText.apply,
                            style: TextStyle(
                                fontFamily: AppText.montserratSemiBold,
                                color: AppColors.whiteColor,
                                fontSize: width / 25),
                          ),
                          SizedBox(width: width / 80),
                          Image.asset(AppIcon.arrowRightSmall,
                              scale: height / 200)
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

String rangeButtonText = 'Select date';

DateTime? _beginDate;
DateTime? endDate;

/// Colors for [EventWidget].
List<Color> eventColors = [
  const Color(0xff82D964),
  const Color(0xffE665FD),
  const Color(0xffF7980B),
  const Color(0xfff2d232),
  const Color(0xffFC6054),
  const Color(0xffBEBEBE),
];

showRangePickers(context) {
  FocusScope.of(context).unfocus();
  showCrDatePicker(
    context,
    properties: DatePickerProperties(
        onDateRangeSelected: _setRangeData,
        dayItemBuilder: (properties) =>
            PickerDayItemWidget(properties: properties),
        weekDaysBuilder: (day) => WeekDaysWidget(day: day),
        initialPickerDate: _beginDate ?? DateTime.now(),
        pickerTitleBuilder: (date) => DatePickerTitle(date: date),
        yearPickerItemBuilder: (year, isPicked) => Container(
              height: 24,
              width: 54,
              decoration: BoxDecoration(
                color: isPicked ? violet : Colors.white,
                borderRadius: const BorderRadius.all(Radius.circular(8)),
              ),
              child: Center(
                child: Text(
                  year.toString(),
                  style: TextStyle(
                    color: isPicked ? Colors.white : violet,
                    fontSize: 16,
                  ),
                ),
              ),
            ),
        controlBarTitleBuilder: (date) => Text(
              DateFormat(kAppBarDateFormat).format(date),
              style: const TextStyle(
                fontSize: 16,
                color: violet,
                fontWeight: FontWeight.normal,
              ),
            ),
        okButtonBuilder: (onPress) => ElevatedButton(
              onPressed: () => onPress?.call(),
              child: const Text('OK'),
            ),
        cancelButtonBuilder: (onPress) => OutlinedButton(
              onPressed: () => onPress?.call(),
              child: const Text('CANCEL'),
            ),
        backButton: CircleAvatar(
          radius: height / 70,
          backgroundColor: AppColors.blackColor,
          child: Icon(Icons.arrow_back,
              color: AppColors.whiteColor, size: height / 50),
        ),
        forwardButton: CircleAvatar(
          radius: height / 70,
          backgroundColor: AppColors.blackColor,
          child: Icon(Icons.arrow_forward,
              color: AppColors.whiteColor, size: height / 50),
        )),
  );
}

/// Set range picker button text.
void _setRangeData(DateTime? begin, DateTime? end) {
  if (begin == null || end == null) {
    return;
  }

  _beginDate = begin;
  endDate = end;
  rangeButtonText = _parseDateRange(begin, end);
}

/// Parse selected date to readable format.
String _parseDateRange(DateTime begin, DateTime end) {
  if (begin.isAtSameMomentAs(end)) {
    return begin.format(kDateRangeFormat);
  } else {
    return '${begin.format(kDateRangeFormat)} - ${end.format(kDateRangeFormat)}';
  }
}

extension DateTimeExt on DateTime {
  String format(String formatPattern) => DateFormat(formatPattern).format(this);
}

/// Widget that represents week days in row above calendar month view.
class WeekDaysWidget extends StatelessWidget {
  const WeekDaysWidget({
    required this.day,
    super.key,
  });

  /// [WeekDay] value from [WeekDaysBuilder].
  final WeekDay day;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40,
      child: Center(
        child: Text(
          describeEnum(day).substring(0, 1).toUpperCase(),
          style: TextStyle(
            color: violet.withOpacity(0.9),
          ),
        ),
      ),
    );
  }
}

const kAppBarDateFormat = 'M/yyyy';
const kMonthFormat = 'MMMM';
const kMonthFormatWidthYear = 'MMMM yyyy';
const kDateRangeFormat = 'dd-MM-yy';
const violet = Color(0xff7F51F5);

/// Widget of day item cell for range picker.
class PickerDayItemWidget extends StatelessWidget {
  const PickerDayItemWidget({
    required this.properties,
    super.key,
  });

  final DayItemProperties properties;

  @override
  Widget build(BuildContext context) {
    /// Lock aspect ratio of items to be rectangle.
    return AspectRatio(
      aspectRatio: 1 / 1,
      child: Stack(
        children: [
          /// Semi transparent violet background for days in selected range.
          if (properties.isInRange)

            /// For first and last days in range background color visible only
            /// on one side.
            Row(
              children: [
                Expanded(
                    child: Container(
                        color: properties.isFirstInRange
                            ? Colors.transparent
                            : violet.withOpacity(0.4))),
                Expanded(
                    child: Container(
                        color: properties.isLastInRange
                            ? Colors.transparent
                            : violet.withOpacity(0.4))),
              ],
            ),
          Container(
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: properties.isFirstInRange ||
                      properties.isLastInRange ||
                      properties.isSelected
                  ? violet
                  : Colors.transparent,
            ),
            child: Center(
              child: Text('${properties.dayNumber}',
                  style: TextStyle(
                      color: properties.isInRange || properties.isSelected
                          ? Colors.white
                          : violet
                              .withOpacity(properties.isInMonth ? 1 : 0.5))),
            ),
          ),
        ],
      ),
    );
  }
}

class DatePickerTitle extends StatelessWidget {
  const DatePickerTitle({
    required this.date,
    super.key,
  });

  final DateTime date;

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.only(top: 16),
        alignment: Alignment.centerLeft,
        child: Text(
          date.format(kMonthFormatWidthYear),
          style: const TextStyle(
            fontSize: 21,
            color: violet,
            fontWeight: FontWeight.w500,
          ),
        ));
  }
}
