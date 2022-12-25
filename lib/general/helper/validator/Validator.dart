import 'package:flutter/material.dart';
import 'package:hwzn_base/general/packages/localization/Localizations.dart';

extension Validator on String {

  String? noValidate() {
    return null;
  }

  String? validateEmpty(BuildContext context,{String? message}) {
    if (trim().isEmpty) {
      return message ?? tr(context,"fillField");
    }
    return null;
  }

  String? validatePassword(BuildContext context,{String? message}) {
    if (trim().isEmpty) {
      return message ?? tr(context,"fillField");
    } else if (length < 6) {
      return message ?? tr(context,"passValidation");
    }
    return null;
  }


  String? validateEmail(BuildContext context,{String? message}) {
    if (trim().isEmpty) {
      return message ?? tr(context,"fillField");
    } else if (!RegExp(
        r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
        .hasMatch(this)) {
      return message ?? tr(context,"mailValidation");
    }
    return null;
  }

  String? validateEmailORNull(BuildContext context,{String? message}) {
    if (trim().isNotEmpty) {
      if (!RegExp(
          r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
          .hasMatch(this)) {
        return message ?? tr(context,"mailValidation");
      }
    }
    return null;
  }

  String? validatePhone(BuildContext context,{String? message}) {
    if (trim().isEmpty) {
      return message ?? tr(context,"fillField");
    } else if (length < 10 ) {
      return message ?? " يجب ان لا يقل عدد الارقام عن 10 أحرف وأن يبدأ ب 05  ";
    }else if(!startsWith("05", 0)){
      return message??"يجب أن يبدأ رقم الهاتف ب 05 ";
    }
    else if (length>10 ) {
      return message ?? " يجب ان لا يزيد عدد الارقام عن 10 حرف وأن يبدأ ب 05 ";
    }
    return null;
  }

  String? validatePasswordConfirm(BuildContext context,{required String pass, String? message}) {
    if (trim().isEmpty) {
      return message ?? tr(context,"fillField");
    } else if (this != pass) {
      return message ?? tr(context,"confirmValidation");
    }
    return null;
  }
}

extension ValidatorDrop<DataType> on DataType {
  String? validateDropDown(BuildContext context,{String? message}) {
    if (this == null) {
      return message ?? tr(context,"fillField");
    }
    return null;
  }
}
