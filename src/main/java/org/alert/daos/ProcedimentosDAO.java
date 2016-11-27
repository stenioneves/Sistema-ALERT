package org.alert.daos;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import org.alert.models.Procedimentos;
import org.springframework.stereotype.Repository;

/**
 * Classe para tratamentos de dados para procemdimentos.
 * @author stenio
 *
 */
@Repository
public class ProcedimentosDAO {
	@PersistenceContext
	private EntityManager manager;
	
	
	public void criarProcedimento(Procedimentos procedimento ){
		manager.persist(procedimento);
		
	}
    public List<Procedimentos> listarProcedimentos(){
    	return manager.createQuery("select	distinct(e) from Procedimentos e", Procedimentos.class).getResultList();
    	
    }
}
