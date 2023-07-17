import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class InputTextAreaAR extends StatefulWidget {
  final String displayName;
  final TextEditingController myController;

  const InputTextAreaAR(
      {super.key, required this.displayName, required this.myController});

  @override
  State<InputTextAreaAR> createState() => _InputTextAreaARState();
}

class _InputTextAreaARState extends State<InputTextAreaAR> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Column(
        children: [
          Container(
            margin: EdgeInsetsDirectional.only(
                end: MediaQuery.of(context).size.width / 2.2, bottom: 2),
            child: Text(
              widget.displayName.tr(),
              style: const TextStyle(
                  fontSize: 12,
                  color: Color.fromRGBO(244, 130, 34, 1),
                  fontWeight: FontWeight.w500),
            ),
          ),
          Row(
            children: [
              const SizedBox(
                width: 30 / 1.7,
                height: 35,
                child: TextField(
                  enabled: false,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderSide: BorderSide(
                            color: Color.fromRGBO(244, 130, 34, 1), width: 1),
                        borderRadius: BorderRadius.only(
                            bottomRight: Radius.circular(28),
                            topRight: Radius.circular(28))),
                    filled: true,
                    fillColor: Color.fromRGBO(244, 130, 34, 1),
                  ),
                ),
              ),
              SizedBox(
                width: (MediaQuery.of(context).size.width - 30) / 1.7,
                height: 35,
                child: TextField(
                  controller: widget.myController,
                  minLines: 4,
                  maxLines: null,
                  keyboardType: TextInputType.multiline,
                  decoration: const InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(28),
                          topLeft: Radius.circular(28),
                        ),
                        borderSide: BorderSide(
                          color: Color.fromRGBO(244, 130, 34, 1),
                          width: 1,
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(28),
                          topLeft: Radius.circular(28),
                        ),
                        borderSide: BorderSide(
                          color: Color.fromRGBO(244, 130, 34, 1),
                          width: 1,
                        ),
                      ),
                      contentPadding: EdgeInsets.all(10)),
                  // onTap: ,
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
