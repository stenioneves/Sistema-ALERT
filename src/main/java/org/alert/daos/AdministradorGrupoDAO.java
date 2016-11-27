package org.alert.daos;

import javax.persistence.EntityManager;
import javax.persistence.NoResultException;
import javax.persistence.PersistenceContext;

import org.alert.models.AdministradorGrupo;
import org.alert.models.Morador;
import org.springframework.stereotype.Repository;
@Repository
public class AdministradorGrupoDAO {
	 @PersistenceContext
	private EntityManager manager;

	 
	 
	 public  AdministradorGrupo admgrupo(Morador morador){
		try{
		 
		 return manager.createQuery("from AdministradorGrupo ag  where ag.grupo.idGrupo=:id ",AdministradorGrupo.class).setParameter("id", morador.getGrupo().getIdGrupo()).getSingleResult();
		}catch(NoResultException e){
			
			return new AdministradorGrupo();
		}
	 }
	  public void save(Morador morador){
		 manager.createNativeQuery("INSERT INTO administradorgrupo(idMorador,idGrupo) VALUES(:id, :ig);").setParameter("id",morador.getIdMorador())
		 .setParameter("ig", morador.getGrupo().getIdGrupo())
		 
		 .executeUpdate();
		 
	  }
	 
	  public boolean isAdm(Morador morador){
		  
	 int i =manager.createNativeQuery("SELECT * FROM administradorgrupo where idMorador=:id").setParameter("id",morador.getIdMorador())
		 .getMaxResults();
	 if (i==1){
		 return true;
	 } else
		 return false;
	 
	  }
	  
	  public void excluirAdm(Morador m){
		  
		  manager.createNativeQuery("DELETE FROM administradorGrupo WHERE idMorador=:id").setParameter("id", m.getIdMorador())
		  .executeUpdate();
	  }
}

