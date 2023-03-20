import '../../components/custom_widgets/enums.dart';

class OrderUtils {
  String orderStatus(OrderStatus status) {
    if (status == OrderStatus.pending) {
      return 'Pending';
    } else if (status == OrderStatus.cancelled) {
      return 'Cancelled';
    } else if (status == OrderStatus.confirmed) {
      return 'Confirmed';
    } else if (status == OrderStatus.shipped) {
      return 'Shipped';
    } else if (status == OrderStatus.delivered) {
      return 'delivered';
    } else {
      return 'Completed';
    }
  }
}
