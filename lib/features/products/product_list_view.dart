import 'package:flutter/material.dart';
import 'package:freshh/features/products/product_info_screen.dart';
import 'package:freshh/main.dart';
import 'package:freshh/models/skincare_product/skincare_product.dart';
import 'package:freshh/themes/freshbp_app_theme.dart';
import 'package:get/get.dart';

class ProductListView extends StatefulWidget {
  const ProductListView({Key? key, required this.animationController}) : super(key: key);
  final AnimationController animationController;

  @override
  _ProductListViewState createState() => _ProductListViewState();
}

class _ProductListViewState extends State<ProductListView> with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      child: Padding(
        padding: const EdgeInsets.only(top: 8),
        child: FutureBuilder<SkincareProductQuerySnapshot>(
          future: SkincareProductRef.get(),
          builder: (BuildContext context, AsyncSnapshot<SkincareProductQuerySnapshot> snapshot) {
            if (!snapshot.hasData) {
              return const SizedBox();
            } else {
              return GridView(
                padding: const EdgeInsets.all(8),
                physics: const BouncingScrollPhysics(),
                scrollDirection: Axis.vertical,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 32.0,
                  crossAxisSpacing: 32.0,
                  childAspectRatio: 0.8,
                ),
                children: List.generate(
                  snapshot.data!.docs.length,
                  (int index) {
                    final int count = snapshot.data!.docs.length;
                    final Animation<double> animation = Tween<double>(begin: 0.0, end: 1.0).animate(
                      CurvedAnimation(
                        parent: widget.animationController,
                        curve: Interval((1 / count) * index, 1.0, curve: Curves.fastOutSlowIn),
                      ),
                    );
                    widget.animationController.forward();
                    return CategoryView(
                      animation: animation,
                      product: snapshot.data!.docs[0].data,
                      animationController: widget.animationController,
                    );
                  },
                ),
              );
            }
          },
        ),
      ),
    );
  }
}

class CategoryView extends StatelessWidget {
  const CategoryView({Key? key, this.animationController, this.animation, required this.product}) : super(key: key);

  final AnimationController? animationController;
  final Animation<double>? animation;

  final SkincareProduct product;

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: animationController!,
      builder: (BuildContext context, Widget? child) {
        return FadeTransition(
          opacity: animation!,
          child: Transform(
            transform: Matrix4.translationValues(0.0, 50 * (1.0 - animation!.value), 0.0),
            child: InkWell(
              splashColor: Colors.transparent,
              onTap: () {
                Get.to(ProductInfoScreen(
                  product: product,
                ));
              },
              child: Stack(
                alignment: AlignmentDirectional.bottomCenter,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: HexColor('#F8FAFB'),
                      borderRadius: const BorderRadius.all(Radius.circular(16.0)),
                    ),
                    child: Column(
                      children: [
                        Expanded(
                          child: Column(
                            children: [
                              Expanded(
                                child: Container(
                                  child: Column(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(top: 16, left: 16, right: 16),
                                        child: Text(
                                          '${product.brand} ${product.name}',
                                          textAlign: TextAlign.left,
                                          style: const TextStyle(
                                            fontWeight: FontWeight.w600,
                                            fontSize: 16,
                                            letterSpacing: 0.27,
                                            color: FreshBPAppTheme.darkerText,
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(top: 8, left: 16, right: 16, bottom: 8),
                                        child: Row(
                                          mainAxisAlignment: MainAxisAlignment.end,
                                          crossAxisAlignment: CrossAxisAlignment.center,
                                          children: [
                                            Text(
                                              '${product.star}',
                                              textAlign: TextAlign.left,
                                              style: const TextStyle(
                                                fontWeight: FontWeight.w200,
                                                fontSize: 18,
                                                letterSpacing: 0.27,
                                                color: FreshBPAppTheme.grey,
                                              ),
                                            ),
                                            Icon(
                                              Icons.star,
                                              color: HexColor("5C5EDD"),
                                              size: 20,
                                            )
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              const SizedBox(
                                width: 48,
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 48,
                        ),
                      ],
                    ),
                  ),
                  Container(
                    alignment: Alignment.center,
                    padding: const EdgeInsets.only(top: 80),
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(16.0)),
                    ),
                    child: ClipRRect(
                      borderRadius: const BorderRadius.all(Radius.circular(16.0)),
                      child: AspectRatio(aspectRatio: 1.28, child: Image.network(product.photo)),
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
