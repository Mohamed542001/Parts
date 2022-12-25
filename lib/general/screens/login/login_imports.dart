import 'dart:io';

import 'package:auto_route/auto_route.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hwzn_base/general/blocks/user_cubit/user_cubit.dart';
import 'package:hwzn_base/general/constants/MyColors.dart';
import 'package:hwzn_base/general/helper/configration/CustomButtonAnimation.dart';
import 'package:hwzn_base/general/helper/helper_methods/HelperMethods.dart';
import 'package:hwzn_base/general/packages/generic_bloc/generic_cubit.dart';
import 'package:hwzn_base/general/packages/localization/Localizations.dart';
import 'package:hwzn_base/general/resources/GeneralRepoImports.dart';
import 'package:hwzn_base/general/widgets/MyText.dart';

import '../../widgets/build_auth_app_bar.dart';
import '../../widgets/build_header_logo.dart';
import 'widgets/login_widgets_imports.dart';

part 'login.dart';
part 'login_data.dart';
