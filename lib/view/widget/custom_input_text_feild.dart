import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CustomInputTextfeild extends StatelessWidget {
  const CustomInputTextfeild(
      {super.key,
      required this.title,
      required this.hint,
      this.inputFormatters,
      this.keyboardType = TextInputType.number,
      this.onChanged,
      this.controller,
      this.showIcon = false});
  final String title;
  final String hint;
  final List<TextInputFormatter>? inputFormatters;
  final TextInputType? keyboardType;
  final void Function(String)? onChanged;
  final TextEditingController? controller;
  final bool showIcon;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8.0),
      child: Container(
        color: Colors.white,
        child: Padding(
          padding:
              const EdgeInsets.only(left: 24, top: 10, right: 24, bottom: 7),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: const TextStyle(
                    fontFamily: "Dm Sans",
                    fontSize: 18,
                    color: Color(0xff232440)),
              ),
              Row(
                children: [
                  Expanded(
                    child: Stack(
                      children: [
                        TextFormField(
                          validator: (_) => null,
                          controller: controller,
                          onChanged: onChanged,
                          keyboardType: keyboardType,
                          inputFormatters: inputFormatters,
                          style: const TextStyle(
                            color: Color(0xff0F4B83),
                            fontSize: 16,
                            fontFamily: "Dm Sans",
                          ),
                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.zero,
                            enabledBorder: const UnderlineInputBorder(
                              borderSide: BorderSide(
                                  color: Color(0xffE8E7E7), width: 1),
                            ),
                            hintText: hint,
                            hintStyle: const TextStyle(
                              fontWeight: FontWeight.w400,
                              color: Color(0xff7F7F92),
                            ),
                            focusedBorder: const UnderlineInputBorder(
                              borderSide: BorderSide(
                                color: Color(0xff0F4B83),
                              ),
                            ),
                          ),
                        ),
                        if (showIcon)
                          const Positioned(
                            bottom: 10,
                            right: 0,
                            child: Icon(
                              Icons.check_circle,
                              color: Color(0xff0F4B83),
                              size: 23,
                            ),
                          ),
                      ],
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
