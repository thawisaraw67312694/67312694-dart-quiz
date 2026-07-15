double calcTotal({required int price,required int qty,double? discount}){
  const double vatRate=0.07;

  double finalDiscount = discount ?? 0.0;

  return (price*qty-finalDiscount)*(1+vatRate);
}
void main(){
  final String shopName='Dart cafe';
  const double vatRate=0.07;
  String? coupon;
  int length =coupon?.length ?? 0;
  if (length==0){
    coupon='NO-COUPON';
  }
  List<String> categories = ['เครื่องดื่ม','ของคาว','ของหวาน'];
  Map<String,int> menu = {
    'ลาเต้':55,
    'ชาไทย':40,
    'ข้าวผัด':60,
    'ครัวซองค์':45,

  };
  print('ร้าน: $shopName');
  print('อัตราภาษี (vatRate): $vatRate');
  print('---');

  print('หมวดเมนู: $categories');
  int allMenu=menu.length;
  print('จำนวนเมนูทั้งหมด: $allMenu รายการ');
  print('---');
  print('เมนูราคาตั้งแต่50บาทขึ้นไป: ');
  for (MapEntry<String,int> entry in menu.entries){
    if (entry.value>=50){
    
      print('ราคา$entryบาท');
    }
  
  }print('---');
  double finalPriceNoDiscount = calcTotal(price: 55, qty: 2,discount: 0);
  double finalPriceWithDiscount = calcTotal(price: 55, qty: 2,discount: 10);
  print('ยอดสุทธิ (ไม่มีส่วนลด): $finalPriceNoDiscount บาท');
  print('ยอดสุทธิ (ส่วนลด 10 บาท): $finalPriceWithDiscount บาท');
  print('---');
  print('ความยาวคูปอง: $length');
  print('คูปองหลังกำหนดค่า: $coupon');
}