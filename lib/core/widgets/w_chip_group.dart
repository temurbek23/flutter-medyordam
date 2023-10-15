import 'package:dla_bz/core/widgets/w_removable_chip.dart';
import 'package:dla_bz/features/doctors/data/dto/doctor_dto/professions_dto.dart';
import 'package:flutter/material.dart';

class WChipGroup extends StatefulWidget {
  final List<ProfessionsDto> items;

  const WChipGroup({
    Key? key,
    required this.items,
  }) : super(key: key);

  @override
  State<WChipGroup> createState() => _WChipGroupState();
}

class _WChipGroupState extends State<WChipGroup> {
  List<ProfessionsDto> _items = [];

  @override
  void initState() {
    _items = widget.items;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Wrap(
      crossAxisAlignment: WrapCrossAlignment.start,
      alignment: WrapAlignment.start,
      spacing: 10,
      children: List.generate(
          _items.length,
          (index) => WRemovableChip(
                title: _items[index].name,
                onCloseTap: () {
                  _items.removeAt(index);
                  setState(() {});
                },
              )),
    );
  }
}
