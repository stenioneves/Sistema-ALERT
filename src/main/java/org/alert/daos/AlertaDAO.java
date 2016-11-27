package org.alert.daos;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import org.alert.models.Alerta;
import org.alert.models.Morador;
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
	
	@SuppressWarnings("unchecked")
	public List<Alerta>listarAlertaGrupo(Morador adm){
		
		 return  manager.createNativeQuery("SELECT * FROM alerta  where idMoradorAdministradorGrupo=:id",Alerta.class)
		.setParameter("id", adm.getIdMorador()).getResultList();
	}
	
	public void excluirAlertas(Alerta alerta){
		
		manager.createNativeQuery("DELETE FROM alerta WHERE idPublicacao=:id").setParameter("id",alerta.getIdpublicacao())
		.executeUpdate();
	}
}
