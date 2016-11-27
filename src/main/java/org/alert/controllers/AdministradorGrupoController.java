package org.alert.controllers;

import javax.transaction.Transactional;

import org.alert.daos.AdministradorGrupoDAO;
import org.alert.daos.MoradorDAO;
import org.alert.models.AdministradorGrupo;
import org.alert.models.Grupo;
import org.alert.models.Morador;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
@Transactional
public class AdministradorGrupoController {

    @Autowired
	private  AdministradorGrupoDAO administradorGrupoDAO;
    @Autowired
    private MoradorDAO moradordao;
	
	
	 @RequestMapping(value ="/teste/{cod}",method=RequestMethod.GET)
    public @ResponseBody Boolean isAdmGrupo(@PathVariable("cod")int cod){
		
		  Morador morador =new Morador();
		  morador.setIdMorador(cod);
		 
			administradorGrupoDAO.isAdm(morador);
		 
		 
    	 return  administradorGrupoDAO.isAdm(morador);
    	
    	
    }
	
	
	 
	
}
