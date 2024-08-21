import 'package:flutter/material.dart';

class SortDropdown extends StatefulWidget {
  final Function(String) onSelected;

  SortDropdown({required this.onSelected});

  @override
  _SortDropdownState createState() => _SortDropdownState();
}

class _SortDropdownState extends State<SortDropdown> {
  String? _selectedValue;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity, // Ensure the container takes full width
      padding: EdgeInsets.symmetric(horizontal: 12.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: Colors.blueAccent, width: 1),
        color: Colors.white,
      ),
      child: DropdownButton<String>(
        hint: Text('Sort by', style: TextStyle(color: Colors.blueAccent)),
        value: _selectedValue,
        items: [
          DropdownMenuItem(value: 'Name', child: Text('Name')),
          DropdownMenuItem(value: 'Population', child: Text('Population')),
          DropdownMenuItem(value: 'Capital', child: Text('Capital')),
        ],
        onChanged: (value) {
          setState(() {
            _selectedValue = value;
          });
          if (value != null) {
            widget.onSelected(value);
          }
        },
        isExpanded: true,
        underline: SizedBox(), 
      ),
    );
  }
}
