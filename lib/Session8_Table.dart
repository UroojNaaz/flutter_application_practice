import 'package:flutter/material.dart';

// Main StatefulWidget for the Table
class Session8_Table extends StatefulWidget {
  const Session8_Table({super.key});

  @override
  State<Session8_Table> createState() => _Session8_TableState();
}

class _Session8_TableState extends State<Session8_Table> {
  double changeSliderValue = 10;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              // Data Table Section
              DataTable(
                columns: const [
                  DataColumn(label: Text("S.No")),
                  DataColumn(label: Text("Name")),
                  DataColumn(label: Text("Address")),
                  DataColumn(label: Text("PhoneNo")),
                ],
                rows: const [
                  DataRow(
                    cells: [
                      DataCell(Text('#1')),
                      DataCell(Text('UNDP ')),
                      DataCell(Text('Sindh')),
                      DataCell(Text('12345'))
                    ],
                  ),
                  DataRow(
                    cells: [
                      DataCell(Text('#2')),
                      DataCell(Text('Flutter Basics')),
                      DataCell(Text('David John')),
                      DataCell(Text('David John'))
                    ],
                  ),
                  DataRow(
                    cells: [
                      DataCell(Text('#3')),
                      DataCell(Text('Flutter Basics')),
                      DataCell(Text('David John')),
                      DataCell(Text('David John'))
                    ],
                  ),
                  DataRow(
                    cells: [
                      DataCell(Text('#4')),
                      DataCell(Text('UNDP ')),
                      DataCell(Text('Sindh')),
                      DataCell(Text('12345'))
                    ],
                  ),
                  DataRow(
                    cells: [
                      DataCell(Text('#5')),
                      DataCell(Text('Flutter Basics')),
                      DataCell(Text('David John')),
                      DataCell(Text('David John'))
                    ],
                  ),
                  DataRow(
                    cells: [
                      DataCell(Text('#6')),
                      DataCell(Text('Flutter Basics')),
                      DataCell(Text('David John')),
                      DataCell(Text('David John'))
                    ],
                  ),
                  DataRow(
                    cells: [
                      DataCell(Text('#1')),
                      DataCell(Text('UNDP ')),
                      DataCell(Text('Sindh')),
                      DataCell(Text('12345'))
                    ],
                  ),
                  DataRow(
                    cells: [
                      DataCell(Text('#2')),
                      DataCell(Text('Flutter Basics')),
                      DataCell(Text('David John')),
                      DataCell(Text('David John'))
                    ],
                  ),
                  DataRow(
                    cells: [
                      DataCell(Text('#3')),
                      DataCell(Text('Flutter Basics')),
                      DataCell(Text('David John')),
                      DataCell(Text('David John'))
                    ],
                  ),
                  DataRow(
                    cells: [
                      DataCell(Text('#4')),
                      DataCell(Text('UNDP ')),
                      DataCell(Text('Sindh')),
                      DataCell(Text('12345'))
                    ],
                  ),
                  DataRow(
                    cells: [
                      DataCell(Text('#5')),
                      DataCell(Text('Flutter Basics')),
                      DataCell(Text('David John')),
                      DataCell(Text('David John'))
                    ],
                  ),
                  DataRow(
                    cells: [
                      DataCell(Text('#6')),
                      DataCell(Text('Flutter Basics')),
                      DataCell(Text('David John')),
                      DataCell(Text('David John'))
                    ],
                  ),
                  DataRow(
                    cells: [
                      DataCell(Text('#1')),
                      DataCell(Text('UNDP ')),
                      DataCell(Text('Sindh')),
                      DataCell(Text('12345'))
                    ],
                  ),
                  DataRow(
                    cells: [
                      DataCell(Text('#2')),
                      DataCell(Text('Flutter Basics')),
                      DataCell(Text('David John')),
                      DataCell(Text('David John'))
                    ],
                  ),
                  DataRow(
                    cells: [
                      DataCell(Text('#3')),
                      DataCell(Text('Flutter Basics')),
                      DataCell(Text('David John')),
                      DataCell(Text('David John'))
                    ],
                  ),
                  DataRow(
                    cells: [
                      DataCell(Text('#4')),
                      DataCell(Text('UNDP ')),
                      DataCell(Text('Sindh')),
                      DataCell(Text('12345'))
                    ],
                  ),
                  DataRow(
                    cells: [
                      DataCell(Text('#5')),
                      DataCell(Text('Flutter Basics')),
                      DataCell(Text('David John')),
                      DataCell(Text('David John'))
                    ],
                  ),
                  DataRow(
                    cells: [
                      DataCell(Text('#6')),
                      DataCell(Text('Flutter Basics')),
                      DataCell(Text('David John')),
                      DataCell(Text('David John'))
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 20),

              // Button and Other Widgets Section
              SizedBox(
                width: double.infinity,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    // SnackBar Button
                    ElevatedButton(
                      onPressed: () {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: Text('Snack Bar Message'),
                            action: SnackBarAction(
                              textColor: Colors.white,
                              label: 'Show SnackBar Action',
                              onPressed: () {
                                print("Snack Bar Testing");
                              },
                            ),
                          ),
                        );
                      },
                      child: Text("Show SnackBar"),
                    ),
                    const SizedBox(height: 30),

                    // Dialog Box Button
                    ElevatedButton(
                      onPressed: () {
                        showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            return AlertDialog(
                              icon: const Icon(Icons.add_box_outlined),
                              title: const Column(
                                children: [
                                  Text("Alert Message"),
                                  Text("Do you want to delete"),
                                ],
                              ),
                              actions: [
                                InkWell(
                                  onTap: () {
                                    Navigator.pop(context);
                                  },
                                  child: const Text("Cancel"),
                                ),
                              ],
                            );
                          },
                        );
                      },
                      child: const Text("Show Dialog Box"),
                    ),

                    const SizedBox(height: 40),

                    // Linear Progress Indicator
                    const LinearProgressIndicator(
                      color: Colors.blue,
                    ),
                    const SizedBox(height: 40),

                    // Circular Progress Indicator
                    const Center(
                      child: CircularProgressIndicator(
                        strokeWidth: 2,
                      ),
                    ),
                    const SizedBox(height: 50),

                    // Slider
                    Slider(
                      thumbColor: Colors.pink,
                      divisions: 100,
                      activeColor: Colors.green,
                      inactiveColor: Colors.red,
                      label: "$changeSliderValue",
                      max: 100,
                      min: 0,
                      value: changeSliderValue,
                      onChanged: (newValue) {
                        setState(() {
                          changeSliderValue = newValue;
                        });
                      },
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}