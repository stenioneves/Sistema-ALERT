package org.alert.controllers;

import javax.persistence.NoResultException;
import javax.servlet.http.HttpSession;
import javax.transaction.Transactional;

import org.alert.daos.AdministradorGeralDAO;
import org.alert.models.AdministradorGeral;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.support.SessionStatus;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

@Controller
@Transactional
 @RequestMapping("/adm")
public class AdministradorGeralController {
	
	@Autowired
	private AdministradorGeralDAO administradorGeralDAO;
	
	
	@RequestMapping("/efetuarLogin")
	public ModelAndView efetuarLogin(AdministradorGeral administradorGeral, RedirectAttributes attributes, HttpSession session){
		
		 
		try{
	    
		 AdministradorGeral adm= administradorGeralDAO.consulta(administradorGeral);
		 if((adm.getMatriculaFuncional()== adm.getMatriculaFuncional())&&(adm.getSenhaAdm().equals(administradorGeral.getSenhaAdm()))){
			
			 session.setAttribute("adm", adm);
			 
			 
			 return new ModelAndView("redirect:principal");
			
					 
			 
		 } else{
			 

				attributes.addFlashAttribute("msg", "<div class=\"w3-panel w3-orange w3-card-2\">"
						+ "<p> Senha inválida</p></div>");
				return  new ModelAndView("redirect:login");
		 }
		
		}catch(NoResultException e){
			
			attributes.addFlashAttribute("msg", "<div class=\"w3-panel w3-red w3-card-2\">"
					+ "<p> Desculpa! Essa matricula não existe no sistema</p></div>"
		    
		 );return  new ModelAndView("redirect:login");
		}
		
		
	}
	
	 @RequestMapping("/login")
	public ModelAndView login(){
		ModelAndView andView = new ModelAndView("loginadm");
		return andView;
	}
	
	 
	 @RequestMapping("/principal")
	 public ModelAndView telaPrincipal(HttpSession session,RedirectAttributes attributes){
		 ModelAndView model = new ModelAndView("admsistema");
		 
		 if(session.getAttribute("adm")==null){
			 
			 attributes.addFlashAttribute("msg", "<div class=\"w3-panel w3-red w3-card-2\">"
						+ "<p> Acesso Negado! Logo-se no sistema</p></div>"
			    
			 );return  new ModelAndView("redirect:login");
			 
			 
		 }
		 
		 AdministradorGeral adm =(AdministradorGeral)session.getAttribute("adm");
		 
		 model.getModel().put("adm", adm);
		 
		 return model;
		 
	 }
	 @RequestMapping("/sair")
	 public ModelAndView sair(HttpSession session, SessionStatus status,RedirectAttributes attributes){
		 status.setComplete();
		 session.removeAttribute("adm");
		 attributes.addFlashAttribute("msg", "<div class=\"w3-panel w3-green w3-card-2\">"
					+ "<p> Acesso Negado! Logo-se no sistema</p></div>"
		    
		 );return  new ModelAndView("redirect:login");
		 
	 }

}
