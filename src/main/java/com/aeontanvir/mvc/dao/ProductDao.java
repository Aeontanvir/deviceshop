package com.aeontanvir.mvc.dao;

import java.util.ArrayList;
import java.util.List;

import com.aeontanvir.mvc.model.Product;

public class ProductDao {
	
	private List<Product> productList;
	
	public List<Product> getProductList(){
		Product product1 = new Product();
		product1.setProductName("Nokia 1100c");
		product1.setProductCategory("Mobile");
		product1.setProductDescription("Nice Mobile");
		product1.setProductPrice(4000);
		product1.setProductCondition("New");
		product1.setProductStatus("Active");
		product1.setUnitInStock(11);
		product1.setProductManufacturer("Nokia");
		
		Product product2 = new Product();
		product2.setProductName("Nokia 1800");
		product2.setProductCategory("Mobile");
		product2.setProductDescription("Nice Mobile");
		product2.setProductPrice(4000);
		product2.setProductCondition("New");
		product2.setProductStatus("Active");
		product2.setUnitInStock(11);
		product2.setProductManufacturer("Nokia");
		
		Product product3 = new Product();
		product3.setProductName("Nokia 2600");
		product3.setProductCategory("Mobile");
		product3.setProductDescription("Nice Mobile");
		product3.setProductPrice(4000);
		product3.setProductCondition("New");
		product3.setProductStatus("Active");
		product3.setUnitInStock(11);
		product3.setProductManufacturer("Nokia");
		
		productList = new ArrayList<Product>();
		productList.add(product1);
		productList.add(product2);
		productList.add(product3);
		
		
		return productList;
	}
}
