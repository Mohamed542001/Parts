import 'package:auto_route/auto_route.dart';
import 'package:auto_route/empty_router_widgets.dart';

import '../../pages/profile/profile_imports.dart';

const baseRoute = AutoRoute(
  path: 'home',
  name: 'homePages',
  page: EmptyRouterPage,
  children: [
    AutoRoute(page: Profile),
  ],
);
