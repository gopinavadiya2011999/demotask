import 'package:demotask/infrastructure/constant/color_constant.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CommonDropdown extends StatelessWidget {
  const CommonDropdown({super.key, this.onChanged, required this.dropDownValue, required this.list,  this. color});
final ValueChanged<String?>? onChanged;
final String dropDownValue;
final Color? color;
final List<String> list;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 12.0, right: 5),
      decoration: BoxDecoration(
        border: Border.all(color:color?? ColorConstant.grey86),
        borderRadius: BorderRadius.circular(20),
      ),
      child: DropdownButtonHideUnderline(
        child: DropdownButton<String>(
          isDense: true,
          value: dropDownValue,
          icon:  Icon(
            Icons.arrow_drop_down,
            color: color??ColorConstant.grey86,
          ),
          iconSize: 24,
          elevation: 16,
          style: const TextStyle(color: Colors.black),
          onChanged:onChanged ,
          items: list.map<DropdownMenuItem<String>>((String value) {
            return DropdownMenuItem<String>(
              value: value,
              child: Container(
                  margin: const EdgeInsets.only(right: 10),
                  child: Text(
                    value,
                    style: GoogleFonts.notoSans(color:color?? ColorConstant.grey86, fontSize: 12, fontWeight: FontWeight.w400),
                  )),
            );
          }).toList(),
        ),
      ),
    );
  }
}
