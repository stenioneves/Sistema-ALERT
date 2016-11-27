package org.alert.daos;

import javax.persistence.EntityManager;
import javax.persistence.NoResultException;
import javax.persistence.PersistenceContext;

import org.alert.models.AdministradorGeral;
import org.springframework.stereotype.Repository;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * Classe para tratamentos de dados do Administrador de Grupo.
 * @author stenio
 *
 */
 @Repository
public class AdministradorGeralDAO {
     @PersistenceContext
	 private EntityManager manager;
     
     
     public AdministradorGeral consulta( AdministradorGeral administradorGeral)throws NoResultException{
    	 
    	return  manager.createQuery("from AdministradorGeral ag where ag.matriculaFuncional=:mat",AdministradorGeral.class)
    	 .setParameter("mat",administradorGeral.getMatriculaFuncional()).getSingleResult();
     }
     
     
}
