import 'dart:io';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hwzn_base/general/blocks/lang_cubit/lang_cubit.dart';
import 'package:hwzn_base/general/constants/MyColors.dart';
import 'package:hwzn_base/general/helper/validator/Validator.dart';
import 'package:hwzn_base/general/packages/generic_bloc/generic_cubit.dart';
import 'package:hwzn_base/general/packages/input_fields/GenericTextField.dart';
import 'package:hwzn_base/general/packages/localization/Localizations.dart';
import 'package:hwzn_base/general/screens/register/register_imports.dart';
import 'package:hwzn_base/general/utilities/routers/RouterImports.gr.dart';
import 'package:hwzn_base/general/widgets/LoadingButton.dart';
import 'package:hwzn_base/general/widgets/MyText.dart';

import '../../../../../../res.dart';

part 'build_have_account.dart';
part 'build_register_button.dart';
part 'build_register_fields.dart';
part 'build_terms_and_policy.dart';
part "build_upload_image.dart";
