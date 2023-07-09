package springmvc.dao;

import java.util.List;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import springmvc.model.Product;

@Component
public class ProductDao {
	
	@Autowired
	private HibernateTemplate hibernateTemplate;
	
	//create
	@Transactional
	public void createProduct(Product product)
	{
		//this.hibernateTemplate.save(product);
		this.hibernateTemplate.saveOrUpdate(product);
	}
	
	@Transactional
	public void updateProduct(Product product)
	{
		//this.hibernateTemplate.save(product);
		this.hibernateTemplate.update(product);
	}
	
	//get all products
	public List<Product> getProducts()
	{
		List<Product> products = this.hibernateTemplate.loadAll(Product.class);
		return products;
	}
	
	//delete the single product
	@Transactional
	public void deleteProduct(Long pid)
	{
		Product p = this.hibernateTemplate.load(Product.class, pid);
		this.hibernateTemplate.delete(p);
	}
	
	//get the single products
	public Product getProduct(Long pid)
	{
		return this.hibernateTemplate.get(Product.class, pid);
	}

}
