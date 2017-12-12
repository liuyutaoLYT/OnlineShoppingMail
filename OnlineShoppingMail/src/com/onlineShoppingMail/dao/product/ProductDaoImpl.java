package com.onlineShoppingMail.dao.product;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

import javax.annotation.Resource;
import javax.persistence.Query;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.stereotype.Repository;

import com.onlineShoppingMail.entity.ProductEntity;
import com.onlineShoppingMail.entity.cartEntity;
import com.onlineShoppingMail.entity.indentEntity;
import com.onlineShoppingMail.entity.userentity;



@Repository
public class ProductDaoImpl {
	@Resource
	private SessionFactory sessionFactory;
	public List<ProductEntity> findAll(){
		List<ProductEntity> l =  this.sessionFactory.openSession().createQuery("from ProductEntity").list();
		return l;
	}
	public List<userentity> findAlluser(){
		List<userentity> l =  this.sessionFactory.openSession().createQuery("from userentity").list();
		return l;
	}
	public List<cartEntity> findAllCarEntity(){
		List<cartEntity> l =  this.sessionFactory.openSession().createQuery("from cartEntity").list();
		return l;
	}
	public ProductEntity findById(Integer id) {	
		ProductEntity p = (ProductEntity)this.sessionFactory.openSession().createQuery("from ProductEntity where productid = ?").setParameter(0, id).uniqueResult();
		
		return p;
	}
	public cartEntity findBycartId(Integer id) {	
		cartEntity p = (cartEntity)this.sessionFactory.openSession().createQuery("from cartEntity where cartid = ?").setParameter(0, id).uniqueResult();
		
		return p;
	}
	
	public List<ProductEntity> findByName(String productname) {	
		List<ProductEntity> l = (List<ProductEntity>)this.sessionFactory.openSession().createQuery("from ProductEntity where productname like '%"+productname+"%'").list();
		
		
		return  l;
	}
	public List<userentity> findByusername(String username) {	
		List<userentity> l = (List<userentity>)this.sessionFactory.openSession().createQuery("from userentity where username like '%"+username+"%'").list();
		
		
		return  l;
	}
	public indentEntity findByUserIdi(Integer userid) {	
		indentEntity i = (indentEntity)this.sessionFactory.openSession().createQuery("from indentEntity where userid = ?").setParameter(0, userid).uniqueResult();
		
		return i;
	}
	public List<cartEntity> findByUserId(Integer userid) {	
		List<cartEntity> c = (List<cartEntity>)this.sessionFactory.openSession().createQuery("from cartEntity where userid = ?").setParameter(0, userid).list();
		
		return c ;
	}
	public userentity findByUserid1(Integer id) {	
		userentity p = (userentity)this.sessionFactory.openSession().createQuery("from userentity where userid = ?").setParameter(0, id).uniqueResult();
		
		return p;
	}
	public cartEntity findByTwoId(int productid,int userid){
		cartEntity c = (cartEntity) this.sessionFactory.openSession().createQuery("from cartEntity where productid = ? and userid = ?").setParameter(0, productid).setParameter(1, userid).uniqueResult();
		return c;
	}
	public void save(cartEntity cartentity) throws Exception {
		Session session = this.sessionFactory.openSession();
		Transaction tx = session.beginTransaction();
		
		session.save(cartentity);
		
		tx.commit();

		
	}
	public void savei(indentEntity indentEntity) throws Exception {
		Session session = this.sessionFactory.openSession();
		Transaction tx = session.beginTransaction();
		
		session.save(indentEntity);
		
		tx.commit();

		
	}
	public void addproductlist(ProductEntity productEntity) throws Exception {
		Session session = this.sessionFactory.openSession();
		Transaction tx = session.beginTransaction();
		
		session.save(productEntity);
		
		tx.commit();
		
 
	}
	public void  update(cartEntity c){
		Session session = this.sessionFactory.openSession();
		Transaction tx = session.beginTransaction();
		
		session.update(c);
		
		tx.commit();
	}
	public void  updateproduct(ProductEntity p){
		Session session = this.sessionFactory.openSession();
		Transaction tx = session.beginTransaction();
		
		session.update(p);
		
		tx.commit();
	}
	public void  updatei(indentEntity i){
		Session session = this.sessionFactory.openSession();
		Transaction tx = session.beginTransaction();
		
		session.update(i);
		
		tx.commit();
	}
	public void delete (cartEntity c ){
		Session session = this.sessionFactory.openSession();
		Transaction tx = session.beginTransaction();
		
		session.delete(c);
		
		tx.commit();
	}
	public void deleteproduct (ProductEntity p ){
		Session session = this.sessionFactory.openSession();
		Transaction tx = session.beginTransaction();
		
		session.delete(p);
		
		tx.commit();
	}
	public void deleted (cartEntity c ){
		Session session = this.sessionFactory.openSession();
		Transaction tx = session.beginTransaction();
		
		session.delete(c);
		
		tx.commit();
	}
	public void deleteu (userentity c ){
		Session session = this.sessionFactory.openSession();
		Transaction tx = session.beginTransaction();
		
		session.delete(c);
		
		tx.commit();
	}

	public void empty (List<cartEntity> lce ){
		for(cartEntity c:lce){
			Session session = this.sessionFactory.openSession();
			Transaction tx = session.beginTransaction();
			
			session.delete(c);
			
			tx.commit();
		}
	}
	public void emptypro (List<ProductEntity> lce ){
		for(ProductEntity c:lce){
			Session session = this.sessionFactory.openSession();
			Transaction tx = session.beginTransaction();
			
			session.delete(c);
			
			tx.commit();
		}
	}
	public List<ProductEntity> findByPage(int pageNum, int pageSize){
		try{
			List<ProductEntity> list=(List<ProductEntity>) this.sessionFactory.openSession().createQuery("from ProductEntity").setFirstResult((pageNum-1)*pageSize).setMaxResults(pageSize).list();
			
			return list;
		}catch(Exception e){
			e.printStackTrace();
			return null;
		}
	}
	public int findCountByPage(){
		
		Query count = this.sessionFactory.openSession().createQuery("select count(*) from ProductEntity");
		return ( (Number)((org.hibernate.query.Query) count).uniqueResult()).intValue();

		
			
	
	}
}
