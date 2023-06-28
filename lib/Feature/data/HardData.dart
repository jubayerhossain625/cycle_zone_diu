
import '../presentation/pages/user/history/historyModel/historyModel.dart';

class HeardDataService {
  List<History> getHistory() {
    return [
      History(id: 1,userId: 2,rideId: 22,cycleId: 1,rideDate: '12-06-2023',startTime: '12.00',endTime: '12.09',cost: '5',reward: '10'),
      History(id: 1,userId: 2,rideId: 22,cycleId: 1,rideDate: '12-06-2023',startTime: '12.00',endTime: '12.09',cost: '5',reward: '10'),
      History(id: 1,userId: 2,rideId: 22,cycleId: 1,rideDate: '12-06-2023',startTime: '12.00',endTime: '12.09',cost: '5',reward: '10'),
      History(id: 1,userId: 2,rideId: 22,cycleId: 1,rideDate: '12-06-2023',startTime: '12.00',endTime: '12.09',cost: '5',reward: '10'),
    ];
  }
}