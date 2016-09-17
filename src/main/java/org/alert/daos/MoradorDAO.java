package org.alert.daos;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import org.alert.models.Morador;
import org.springframework.stereotype.Repository;

import antlr.collections.List;

@Repository
public class MoradorDAO {
	@PersistenceContext
	private EntityManager manager;
	
	public void cadastrar(Morador morador){
		
		manager.persist(morador);
	}
	
    //public List<Morador> ListarMorador(){
	//}
	
}
