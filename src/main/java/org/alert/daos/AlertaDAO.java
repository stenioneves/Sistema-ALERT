package org.alert.daos;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import org.alert.models.Alerta;
import org.springframework.stereotype.Repository;

/**
 * Classe para tratamento do dados de Alerta.
 * @author stenio
 *
 */
@Repository
public class AlertaDAO {
	@PersistenceContext
	private EntityManager manager;
	
	
	public void EmitirAlerta(Alerta alerta){
		manager.persist(alerta);
	}

	public List<Alerta> listarAlerta(){
		return manager.createQuery("select distinct(a) Alerta a",Alerta.class).getResultList();
	}
}
