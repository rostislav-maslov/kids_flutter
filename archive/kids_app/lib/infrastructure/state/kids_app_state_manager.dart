import 'package:ftl_flutter_core_lib/infrastructure/api/company/response/company_list_response.dart';
import 'package:ftl_flutter_core_lib/infrastructure/db/user_auth/entity/host_info_entity.dart';
import 'package:ftl_flutter_core_lib/infrastructure/state/auth/state/auth_state.dart';
import 'package:ftl_flutter_core_lib/infrastructure/state/base/state/base_state.dart';
import 'package:ftl_flutter_core_lib/infrastructure/state/base/state_manager.dart';
import 'package:kids_app/infrastructure/base/constants.dart';
import 'package:provider/provider.dart';

class AppAuthorizationCreator extends BaseHostEntityCreator {
  @override
  HostInfoEntity createHostWithEmailPassword(
      Company company, String email, String password) {
    return HostInfoEntity()
      ..host = 'https://${company.tosterHost!}'
      ..hostId = company.id!
      ..hostPicId = company.picId
      ..hostName = company.name!;
  }

  @override
  HostInfoEntity createHostWithPhone(Company company, String phone) {
    return HostInfoEntity()
      ..host = 'https://${company.tosterHost!}'
      ..hostId = company.id!
      ..hostName = company.name!
      ..hostPicId = company.picId
      ..phone = phone;
  }
}

class KidsAppStateManager extends StateManager {
  static KidsAppStateManager? _instance;
  late AuthState authState;

  static Future<void> setup() async {
    AuthState authState = AuthState(controlAppUrl: Constants.controlAppUrl);
    // тут специально убрали, что бы не тормозился интерфейс. запуск перенесен на страницу загрузки
    await authState.setup(creator: AppAuthorizationCreator());

    _instance = KidsAppStateManager([
      ChangeNotifierProvider<AuthState>.value(value: authState),
    ]);
    _instance!.authState = authState;
  }

  static KidsAppStateManager instance() {
    if (_instance != null) {
      return _instance!;
    }
    return _instance!;
  }

  KidsAppStateManager(super.states);
}
