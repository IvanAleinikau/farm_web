import 'package:farm_web/presentation/model/task.dart';
import 'package:farm_web/presentation/styling/farm_icons.dart';
import 'package:farm_web/presentation/styling/farm_text_styles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class TaskWidget extends StatefulWidget {
  final Task task;
  final Function(Task) onCompleted;
  final Function(Task) onDelete;
  final Function(Task) onUpdate;

  const TaskWidget({
    Key? key,
    required this.task,
    required this.onCompleted,
    required this.onDelete,
    required this.onUpdate,
  }) : super(key: key);

  @override
  State<TaskWidget> createState() => _TaskWidgetState();
}

class _TaskWidgetState extends State<TaskWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20),
      child: Row(
        children: [
          Expanded(
            flex: 3,
            child: Row(
              children: [
                const SizedBox(width: 34),
                InkWell(
                  borderRadius: BorderRadius.circular(5),
                  onTap: () => widget.onCompleted(widget.task),
                  child: widget.task.isCompleted == 0
                      ? const Icon(
                          CupertinoIcons.square,
                          size: 16,
                        )
                      : const Icon(
                          CupertinoIcons.checkmark_square,
                          size: 16,
                        ),
                ),
                const SizedBox(width: 8),
                Expanded(
                  child: Text(
                    widget.task.taskName,
                    style: widget.task.isCompleted == 0
                        ? FarmTextStyles.roboto16w400
                        : FarmTextStyles.roboto16w400.copyWith(
                            color: Colors.grey,
                            decoration: TextDecoration.lineThrough,
                          ),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                const SizedBox(width: 26),
              ],
            ),
          ),
          Expanded(
            flex: 2,
            child: Text(
              DateFormat('dd/MM/yyyy').format(widget.task.taskDate),
              style: FarmTextStyles.roboto16w400.copyWith(
                color: widget.task.isCompleted == 0 ? Colors.black : Colors.grey,
              ),
            ),
          ),
          Expanded(
            flex: 2,
            child: Text(
              widget.task.responsible,
              style: FarmTextStyles.roboto16w400.copyWith(
                color: widget.task.isCompleted == 0 ? Colors.black : Colors.grey,
              ),
            ),
          ),
          Expanded(
            flex: 3,
            child: Row(
              children: [
                InkWell(
                  borderRadius: BorderRadius.circular(5),
                  onTap: () => widget.onUpdate(widget.task),
                  child: Image.asset(
                    FarmIcons.editIcon,
                    height: 24,
                    width: 24,
                  ),
                ),
                const SizedBox(width: 24),
                InkWell(
                  borderRadius: BorderRadius.circular(5),
                  onTap: () => widget.onDelete(widget.task),
                  child: Image.asset(
                    FarmIcons.trashIcon,
                    height: 24,
                    width: 24,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
