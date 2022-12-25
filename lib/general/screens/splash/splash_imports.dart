import 'dart:convert';

import 'package:auto_route/auto_route.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hwzn_base/general/blocks/auth_cubit/auth_cubit.dart';
import 'package:hwzn_base/general/helper/fcm/GlobalNotification.dart';
import 'package:hwzn_base/general/helper/configration/InitUtils.dart';
import 'package:hwzn_base/general/helper/dio/utils/GlobalState.dart';
import 'package:hwzn_base/general/helper/storage/Storage.dart';
import 'package:hwzn_base/general/models/UserModel.dart';
import 'package:hwzn_base/general/packages/animation_container/AnimationContainer.dart';
import 'package:hwzn_base/general/utilities/routers/RouterImports.gr.dart';
import 'package:hwzn_base/general/utilities/utils_functions/UtilsImports.dart';
import 'package:hwzn_base/res.dart';
import 'package:flutter/foundation.dart' show kIsWeb;
import 'package:flutter/material.dart';
import 'package:location/location.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'splash.dart';
part 'splash_controller.dart';