Future<Map<String,dynamic>> fetchOrder(int orderId) async{
   await Future.delayed(Duration(seconds: 2));
  if (orderId <= 0) throw Exception("รหัสคำสั่งซื้อไม่ถูกต้อง");
  return {'id:':orderId};
  
} 
void main() async{
  print('เริ่มโหลดข้อมูล...');
  fetchOrder(7);
}