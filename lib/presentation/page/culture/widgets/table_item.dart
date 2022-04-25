import 'package:farm_web/presentation/styling/farm_text_styles.dart';
import 'package:flutter/material.dart';

class TableItem extends StatefulWidget {
  final String title;
  final Color? color;
  final double firstAmount;
  final double secondAmount;
  final bool isEdit;
  final TextEditingController controller;

  const TableItem({
    Key? key,
    this.color,
    required this.title,
    required this.firstAmount,
    required this.secondAmount,
    this.isEdit = false,
    required this.controller,
  }) : super(key: key);

  @override
  State<TableItem> createState() => _TableItemState();
}

class _TableItemState extends State<TableItem> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 48,
      color: widget.color ?? Colors.white,
      child: Padding(
        padding: const EdgeInsets.only(left: 12, right: 12),
        child: Row(
          children: [
            Expanded(
              flex: 4,
              child: Text(
                widget.title,
                style: FarmTextStyles.roboto20w400,
              ),
            ),
            Expanded(
              flex: 2,
              child: !widget.isEdit
                  ? RichText(
                      text: TextSpan(
                        text: widget.firstAmount.toString(),
                        style: FarmTextStyles.roboto20w400,
                        children: const [
                          TextSpan(
                            text: ' руб./ар',
                            style: FarmTextStyles.roboto16w400,
                          ),
                        ],
                      ),
                    )
                  : Padding(
                      padding: const EdgeInsets.only(right: 34, top: 5, bottom: 5),
                      child: TextFormField(
                        controller: widget.controller,
                        cursorColor: Colors.black,
                        decoration: InputDecoration(
                          suffixIcon: const SizedBox(
                            width: 70,
                            child: Center(
                              child: Text(
                                ' руб./ар',
                                style: FarmTextStyles.roboto16w400,
                              ),
                            ),
                          ),
                          contentPadding: const EdgeInsets.only(left: 12),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8.0),
                            borderSide: const BorderSide(color: Color(0xFFB1B1B1)),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8.0),
                            borderSide: const BorderSide(color: Colors.black),
                          ),
                          errorBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8.0),
                            borderSide: const BorderSide(color: Colors.red),
                          ),
                        ),
                      ),
                    ),
            ),
            Expanded(
              flex: 2,
              child: RichText(
                text: TextSpan(
                  text: widget.secondAmount.toString(),
                  style: FarmTextStyles.roboto20w400,
                  children: const [
                    TextSpan(
                      text: ' руб./ар',
                      style: FarmTextStyles.roboto16w400,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
