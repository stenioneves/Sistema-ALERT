package org.alert.daos;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import org.alert.models.Morador;
import org.alert.models.Publicacao;
import org.springframework.stereotype.Repository;

/**
 * Classe para tratamentos de dados da publicação.
 * @author stenio
 *
 */

@Repository
public class PublicacaoDAO {
	@PersistenceContext
	private EntityManager manager;
	
	
	
	public void publicar(Publicacao publicacao){
		manager.persist(publicacao);
	}
	
	public void alterPublicacao (int idPublicacao){
		
	}
	
	public List<Publicacao> listarPublicacao(Morador morador){
		return manager.createQuery("from Publicacao p where p.morador.idMorador=:id"
				  ,Publicacao.class).setParameter("id",morador.getIdMorador())
						  .getResultList();
	}
	
	
	public List<Publicacao> listarPublicacao(){
		return manager.createQuery("select	distinct(p)	from Publicacao p",Publicacao.class).getResultList();
	}
}
