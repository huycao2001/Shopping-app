class Product {
  String name ; 
  String price1; 
  String price2; 
  String image; 
  String des; 
  
  Product({this.name, this.price1 , this.price2, this.image, this.des});
}

List<Product> products = [
  Product(name : 'Red Dress', price1: '\$15' , price2: '\$16', image:'asset/products/dress/dress_8.jpeg', des:'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Nisl tincidunt eget nullam non. Quis hendrerit dolor magna eget est lorem ipsum dolor sit. Volutpat odio facilisis mauris sit amet massa. Commodo odio aenean sed adipiscing diam donec adipiscing tristique. Mi eget mauris pharetra et. Non tellus orci ac auctor augue. Elit at imperdiet dui accumsan sit. Ornare arcu dui vivamus arcu felis. Egestas integer eget aliquet nibh praesent. In hac habitasse platea dictumst quisque sagittis purus. Pulvinar elementum integer enim neque volutpat ac.'),
  Product(name: 'Vamsi', price1: '\$28', price2 :'\$29' , image :'asset/products/vamsi.webp', des : 'ssssssssssssssssssssssssssssssssssssssss'),
  Product(name: 'Idalia', price1: '\$30', price2 :'\$32' , image :'asset/products/idalia.webp', des : 'ssssssssssssssssssssssssssssssssssssssss'), 
  
];
