package com.kurly.marketkurly.model.product;

import com.kurly.marketkurly.domain.ProductHashtag;

public interface ProductHashtagDAO {
	public void insert(ProductHashtag productHashtag);
	public void deleteByProductId(int product_id);
}
