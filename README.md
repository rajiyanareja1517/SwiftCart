
# SwiftCart Project

A SwiftCart project created in flutter. SwiftCart supports both ios and android, clone the appropriate branches mentioned below:

* For Mobile: https://github.com/rajiyanareja1517/SwiftCart

Download or clone this repo by using the link below:

```
git remote add origin https://github.com/rajiyanareja1517/SwiftCart.git
```

## SwiftCart Features:

#### Home
  * The home page is essential for capturing the attention of potential customers and providing a seamless shopping experience.

#### User-friendly product filtering and sorting
 * Users can filter by select categories and range of the price, Using this features users can quickly find the products they’re interested in, without having to browse your entire offer.
 
#### Detailed product descriptions
* The benefits of the customers interested in buying a product can check its details such as type, size, brand, color, description, stock, rating and warranty. They have all the information they need available in one place.
  
#### Product gallery
 * Using multiple images of the product customers can get to see a product from many different angles, which brings them closer to the enjoyable shopping experience in a brick-and-mortar store. You can also offer 3D product visualizations where users can intuitively turn the product around to see it better.

#### Shopping cart
 * One of the top mobile commerce app features is a shopping cart. A shopping cart allows customers to realize their purchase in several stages when they find it comfortable. For example, a user can add a product to the cart, and if they don’t want to proceed to checkout immediately, return to it easily. That way, adding products to the shopping cart once again isn’t necessary, saving customers their time.

### Folder Structure
Here is the core folder structure which flutter provides.

```
flutter-app/
|- android
|- build
|- ios
|- lib
|- test
```

Here is the folder structure we have been using in this project

```
lib/
|- screens/
|- utiles/
|- main.dart
```

### screens

This directory screens all the screen of the application together in one place. A separate file is created for each type as shown in example below:

```
screens/
|- home_page.dart
|- cart_product_data.dart
|- product_details.dart
```

### utiles

Contains the common file(s) and utilities used in a project. The folder structure is as follows:

```

|- utiles/
    |- all_product_data/

```


### Main

This is the starting point of the application. All the application level configurations are defined in this file i.e, theme, routes, title, orientation etc.

```dart
import 'package:flutter/material.dart';
import 'package:swift_cart/screens/cart_product_data.dart';
import 'package:swift_cart/screens/home_page.dart';
import 'package:swift_cart/screens/product_details.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: 'home_page',
      routes: {
        'home_page': (context) => HomePage(),
        'cart_page': (context) => CartProductData(),
        'product_details': (context) => ProductDetails(),
      },
    );
  }
}
}
```



https://github.com/rajiyanareja1517/SwiftCart/assets/165259303/92d3a20a-bd89-41f2-bf43-b3789c797141




![Screenshot_20240402_173515](https://github.com/rajiyanareja1517/SwiftCart/assets/165259303/1cb045f5-9550-42e0-8bb7-96c7e823a336)
![Screenshot_20240402_173611](https://github.com/rajiyanareja1517/SwiftCart/assets/165259303/f37f8f10-6928-4e37-bbba-3b5b31a94271)
![Screenshot_20240402_173650](https://github.com/rajiyanareja1517/SwiftCart/assets/165259303/66b81903-048c-4c45-853f-5dc731bd3bf4)
![Screenshot_20240402_173716](https://github.com/rajiyanareja1517/SwiftCart/assets/165259303/ca214ce3-6475-4db0-b3b9-b50f9425e70f)
![Screenshot_20240402_173431](https://github.com/rajiyanareja1517/SwiftCart/assets/165259303/a4be1a39-182b-4007-bd85-3dce75477187)


## Conclusion

Again to note, this is example can appear as my code for what it is - but it is an example only. If you liked my work, don’t forget to ⭐ star the repo to show your support.
