import 'package:flutter/material.dart';
import 'package:freshh/features/auth/utils/auth_utils.dart';
import 'package:freshh/features/core/widget/custom_progress_indicator.dart';
import 'package:freshh/models/liked_products/liked_products.dart';
import 'package:freshh/models/shopping_cart/shopping_cart.dart';
import 'package:freshh/models/skincare_product/skincare_product.dart';

import '../../models/wish_list/wish_list.dart';
import '../../themes/freshbp_app_theme.dart';

class ProductInfoScreen extends StatefulWidget {
  const ProductInfoScreen({super.key, required this.product});

  final SkincareProduct product;

  @override
  _ProductInfoScreenState createState() => _ProductInfoScreenState();
}

class _ProductInfoScreenState extends State<ProductInfoScreen> with TickerProviderStateMixin {
  final double infoHeight = 364.0;
  late AnimationController animationController;
  late Animation<double> animation;
  double opacity1 = 0.0;
  double opacity2 = 0.0;
  double opacity3 = 0.0;

  ShoppingCartDocumentReference referanceShoppingCart = ShoppingCartRef.doc(Authentication().auth.currentUser?.uid);
  late ShoppingCartDocumentSnapshot docShoppingCart;

  WishListDocumentReference referanceWishList = WishListRef.doc(Authentication().auth.currentUser?.uid);
  late WishListDocumentSnapshot docWishList;

  LikedProductsDocumentReference referanceLikedProducts = LikedProductsRef.doc(Authentication().auth.currentUser?.uid);
  late LikedProductsDocumentSnapshot docLikedProducts;

  @override
  void initState() {
    animationController = AnimationController(duration: const Duration(milliseconds: 1000), vsync: this);
    animation = Tween<double>(begin: 0.0, end: 1.0)
        .animate(CurvedAnimation(parent: animationController, curve: const Interval(0, 1.0, curve: Curves.fastOutSlowIn)));

    setData();
    super.initState();
  }

  Future<void> setData() async {
    animationController.forward();
    await Future<dynamic>.delayed(const Duration(milliseconds: 200));
    setState(() {
      opacity1 = 1.0;
    });
    await Future<dynamic>.delayed(const Duration(milliseconds: 200));
    setState(() {
      opacity2 = 1.0;
    });
    await Future<dynamic>.delayed(const Duration(milliseconds: 200));
    setState(() {
      opacity3 = 1.0;
    });
  }

  Future<void> setFirebaseData() async {
    docShoppingCart = await referanceShoppingCart.get();
    docWishList = await referanceWishList.get();
    docLikedProducts = await referanceLikedProducts.get();
  }

  String getButtonString() {
    return docShoppingCart.data!.skincareProductRef.contains(widget.product.id) ? "Discard" : "Buy";
  }

