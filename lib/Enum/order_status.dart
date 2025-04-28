enum OrderStatus {
  //create enum for order status
  pending,
  processing,
  shipped,
  delivered;

  static List<OrderStatus> get orderAllList => values;

//akhane  enum theke je item select korbo tar value set kora hoice
  String get orderStatusText => switch (this) {
        pending => "Order Pending",
        processing => "Order Processing",
        shipped => "Order Shipped",
        delivered => "Order Delivered",
      };

  int get orderStatusToCode => switch (this) {
        pending => 0,
        processing => 1,
        shipped => 2,
        delivered => 3,
      };

  static OrderStatus? getStatusFromCode(int code) => switch (code) {
        0 => OrderStatus.pending,
        1 => OrderStatus.processing,
        2 => OrderStatus.shipped,
        4 => OrderStatus.delivered,
        _ => null,
      };
}

void main() {
  //here print order processing a je text ase oita
  print(" ${OrderStatus.processing.orderStatusText}");
  //print order status all list
  print("list of order status ${OrderStatus.orderAllList}");
  //print order status  id
  print(OrderStatus.processing.orderStatusToCode);
  //status get
  OrderStatus? status=OrderStatus.getStatusFromCode(2);
  //ami code dibo ar order status print hobe
  if(status!=null){
    print("code 2 and this code orderStatus :${status.orderStatusText}");
  }

}
