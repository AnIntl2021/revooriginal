class ProductModel {
  String?
      quantity,
      sold,
      date,
      productcategory,
      purchaseprice,
      sellprice,
      cid,
      bid,
      components,
      productname,
      producttype,
      costprice;




  ProductModel({
    this.quantity,
    this.sold,
    this.purchaseprice,
    this.sellprice,
    this.cid,
    this.components,
    this. productname,
    this. costprice,
    this.producttype,
    this.productcategory,
    this.date,
    this.bid
  });

  ProductModel fromJson(Map<String, dynamic> json) {
    return ProductModel(
        quantity: json["quantity"],
        sold: json["sold"],
        purchaseprice: json["purchaseprice"],
        sellprice: json["sellprice"],
        cid: json["cid"],
        components: json["components"],
        productname: json["productname"],
      costprice: json["costprice"],
        producttype:json['producttype'],
      productcategory: json["productcategory"],
      date:json['date'],
      bid:json['bid'],
    );
  }

  toJson(ProductModel json) {
    return {
      'quantity': json.quantity,
      'sold':  json.sold,
      'purchaseprice': json.purchaseprice,
      'sellprice': json.sellprice,
      'cid':   json. cid,
      'components':   json. components,
      'productname':   json. productname,
      'costprice':   json. costprice,
      'producttype' : json.producttype,
      'productcategory':   json. productcategory,
      'date' : json.date,
      'bid' : json.bid
    };
  }

}