  @override
  Widget build(BuildContext context) {
    String imageURL = widget.product.photo;
    String brand = widget.product.brand;
    String title = widget.product.name;
    double point = widget.product.star;
    String routine = widget.product.routine;
    String description = widget.product.description;
    double price = widget.product.price;
    final double tempHeight = MediaQuery.of(context).size.height - (MediaQuery.of(context).size.width / 1.2) + 24.0;
    return FutureBuilder(
        future: Future.wait([setFirebaseData()]),
        builder: (context, _) {
          if ((_.connectionState == ConnectionState.waiting)) {
            return const CustomProgressIndicator();
          }
          return Container(
            color: FreshBPAppTheme.nearlyWhite,
            child: Scaffold(
              backgroundColor: Colors.transparent,
              body: Stack(
                children: [
                  Column(
                    children: [
                      AspectRatio(
                        aspectRatio: 1.2,
                        child: Image.network(imageURL),
                      ),
                    ],
                  ),
                  Positioned(
                    top: (MediaQuery.of(context).size.width / 1.2) - 24.0,
                    bottom: 0,
                    left: 0,
                    right: 0,
                    child: Container(
                      decoration: BoxDecoration(
                        color: FreshBPAppTheme.nearlyWhite,
                        borderRadius: const BorderRadius.only(topLeft: Radius.circular(32.0), topRight: Radius.circular(32.0)),
                        boxShadow: <BoxShadow>[
                          BoxShadow(color: FreshBPAppTheme.grey.withOpacity(0.2), offset: const Offset(1.1, 1.1), blurRadius: 10.0),
                        ],
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 8, right: 8),
                        child: SingleChildScrollView(
                          child: Container(
                            constraints: BoxConstraints(minHeight: infoHeight, maxHeight: tempHeight > infoHeight ? tempHeight : infoHeight),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(top: 32.0, left: 18, right: 16),
                                  child: Text(
                                    '$brand\n$title',
                                    textAlign: TextAlign.left,
                                    style: const TextStyle(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 22,
                                      letterSpacing: 0.27,
                                      color: FreshBPAppTheme.darkerText,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 16, right: 16, bottom: 8, top: 16),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Text(
                                        '\$${price.toStringAsFixed(2)}',
                                        textAlign: TextAlign.left,
                                        style: const TextStyle(
                                          fontWeight: FontWeight.w200,
                                          fontSize: 22,
                                          letterSpacing: 0.27,
                                          color: FreshBPAppTheme.nearlyBlue,
                                        ),
                                      ),
                                      Container(
                                        child: Row(
                                          children: [
                                            Text(
                                              point.toStringAsFixed(1),
                                              textAlign: TextAlign.left,
                                              style: const TextStyle(
                                                fontWeight: FontWeight.w200,
                                                fontSize: 22,
                                                letterSpacing: 0.27,
                                                color: FreshBPAppTheme.grey,
                                              ),
                                            ),
                                            const Icon(
                                              Icons.star,
                                              color: FreshBPAppTheme.nearlyBlue,
                                              size: 24,
                                            ),
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                AnimatedOpacity(
                                  duration: const Duration(milliseconds: 500),
                                  opacity: opacity1,
                                  child: Padding(
                                    padding: const EdgeInsets.all(8),
                                    child: Row(
                                      children: [
                                        getTimeBoxUI(routine, 'routine'),
                                        getTimeBoxUI(widget.product.perWeek.toString(), 'per week'),
                                      ],
                                    ),
                                  ),
                                ),
                                Expanded(
                                  child: AnimatedOpacity(
                                    duration: const Duration(milliseconds: 500),
                                    opacity: opacity2,
                                    child: Padding(
                                      padding: const EdgeInsets.only(left: 16, right: 16, top: 8, bottom: 8),
                                      child: Text(
                                        description,
                                        textAlign: TextAlign.justify,
                                        style: const TextStyle(
                                          fontWeight: FontWeight.w200,
                                          fontSize: 14,
                                          letterSpacing: 0.27,
                                          color: FreshBPAppTheme.grey,
                                        ),
                                        maxLines: 3,
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                    ),
                                  ),
                                ),
                                AnimatedOpacity(
                                  duration: const Duration(milliseconds: 500),
                                  opacity: opacity3,
                                  child: Padding(
                                    padding: const EdgeInsets.only(left: 16, bottom: 16, right: 16),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      children: [
                                        InkWell(
                                          onTap: () async {
                                            if (docWishList.data != null) {
                                              if (docWishList.data!.skincareProductRef.contains(widget.product.id)) {
                                                docWishList.data!.skincareProductRef.remove(widget.product.id);
                                              } else {
                                                docWishList.data!.skincareProductRef.add(widget.product.id);
                                              }
                                              referanceWishList.update(
                                                  dateTime: DateTime.now(), skincareProductRef: docWishList.data!.skincareProductRef);
                                            } else {
                                              referanceWishList.set(WishList(
                                                  id: Authentication().auth.currentUser!.uid,
                                                  skincareProductRef: [widget.product.id],
                                                  dateTime: DateTime.now()));
                                            }
                                          },
                                          child: Container(
                                            width: 48,
                                            height: 48,
                                            decoration: BoxDecoration(
                                              color: FreshBPAppTheme.nearlyWhite,
                                              borderRadius: const BorderRadius.all(
                                                Radius.circular(16.0),
                                              ),
                                              border: Border.all(color: FreshBPAppTheme.grey.withOpacity(0.2)),
                                            ),
                                            child: const Icon(
                                              Icons.add,
                                              color: FreshBPAppTheme.nearlyBlue,
                                              size: 28,
                                            ),
                                          ),
                                        ),
                                        const SizedBox(
                                          width: 16,
                                        ),
                                        Expanded(
                                          child: InkWell(
                                            onTap: () async {
                                              if (docShoppingCart.data != null) {
                                                if (docShoppingCart.data!.skincareProductRef.contains(widget.product.id)) {
                                                  docShoppingCart.data!.skincareProductRef.remove(widget.product.id);
                                                } else {
                                                  docShoppingCart.data!.skincareProductRef.add(widget.product.id);
                                                }
                                                referanceShoppingCart.update(
                                                    dateTime: DateTime.now(), skincareProductRef: docShoppingCart.data!.skincareProductRef);
                                              } else {
                                                referanceShoppingCart.set(ShoppingCart(
                                                    id: Authentication().auth.currentUser!.uid,
                                                    skincareProductRef: [widget.product.id],
                                                    dateTime: DateTime.now()));
                                              }
                                              setState(() {
                                                getButtonString();
                                              });
                                            },
                                            child: Container(
                                              height: 48,
                                              decoration: BoxDecoration(
                                                color: FreshBPAppTheme.nearlyBlue,
                                                borderRadius: const BorderRadius.all(
                                                  Radius.circular(16.0),
                                                ),
                                                boxShadow: <BoxShadow>[
                                                  BoxShadow(
                                                      color: FreshBPAppTheme.nearlyBlue.withOpacity(0.5),
                                                      offset: const Offset(1.1, 1.1),
                                                      blurRadius: 10.0),
                                                ],
                                              ),
                                              child: Center(
                                                child: Text(
                                                  getButtonString(),
                                                  textAlign: TextAlign.left,
                                                  style: const TextStyle(
                                                    fontWeight: FontWeight.w600,
                                                    fontSize: 18,
                                                    letterSpacing: 0.0,
                                                    color: FreshBPAppTheme.nearlyWhite,
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: MediaQuery.of(context).padding.bottom,
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    top: (MediaQuery.of(context).size.width / 1.2) - 24.0 - 35,
                    right: 35,
                    child: ScaleTransition(
                      alignment: Alignment.center,
                      scale: CurvedAnimation(parent: animationController, curve: Curves.fastOutSlowIn),
                      child: Card(
                        color: FreshBPAppTheme.nearlyBlue,
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50.0)),
                        elevation: 10.0,
                        child: InkWell(
                          onTap: () async {
                            if (docLikedProducts.data != null) {
                              if (docLikedProducts.data!.skincareProductRef.contains(widget.product.id)) {
                                docLikedProducts.data!.skincareProductRef.remove(widget.product.id);
                              } else {
                                docLikedProducts.data!.skincareProductRef.add(widget.product.id);
                              }
                              referanceLikedProducts.update(dateTime: DateTime.now(), skincareProductRef: docLikedProducts.data!.skincareProductRef);
                            } else {
                              referanceLikedProducts.set(LikedProducts(
                                  id: Authentication().auth.currentUser!.uid, skincareProductRef: [widget.product.id], dateTime: DateTime.now()));
                            }
                          },
                          child: const SizedBox(
                            width: 60,
                            height: 60,
                            child: Center(
                              child: Icon(
                                Icons.favorite,
                                color: FreshBPAppTheme.nearlyWhite,
                                size: 30,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: MediaQuery.of(context).padding.top),
                    child: SizedBox(
                      width: AppBar().preferredSize.height,
                      height: AppBar().preferredSize.height,
                      child: Material(
                        color: Colors.transparent,
                        child: InkWell(
                          borderRadius: BorderRadius.circular(AppBar().preferredSize.height),
                          child: const Icon(
                            Icons.arrow_back_ios,
                            color: FreshBPAppTheme.nearlyBlack,
                          ),
                          onTap: () {
                            Navigator.pop(context);
                          },
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          );
        });
  }

  Widget getTimeBoxUI(String text1, String txt2) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
          color: FreshBPAppTheme.nearlyWhite,
          borderRadius: const BorderRadius.all(Radius.circular(16.0)),
          boxShadow: <BoxShadow>[
            BoxShadow(color: FreshBPAppTheme.grey.withOpacity(0.2), offset: const Offset(1.1, 1.1), blurRadius: 8.0),
          ],
        ),
        child: Padding(
          padding: const EdgeInsets.only(left: 18.0, right: 18.0, top: 12.0, bottom: 12.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                text1,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 14,
                  letterSpacing: 0.27,
                  color: FreshBPAppTheme.nearlyBlue,
                ),
              ),
              Text(
                txt2,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontWeight: FontWeight.w200,
                  fontSize: 14,
                  letterSpacing: 0.27,
                  color: FreshBPAppTheme.grey,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
