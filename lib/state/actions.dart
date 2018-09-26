import 'dart:convert';

import 'package:flutter_boilerplate/services/common.dart';
import 'package:flutter_boilerplate/state/state.dart';
import 'package:http/http.dart';
import 'package:redux/redux.dart';
import 'package:redux_thunk/redux_thunk.dart';

class IncrementAction {}

class UpdateIPAddressAction {
  String ipAddress;

  UpdateIPAddressAction({this.ipAddress = ''});
}

final httpClient = Client();

ThunkAction<AppState> getIPAddressThunkAction = (Store<AppState> store) async {
  Response response;
  try {
    response = await getIPAddressService();
  } catch (e) {
    print('EXCEPTION $e');
    return;
  }

  final Map<String, dynamic> result = json.decode(response.body);
  final String ipAddress = result['origin'];

  store.dispatch(UpdateIPAddressAction(ipAddress: ipAddress));
};
