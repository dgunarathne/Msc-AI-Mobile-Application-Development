class DateFilterService {

  static List<T> filterByRange<T>(
    List<T> data,
    DateTime Function(T) dateGetter,
    DateTime from,
    DateTime to,
  ) {

    return data.where((item) {

      final date =
          dateGetter(item);

      return
          date.isAfter(
              from.subtract(
            const Duration(days: 1),
          )) &&
          date.isBefore(
              to.add(
            const Duration(days: 1),
          ));
    }).toList();
  }
}
