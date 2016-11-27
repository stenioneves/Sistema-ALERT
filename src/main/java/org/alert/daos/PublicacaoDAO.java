package org.alert.daos;

import java.util.Calendar;
import java.util.Date;
import java.util.GregorianCalendar;
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
		Calendar calendar = new GregorianCalendar();
		Date date = new Date();
		calendar.setTime(date);
		
		publicacao.setDataPublicacao((calendar.getTime()));
		manager.persist(publicacao);
	}
	
	public void editarPublicacao(Publicacao publicacao){
	 manager.createNativeQuery("UPDATE publicacao SET tituloPublicacao=:titulo,textoPublicacao=:texto WHERE idPublicacao=:id")
	 .setParameter("titulo",publicacao.getTituloPublicacao())
	 .setParameter("texto",publicacao.getTextoPublicacao())
	 .setParameter("id", publicacao.getIdPublicacao())
	 .executeUpdate();
		
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
	
	public void excluirPubId( int id){
		 
		manager.createNativeQuery("DELETE FROM publicacao WHERE idPublicacao=:id ")
		.setParameter("id", id).executeUpdate();
		
	}
}
