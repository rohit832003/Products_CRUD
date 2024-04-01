package controller;





import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import crudDao.ProductDao;
import crudModel.Product;


@Controller
public class MainCrudCntroller {
	@Autowired
	private ProductDao productDao;
	
//	
	@RequestMapping("/hm")
	public String home(Model m)
	{
		List<Product> products= productDao.getProducts();
		m.addAttribute("title", "View PRoducts");
		m.addAttribute("products",products);
		
		return "index1";
		
		
	}
	
	@RequestMapping("/addp")
	public String addProduct(Model m,String nme)
	{
		
		m.addAttribute("title", "shubrat Product");
		
		
		return "addProductFrom";
		
		
	}
	@RequestMapping("/handle_Product")
	public String insertData(@ModelAttribute Product prod)
	{
		System.out.println(prod);
		productDao.saveProduct(prod);
		
	
		
		return "redirect:/hm";
		
		
	}
	@RequestMapping("/deleteall")
	public String deleteall()
	{
		productDao.deletall();
		return "redirect:/hm";
		
	}
	@RequestMapping("/delete/{productID}")
	public String deleteProduct(@PathVariable("productID") int productID)
	{
		productDao.deleteProduct(productID);	
		return "redirect:/hm";	
	}
	
	@RequestMapping("/update/{productID}")
	public String updateProduct(@PathVariable("productID") int productID,Model m)
	{
		Product product=productDao.getProduct(productID);
		m.addAttribute("product",product);
		return "updateForm";	
	}

	
	
	

}
