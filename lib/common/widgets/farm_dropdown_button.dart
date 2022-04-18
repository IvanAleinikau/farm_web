import 'package:farm_web/presentation/model/user.dart';
import 'package:farm_web/presentation/styling/farm_text_styles.dart';
import 'package:flutter/material.dart';

class FarmDropdownButton extends StatefulWidget {
  final List<CustomUser> users;
  final Function(CustomUser) responsible;

  const FarmDropdownButton({
    Key? key,
    required this.users,
    required this.responsible,
  }) : super(key: key);

  @override
  State<FarmDropdownButton> createState() => _FarmDropdownButtonState();
}

class _FarmDropdownButtonState extends State<FarmDropdownButton> {
  int _value = 0;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        DropdownButton(
          value: _value,
          icon: const Padding(
            padding: EdgeInsets.only(left: 10),
            child: Icon(Icons.keyboard_arrow_down),
          ),
          underline: Container(),
          items: List.generate(widget.users.length, (index) {
            return DropdownMenuItem(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    widget.users[index].name,
                    style: FarmTextStyles.roboto16w400,
                  ),
                  Text(
                    widget.users[index].position,
                    style: FarmTextStyles.roboto16w400,
                  ),
                ],
              ),
              value: index,
            );
          }),
          onChanged: (int? value) {
            setState(() {
              _value = value!;
            });
            widget.responsible(widget.users[_value]);
          },
        ),
      ],
    );
  }
}
