import "package:shared_preferences/shared_preferences.dart";

const lastSelectedTruckIdStoreKey = "last_selected_truck_id";
const ongoingTaskDataStoreKey = "ongoing_task_id";

late final SharedPreferences store;

Future<void> initStore() async {
  store = await SharedPreferences.getInstance();
}
