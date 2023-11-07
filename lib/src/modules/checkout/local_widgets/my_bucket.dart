import '../checkout.dart';

class MyBucket extends StatefulWidget {
  const MyBucket({super.key});

  @override
  State<MyBucket> createState() => _MyBucketState();
}

class _MyBucketState extends State<MyBucket> {
  @override
  Widget build(BuildContext context) {
    final ItemData = Provider.of<HomeController>(context);
    return Padding(
      padding: EdgeInsets.fromLTRB(8.r, 0.r, 8.r, 0.r),
      child: ListView.builder(
          itemCount: ItemData.AddCartLists.length,
          itemBuilder: (context, index) {
            return Card(
                child: Stack(
                  children: [
                    Column(
                      children: [
                        Row(
                          children: [
                            Stack(
                              alignment: Alignment.bottomCenter,
                              children: [
                                Padding(
                                  padding: EdgeInsets.fromLTRB(16.r, 16.r, 16.r, 16.r),
                                  child: Container(
                                    height: 100.w,
                                    width: 120.w,
                                    decoration: BoxDecoration(
                                        image: DecorationImage(
                                            image: NetworkImage(
                                              ItemData.AddCartLists[index]
                                              ['item_pic'],
                                            ),
                                            fit: BoxFit.fill),
                                        borderRadius: BorderRadius.circular(5.r)
                                    ),
                                  ),
                                ),
                                Positioned(
                                  child: Container(
                                    height: 30.h,
                                    width: 68.w,
                                    decoration: BoxDecoration(
                                        color: Colors.orange,
                                        borderRadius: BorderRadius.circular(8.r)),
                                    child: Center(
                                      child: Text(
                                        "Left ${ItemData.AddCartLists[index]['item_left']}",
                                        style: TextStyle(
                                            fontSize: 15.sp,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white),
                                      ),
                                    ),
                                  ),),
                              ],
                            ),
                            SizedBox(
                              width: 2.w,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  ItemData.AddCartLists[index]['item_name'],
                                  style:
                                  TextStyle(fontSize: 18.sp, color: Colors.black),
                                ),
                                SizedBox(
                                  height: 5.h,
                                ),
                                Text(
                                  ItemData.AddCartLists[index]['item_subname'],
                                  style: TextStyle(fontSize: 14.sp),
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
                                      ItemData.AddCartLists[index]['special_price'],
                                      style: TextStyle(
                                          fontSize: 14.sp,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    SizedBox(
                                      width: 8.w,
                                    ),
                                    Text(
                                      ItemData.AddCartLists[index]['regular_price'],
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
                                          borderRadius: BorderRadius.circular(50)),
                                      height: 20.w,
                                      width: 20.w,
                                      child: Center(
                                        child: Text(
                                          "%",
                                          style: TextStyle(color: Colors.white, fontSize: 12.sp),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 10.w,
                                    ),
                                    Text("Free Delivery")
                                  ],
                                ),
                              ],
                            )
                          ],
                        ),
                        Padding(
                          padding: EdgeInsets.fromLTRB(16.r, 5.r, 16.r, 8.r),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Container(
                                    height: 27.h,
                                    width: 30.w,
                                    child: Icon(
                                      Icons.remove,
                                      color: Colors.white,
                                      size: 30.sp,
                                    ),
                                    decoration: BoxDecoration(
                                        color: Colors.grey,
                                        borderRadius: BorderRadius.circular(5.r)),
                                  ),
                                  SizedBox(
                                    width: 15.w,
                                  ),
                                  Container(
                                    height: 27.h,
                                    width: 30.w,
                                    child: Center(
                                        child: Text(
                                          "0",
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 20.sp,
                                              fontWeight: FontWeight.bold),
                                        )),
                                    decoration: BoxDecoration(
                                        color: Colors.grey.shade300,
                                        borderRadius: BorderRadius.circular(5.r)),
                                  ),
                                  SizedBox(
                                    width: 15.w,
                                  ),
                                  Container(
                                    height: 27.h,
                                    width: 30.w,
                                    child: Icon(
                                      Icons.add,
                                      color: Colors.white,
                                      size: 30.sp,
                                    ),
                                    decoration: BoxDecoration(
                                        color: Colors.red,
                                        borderRadius: BorderRadius.circular(5.r)),
                                  ),
                                ],
                              ),
                              ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                      backgroundColor: Colors.red),
                                  onPressed: () {},
                                  child: Text("Add to Cart",
                                    style: TextStyle(
                                      fontSize: 15.sp
                                    ),
                                  ))
                            ],
                          ),
                        )
                      ],
                    ),

                    Positioned(
                        right: 10,
                        top: 15,
                        child: InkWell(
                          onTap: (){
                            ItemData.removeToAddCart(ItemData.AddCartList[index]);
                          },
                          child: Container(
                            height: 35.w,
                            width: 35.w,
                            child: ItemData.AddCartList[index]["isAddToCart"]?Icon(
                              Icons.delete,
                              color: Colors.red,
                              size: 25.sp,
                            ):Icon(Icons.delete,color: Colors.green,),
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(5.r)),
                          ),
                        )
                    )

                  ],
                ),

            );
          }),
    );
  }
}




