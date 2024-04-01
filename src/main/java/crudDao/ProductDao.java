package crudDao;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Component;

import crudModel.Product;

@Component//Aautomatically creates a bean in xml
public class ProductDao {
	
@Autowired
private HibernateTemplate hibernateTemplate;
	
	@Transactional // is used only in case of crete,update.delete operation...not for select/get operation
	public void saveProduct(Product product)
	{
		this.hibernateTemplate.saveOrUpdate(product);
	}
	
	public List<Product> getProducts()
	{
		List<Product> products=this.hibernateTemplate.loadAll(Product.class);
		return products;
		
	}
	@Transactional
	public void deleteProduct(int id)
	{

     Product p = this.hibernateTemplate.load(Product.class, id);
     this.hibernateTemplate.delete(p);
		
	}

	public Product getProduct(int i) {
		// TODO Auto-generated method stub
		Product p = this.hibernateTemplate.get(Product.class, i);
		return p;
	}
	@Transactional
	public void deletall()
	{
		this.hibernateTemplate.deleteAll(getProducts());
	}

}
