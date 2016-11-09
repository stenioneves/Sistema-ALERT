package org.alert.daos;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import org.alert.models.Grupo;
import org.springframework.stereotype.Repository;

/**
 * classe para tratamentos de dados do Grupo.
 * @author stenio
 *
 */
@Repository
public class GrupoDAO {
	
	@PersistenceContext
	private EntityManager manager;
	
	public void criarGrupo(Grupo grupo){
		manager.persist(grupo);
		
		
	}

}
