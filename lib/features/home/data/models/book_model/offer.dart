import 'package:equatable/equatable.dart';

import 'list_price.dart';
import 'retail_price.dart';

class Offer extends Equatable {
	final num? finskyOfferType;
	final ListPrice? listPrice;
	final RetailPrice? retailPrice;
	final bool? giftable;

	const Offer({
		this.finskyOfferType, 
		this.listPrice, 
		this.retailPrice, 
		this.giftable, 
	});

	factory Offer.fromJson(Map<String, dynamic> json) => Offer(
				finskyOfferType: num.tryParse(json['finskyOfferType'].toString()),
				listPrice: json['listPrice'] == null
						? null
						: ListPrice.fromJson(Map<String, dynamic>.from(json['listPrice'])),
				retailPrice: json['retailPrice'] == null
						? null
						: RetailPrice.fromJson(Map<String, dynamic>.from(json['retailPrice'])),
				giftable: json['giftable']?.toString().contains("true"),
			);

	Map<String, dynamic> toJson() => {
				if (finskyOfferType != null) 'finskyOfferType': finskyOfferType,
				if (listPrice != null) 'listPrice': listPrice?.toJson(),
				if (retailPrice != null) 'retailPrice': retailPrice?.toJson(),
				if (giftable != null) 'giftable': giftable,
			};

	@override
	List<Object?> get props {
		return [
				finskyOfferType,
				listPrice,
				retailPrice,
				giftable,
		];
	}
}
