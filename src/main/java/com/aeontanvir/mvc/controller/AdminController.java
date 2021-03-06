package com.aeontanvir.mvc.controller;

import java.io.File;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;

import com.aeontanvir.mvc.dao.ProductDao;
import com.aeontanvir.mvc.model.Product;

@Controller
public class AdminController {
	
	private Path path;
	
	@Autowired
	private ProductDao productDao;
	
	
	@RequestMapping("/admin")
	public String adminPage(){
		return "admin";
	}
	
	@RequestMapping("/admin/productInventory")
	public String productInventory(Model model){
		List<Product> products = productDao.getProductList();
		model.addAttribute("products",products);
		
		return "productInventory";
	}
	
	@RequestMapping("/admin/productInventory/addProduct")
	public String addProduct(Model model){
		Product product = new Product();
		product.setProductCategory("mobile");
		product.setProductCondition("new");
		product.setProductStatus("active");
		model.addAttribute("product",product);
		return "addProduct";
	}
	
	@RequestMapping(value = "/admin/productInventory/addProduct", method = RequestMethod.POST)
	public String addProductPost(@Valid @ModelAttribute("product") Product product, BindingResult result, HttpServletRequest request){
        if(result.hasErrors()){
            return "addProduct";
        }
		
		productDao.addProduct(product);
		
		// productImage dir and write code
		MultipartFile productImage = product.getProductImage();
		String rootDirectory = request.getSession().getServletContext().getRealPath("/");
		path = Paths.get(rootDirectory+"\\WEB-INF\\resources\\images\\"+product.getProductId()+".jpg");
		if(productImage !=null && !productImage.isEmpty()){
			try {
				productImage.transferTo(new File(path.toString()));
			} catch (Exception e) {
				e.printStackTrace();
				//System.out.println("Images failed");
				throw new RuntimeException("Product image saving failed", e);
				
			}
		}
		
		return "redirect:/admin/productInventory";
	}
	
	@RequestMapping(value = "/admin/productInventory/deleteProduct/{id}")
	public String deleteProduct(@PathVariable int id, Model model, HttpServletRequest request){
		// productImage dir and delete file
        String rootDirectory = request.getSession().getServletContext().getRealPath("/");
        path = Paths.get(rootDirectory + "\\WEB-INF\\resources\\images\\" + id + ".jpg");
        if(Files.exists(path)){
            try {
                Files.delete(path);
            } catch (Exception ex){
                ex.printStackTrace();
            }
        }
		
		productDao.deleteProduct(productDao.getProductById(id));
		
		return "redirect:/admin/productInventory";
	}
	
	@RequestMapping(value = "/admin/productInventory/editProduct/{id}")
	public String editProduct(@PathVariable int id, Model model){
		
		Product product = productDao.getProductById(id); 
		model.addAttribute(product);
		return "editProduct";
	}
	
	@RequestMapping(value = "/admin/productInventory/editProduct", method = RequestMethod.POST)
	public String editProductPost(@Valid @ModelAttribute("product") Product product, BindingResult result, HttpServletRequest request){
        
        if(result.hasErrors()){
            return "editProduct";
        }
		
		MultipartFile productImage = product.getProductImage();
        String rootDirectory = request.getSession().getServletContext().getRealPath("/");
        path = Paths.get(rootDirectory + "\\WEB-INF\\resources\\images\\" + product.getProductId() + ".jpg");

        if(productImage != null && !productImage.isEmpty()){
            try {
                productImage.transferTo(new File(path.toString()));
            } catch (Exception ex){
                ex.printStackTrace();
                throw new RuntimeException("Product image saving failed", ex);
            }
        }

        productDao.editProduct(product);

        return "redirect:/admin/productInventory";
	}
	
}
