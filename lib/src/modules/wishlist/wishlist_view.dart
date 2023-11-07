import 'package:flutter/material.dart';
import 'package:fooder/src/modules/checkout/checkout.dart';

import '../../data/style/colors.dart';

class WishList extends StatefulWidget {
  const WishList({super.key});

  @override
  State<WishList> createState() => _WishListState();
}

class _WishListState extends State<WishList> {
  @override
  Widget build(BuildContext context) {
    final WishListData = Provider.of<HomeController>(context);
    return Scaffold(
      backgroundColor: CustomColors.fooderPrimary,
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: InkWell(
          onTap: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => HomePage()));
          },
          child: Icon(Icons.arrow_back_ios),
        ),
        centerTitle: true,
        elevation: 0,
        title: Text(
          "WishList",
          style: TextStyle(
              fontWeight: FontWeight.normal,
              fontSize: 24.sp,
              color: CustomColors.headingTextColor),
        ),
      ),
      body: ListView.builder(
        itemCount: WishListData.wishlist.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: EdgeInsets.fromLTRB(8.r, 8.r, 8.r, 0.r),
            child: Stack(
              children: [
                Card(
                  child:  Padding(
                    padding: EdgeInsets.fromLTRB(16.r, 16.r, 16.r, 12.r),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Stack(
                              alignment: Alignment.bottomCenter,
                              children: [
                                Container(
                                  height: 120.w,
                                  width: 120.w,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5.r),
                                    image: DecorationImage(
                                        image: NetworkImage(
                                          WishListData.wishlists[index]['item_pic'],
                                        ),
                                        fit: BoxFit.cover
                                    ),
                                  ),
                                ),
                                Positioned(
                                  child: Container(
                                    height: 30.h,
                                    width: 68.w,
                                    decoration: BoxDecoration(
                                        color: Colors.orange,
                                        borderRadius: BorderRadius.circular(5.r)),
                                    child: Center(
                                      child: Text(
                                        "Left ${WishListData.wishlists[index]['item_left']}",
                                        style: TextStyle(
                                            fontSize: 15.sp,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              width: 10.w,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  WishListData.wishlists[index]['item_name'],
                                  style: TextStyle(
                                      fontSize: 17.sp, color: Colors.black),
                                ),
                                SizedBox(
                                  height: 5.h,
                                ),
                                Text(
                                  WishListData.wishlists[index]['item_subname'],
                                  style: TextStyle(fontSize: 13.sp),
                                ),
                                SizedBox(
                                  height: 5.h,
                                ),
                                Row(
                                  children: [
                                    Text(
                                      "Price: ",
                                      style: TextStyle(
                                        fontSize: 13.sp,
                                      ),
                                    ),
                                    Text(
                                      WishListData.wishlists[index]
                                      ['special_price'],
                                      style: TextStyle(
                                          fontSize: 14.sp,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    SizedBox(
                                      width: 10.w,
                                    ),
                                    Text(
                                      WishListData.wishlists[index]
                                      ['regular_price'],
                                      style: TextStyle(
                                          decoration: TextDecoration.lineThrough,
                                          fontSize: 12.sp),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 5.h,
                                ),
                                Row(
                                  children: [
                                    Container(
                                      decoration: BoxDecoration(
                                          color: Colors.orange,
                                          borderRadius:
                                          BorderRadius.circular(50.r)),
                                      height: 20.h,
                                      width: 20.w,
                                      child: Center(
                                        child: Text(
                                          "%",
                                          style: TextStyle(color: Colors.white, fontSize: 14.sp),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 10.w,
                                    ),
                                    Text("Free Delivery",style: TextStyle(
                                      fontSize: 13.sp
                                    ),)
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                        Padding(
                          padding: EdgeInsets.fromLTRB(0.r, 8.r, 0.r, 0.r),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  InkWell(
                                    onTap:(){
                                      WishListData.Decreement(index);
                                    },
                                    child: Container(
                                      height: 35.h,
                                      width: 35.w,
                                      child: Icon(
                                        Icons.remove,
                                        color: Colors.white,
                                        size: 30.sp,
                                      ),
                                      decoration: BoxDecoration(
                                          color: Colors.grey,
                                          borderRadius: BorderRadius.circular(5)),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 8.w,
                                  ),
                                  Container(
                                    height: 35.h,
                                    width: 35.w,
                                    child: Center(
                                      child: Text(
                                        WishListData.itemLists[index]['add'].toString(),
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 20.sp,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                    decoration: BoxDecoration(
                                        color: Colors.grey.shade300,
                                        borderRadius: BorderRadius.circular(5)),
                                  ),
                                  SizedBox(
                                    width: 8.w,
                                  ),
                                  InkWell(
                                    onTap: (){
                                      WishListData.Increement(index);
                                    },
                                    child: Container(
                                      height: 35.h,
                                      width: 35.w,
                                      child: Icon(
                                        Icons.add,
                                        color: Colors.white,
                                        size: 30.sp,
                                      ),
                                      decoration: BoxDecoration(
                                          color: Colors.red,
                                          borderRadius: BorderRadius.circular(5.r)),
                                    ),
                                  ),  SizedBox(
                                    width: 8.w,
                                  ),

                                ],
                              ),
                              ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                      backgroundColor: Colors.red),
                                  onPressed: () {},
                                  child: Text("Add to Cart", style: TextStyle(fontSize: 14.sp),))
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),



                Positioned(
                  right: 10,
                    top: 20,
                    child: InkWell(
                      onTap: (){
                        WishListData.removeToWishlist(WishListData.wishlist[index]);
                      },
                      child: Container(
                        height: 35.h,
                        width: 35.w,
                        child: WishListData.wishlist[index]["isFavorite"]?Icon(
                          Icons.delete,
                          color: Colors.red,
                          size: 30.sp,
                        ):Icon(Icons.delete,color: Colors.green,size: 30.sp,),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(5.r)),
                      ),
                    )
                )
              ],
            ),
          );
        },
      ),
    );
  }
}



