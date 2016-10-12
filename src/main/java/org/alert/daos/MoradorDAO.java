package org.alert.daos;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;

import org.alert.models.Morador;
import org.springframework.stereotype.Repository;

import antlr.CodeGenerator;
/***
 *  Classe Data Object Access para entidade Morador.
 * @author stenio neves
 *
 */

@Repository
public class MoradorDAO {
	@PersistenceContext
	private EntityManager manager;
	
	public void cadastrar(Morador morador){
		
		manager.persist(morador);
	}
	
    //public List<Morador> ListarMorador(){
	//}
	
	
	/**
	 *  Método de consulta morador em desenvolvimento;
	 * @param morador
	 * @return morador
	 */
	public Morador consultarMorador( Morador morador){
	
		  try{
		  return manager.createQuery("select distinct(m) from Morador m where emailMorador="+morador.getEmailMorador()
		  +"and"+ morador.getSenhaMorador(),Morador.class)
				  .getSingleResult();
		 
		  }catch(NullPointerException e){ // Captura de exceção somente para o teste Unitário
			  System.out.println("Voce está com serios problemas para consulta !!!!");
			  return  morador;
		  }
		
	}
	
}
