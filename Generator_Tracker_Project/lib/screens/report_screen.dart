import 'package:flutter/material.dart';

class ReportScreen extends StatefulWidget {

  const ReportScreen({
    super.key,
  });

  @override
  State<ReportScreen> createState() =>
      _ReportScreenState();
}

class _ReportScreenState
    extends State<ReportScreen> {

  DateTime? fromDate;
  DateTime? toDate;

  Future<void> selectFromDate() async {

    DateTime? picked =
        await showDatePicker(
      context: context,
      firstDate: DateTime(2024),
      lastDate: DateTime(2035),
      initialDate: DateTime.now(),
    );

    if (picked != null) {
      setState(() {
        fromDate = picked;
      });
    }
  }

  Future<void> selectToDate() async {

    DateTime? picked =
        await showDatePicker(
      context: context,
      firstDate: DateTime(2024),
      lastDate: DateTime(2035),
      initialDate: DateTime.now(),
    );

    if (picked != null) {
      setState(() {
        toDate = picked;
      });
    }
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(

      appBar: AppBar(
        title:
            const Text("Reports"),
      ),

      body: Padding(

        padding:
            const EdgeInsets.all(16),

        child: Column(

          children: [

            ElevatedButton(
              onPressed: () {},
              child:
                  const Text("Last Week"),
            ),

            ElevatedButton(
              onPressed: () {},
              child:
                  const Text("Last Month"),
            ),

            const Divider(),

            ListTile(
              title: Text(
                fromDate == null
                    ? "Select From Date"
                    : fromDate!
                        .toString(),
              ),
              trailing:
                  const Icon(Icons.date_range),
              onTap:
                  selectFromDate,
            ),

            ListTile(
              title: Text(
                toDate == null
                    ? "Select To Date"
                    : toDate!
                        .toString(),
              ),
              trailing:
                  const Icon(Icons.date_range),
              onTap:
                  selectToDate,
            ),

            ElevatedButton(
              onPressed: () {},
              child:
                  const Text("Generate"),
            ),

            const SizedBox(height: 20),

            Expanded(
              child: DataTable(
                columns: const [

                  DataColumn(
                    label: Text("Date"),
                  ),

                  DataColumn(
                    label:
                        Text("Runtime"),
                  ),

                  DataColumn(
                    label:
                        Text("Fuel"),
                  ),

                  DataColumn(
                    label:
                        Text("Balance"),
                  ),
                ],

                rows: const [

                  DataRow(
                    cells: [
                      DataCell(
                        Text(
                          "2025-08-20",
                        ),
                      ),

                      DataCell(
                        Text("2"),
                      ),

                      DataCell(
                        Text("20"),
                      ),

                      DataCell(
                        Text("10"),
                      ),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
