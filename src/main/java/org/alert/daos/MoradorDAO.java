package org.alert.daos;

import javax.persistence.EntityManager;
import javax.persistence.NoResultException;
import javax.persistence.PersistenceContext;

import org.alert.models.Morador;
import org.springframework.stereotype.Repository;
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
	// Verificado que o Hibernete lança um exceção quando consulta não retorna dados, logo esse métedo lança a exceção para a classe que que o chamou Autenticação
	public Morador consultarMorador( Morador morador)throws NoResultException{
	
		 
		  return manager.createQuery("from Morador m where m.emailMorador=:email"
		  ,Morador.class).setParameter("email",morador.getEmailMorador())
				  .getSingleResult();
		 
		  
		
	}
	
}
