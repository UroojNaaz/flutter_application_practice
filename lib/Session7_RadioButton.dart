import 'package:flutter/material.dart';
import 'package:gradient_borders/box_borders/gradient_box_border.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';
import 'constant/const_color.dart';
import 'constant/const_style.dart';

class Session7_RadioButton extends StatefulWidget {
  const Session7_RadioButton({Key? key}) : super(key: key);

  @override
  State<Session7_RadioButton> createState() =>
      _Session7_RadioButtonState();
}

class _Session7_RadioButtonState
    extends State<Session7_RadioButton> {
  String isRadioChange = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.only(top: 56, right: 16, left: 16),
        color: Colors.black,
        width: double.infinity,
        height: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(
                  Icons.arrow_back,
                  color: whiteColor,
                  size: 24,
                ),
                Text("Wallet", style: mediumTextStyleWhite),
                SizedBox(
                  width: 24,
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 40.0),
              child: Container(
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    gradient: LinearGradient(colors: [
                      Colors.purple.withOpacity(.1),
                      Colors.pink.withOpacity(.1)
                    ])),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        GradientText(
                          'Good Job',
                          style: headingText,
                          colors: [
                            Colors.purple,
                            const Color.fromARGB(255, 233, 30, 30),
                          ],
                        ),
                        Text("Current Balance", style: mediumTextStyle)
                      ],
                    ),
                    Text(
                      "257\$",
                      style: headingText,
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 24.0, bottom: 24),
              child: Text(
                "Withdrawing Method",
                style: mediumTextStyleWhite,
              ),
            ),
            InkWell(
              onTap: () {
                setState(() {
                  isRadioChange = "Option 1";
                });
              },
              child: Container(
                height: 56,
                decoration: BoxDecoration(
                  border: Border.all(color: isRadioChange == "Option 1" ? greyColor.withOpacity(.8) : greyColor.withOpacity(.3)),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: RadioListTile(
                  title: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Direct Transfer To", style: mediumTextStyle),
                      Image.asset(
                        "assets/images/ApplePay.png",
                        width: 40,
                        height: 40,
                      )
                    ],
                  ),
                  value: "Option 1",
                  groupValue: isRadioChange,
                  onChanged: (newVal) {
                    setState(() {
                      isRadioChange = newVal.toString();
                    });
                  },
                  activeColor: Colors.green, // Change the radio button color when selected
                  selectedTileColor: Colors.transparent, // Change the tile color when selected
                ),
              ),
            ),
            SizedBox(height: 16),
            InkWell(
              onTap: () {
                setState(() {
                  isRadioChange = "Option 2";
                });
              },
              child: Container(
                height: 56,
                decoration: BoxDecoration(
                  border: Border.all(color: isRadioChange == "Option 2" ? greyColor.withOpacity(.8) : greyColor.withOpacity(.3)),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: RadioListTile(
                  title: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Direct Transfer To", style: mediumTextStyle),
                      Image.asset(
                        "assets/images/visa-logo.png",
                        width: 40,
                        height: 40,
                      )
                    ],
                  ),
                  value: "Option 2",
                  groupValue: isRadioChange,
                  onChanged: (newVal) {
                    setState(() {
                      isRadioChange = newVal.toString();
                    });
                  },
                  activeColor: Colors.green,
                  selectedTileColor: Colors.transparent,
                ),
              ),
            ),
            SizedBox(height: 16),
            InkWell(
              onTap: () {
                setState(() {
                  isRadioChange = "Option 3";
                });
              },
              child: Container(
                height: 56,
                decoration: BoxDecoration(
                  border: Border.all(color: isRadioChange == "Option 3" ? greyColor.withOpacity(.8) : greyColor.withOpacity(.3)),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: RadioListTile(
                  title: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Direct Transfer To", style: mediumTextStyle),
                      Image.asset(
                        "assets/images/ShopPay.png",
                        width: 40,
                        height: 40,
                      ),
                    ],
                  ),
                  value: "Option 3",
                  groupValue: isRadioChange,
                  onChanged: (newVal) {
                    setState(() {
                      isRadioChange = newVal.toString();
                    });
                  },
                  activeColor: Colors.green,
                  selectedTileColor: Colors.transparent,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 16.0),
              child: InkWell(
                onTap: () {
                  // Add functionality for "Add New Withdrawal Method"
                },
                child: Container(
                  width: double.infinity,
                  height: 56,
                  decoration: BoxDecoration(
                    border: GradientBoxBorder(
                      gradient: LinearGradient(colors: [Colors.purple, const Color.fromARGB(255, 233, 30, 30)]),
                      width: 1,
                    ),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.add_box_outlined, color: whiteColor, size: 32),
                      SizedBox(width: 16),
                      Text("Add New Withdrawal Method", style: mediumTextStyleWhite)
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 64.0),
              child: Container(
                alignment: Alignment.center,
                width: double.infinity,
                height: 56,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  gradient: LinearGradient(colors: [Colors.purple, const Color.fromARGB(255, 233, 30, 30)]),
                ),
                child: Text("Balance Withdrawal", style: mediumTextStyleWhite),
              ),
            )
          ],
        ),
      ),
    );
  }
}




