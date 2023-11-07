import '../../home/home.dart';

class AllPromos extends StatefulWidget {
  const AllPromos({super.key});

  @override
  State<AllPromos> createState() => _AllPromosState();
}

class _AllPromosState extends State<AllPromos> {

  MySnackBar(message, context){
    ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(backgroundColor:CustomColors.orangeColor,content: Center(child: Text(message,style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),)))
    );

  }@override
  Widget build(BuildContext context) {
    final allPromos = Provider.of<HomeController>(context);
    return Scaffold(
      backgroundColor: CustomColors.fooderPrimary,
      appBar: AppBar(
        centerTitle: true,
        titleSpacing: 0,
        elevation: 0,
        backgroundColor: Colors.white,
        leading: InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: const Icon(
            Icons.arrow_back_ios,
            color: Colors.deepOrange,
          ),
        ),
        title: Text(
          "All Promos",
          style: TextStyle(
              color: CustomColors.blackColor,
              fontWeight: FontWeight.normal,
              fontSize: 22.sp),
        ),
      ),
      body: ListView.builder(
        itemCount: allPromos.itemList.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(top: 8),
            child: Card(
              child: Column(
                children: [
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Stack(
                          clipBehavior: Clip.none,
                          alignment:Alignment.bottomCenter,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(

                                height: 100.w,
                                width: 100.w,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5.r),
                                    image: DecorationImage(
                                        image: NetworkImage(allPromos
                                            .itemList[index]['item_pic']),
                                        fit: BoxFit.cover)),
                              ),
                            ),
                            Positioned(
                              bottom: -1.5,
                              // left: MediaQuery.sizeOf(context).width / 12,
                              child: Container(
                                height: 33.sp,
                                width: 55.sp,
                                decoration: BoxDecoration(
                                  color: CustomColors.stackColor,
                                  borderRadius: BorderRadius.circular(8.r),
                                  border: Border.all(
                                    color: Colors.white,
                                    width: 1.5.w,
                                  ),
                                ),
                                child: Center(
                                  child: Text(
                                    "5 Left",
                                    style: TextStyle(
                                        fontWeight: FontWeight.normal,
                                        color: Colors.white,
                                      fontSize: 12.sp
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        Padding(
                          padding: EdgeInsets.fromLTRB(5.r, 8.r, 0.r, 16.r),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                allPromos.itemList[index]['item_name'],
                                style: TextStyle(
                                    fontWeight: FontWeight.normal,
                                    fontSize: 16.sp),
                              ),
                              SizedBox(height: 5.h),
                              Row(
                                children: [
                                  Text(
                                    allPromos.itemList[index]['special_price'],
                                    style: TextStyle(fontSize: 14.sp),
                                  ),
                                  SizedBox(width: 20.w),
                                  Text(
                                    allPromos.itemList[index]['regular_price'],
                                    style: TextStyle(
                                        decoration: TextDecoration.lineThrough,
                                      fontSize: 13.sp
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(100.r),
                                    child: Container(
                                      child: Center(
                                        child: Text(
                                          "%",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 15.sp),
                                        ),
                                      ),
                                      height: 20.w,
                                      width: 20.w,
                                      decoration:
                                          BoxDecoration(color: Colors.orange),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 10.w,
                                  ),
                                  Text("Discount Delivery up to 3k", style: TextStyle(fontSize: 13.sp),)
                                ],
                              ),
                            ],
                          ),
                        ),
                        Container(
                          height: 40.h,
                          width: 40.w,
                          child: InkWell(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => CheckOutView()));
                            },
                            child: Icon(
                              Icons.favorite_outline,
                              color: Colors.red,
                              size: 25.sp,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          SizedBox(
                            width: 10.w,
                          ),
                          Container(
                            margin: EdgeInsets.fromLTRB(0.r, 0.r, 5.r, 0.r),
                            height: 27.h,
                            width: 30.w,
                            decoration: BoxDecoration(
                                color: Colors.grey,
                                borderRadius: BorderRadius.circular(5.r)),
                            child: Icon(
                              Icons.remove,
                              color: Colors.white,
                              size: 20.sp,
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.fromLTRB(0.r, 0.r, 5.r, 0.r),
                            height: 27.h,
                            width: 30.w,
                            child: Center(
                              child: Text(
                                "${allPromos.itemList[index]['add']}",
                                style: TextStyle(
                                    color: Colors.black, fontSize: 21.sp),
                              ),
                            ),
                            decoration: BoxDecoration(
                              color: Colors.grey.shade300,
                              borderRadius: BorderRadius.circular(5.r),
                            ),
                          ),
                          Container(
                            height: 27.h,
                            width: 30.w,
                            decoration: BoxDecoration(
                              color: CustomColors.orangeColor,
                              borderRadius: BorderRadius.circular(5.r),
                            ),
                            child: Icon(
                              Icons.add,
                              color: Colors.white,
                              size: 20.sp,
                            ),
                          ),
                        ],
                      ),
                      InkWell(
                        onTap: () {
                          MySnackBar("Item Added", context);
                          allPromos.setAddCart(index);
                        },
                        child: Container(
                          margin: EdgeInsets.fromLTRB(0.r, 0.r, 10.r, 0.r),
                          padding: EdgeInsets.all(10.r),
                          height: 35.w,
                          decoration: BoxDecoration(
                            color: CustomColors.orangeColor,
                            borderRadius: BorderRadius.circular(10.r),
                          ),
                          child: Center(
                            child:  allPromos.itemList[index]['isAddToCart']?Icon(Icons.check, color: Colors.white, size: 20.sp,):Text("Add To Cart", style: TextStyle(color: CustomColors.whiteColor, fontSize: 11.sp),),

                          )
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 8.h,
                  )
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
