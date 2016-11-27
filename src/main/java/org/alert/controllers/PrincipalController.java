package org.alert.controllers;

import javax.servlet.http.HttpSession;
import javax.transaction.Transactional;

import org.alert.models.Morador;
import org.springframework.stereotype.Controller;
import org.springframework.web.HttpSessionRequiredException;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.bind.support.SessionStatus;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
/**
 * Classe de controle da views principal.
 * @author stenio neves
 *
 */
@Controller
@Transactional
@RequestMapping("/principal")
//@SessionAttributes("morador")
public class PrincipalController{
	
	@RequestMapping(method=RequestMethod.GET)
	public ModelAndView inicio  (
			HttpSession session, RedirectAttributes redirectAttributes){
		ModelAndView modelAndView = new ModelAndView("principal");
		 
		if(session.getAttribute("morador")==null){
			  redirectAttributes.addFlashAttribute("erro", "<div class=\"alert alert-success fade in\">"
						+ "<a href=\"#\" class=\"close\" data-dismiss=\"alert\" aria-label=\"close\">&times;</a><strong>Acesso não autorizado!</strong> "
						+ "Você precisa logar-se para acessa o sistema .</div>"

		  
		  );
			return new ModelAndView("redirect:login");  
		
		}
		Morador morador = (Morador) session.getAttribute("morador");
		
		
		 if(morador.getGrupo()== null){
			modelAndView.addObject("inf", true); 
			 
		 }
		
		
		modelAndView.getModel().put("morador", morador);
		
		return modelAndView;
		
	}
	  @RequestMapping(value="/meuperfil", method= RequestMethod.GET)
	 public ModelAndView meuPerfil(HttpSession session,RedirectAttributes redirectAttributes){
		  if(session.getAttribute("morador")==null){
			  redirectAttributes.addFlashAttribute("erro", "<div class=\"alert alert-success fade in\">"
						+ "<a href=\"#\" class=\"close\" data-dismiss=\"alert\" aria-label=\"close\">&times;</a><strong>Acesso não autorizado!</strong> "
						+ "Você precisa logar-se para acessa o sistema .</div>"

		  
		  );
			return new ModelAndView("redirect:../login");  
			  
		  }
		  Morador morador= (Morador)session.getAttribute("morador");
		  ModelAndView andView= new ModelAndView("meuperfil");
		  andView.getModel().put("morador", morador);
		  return andView;
		 
	 }
	   @RequestMapping("/sair")
	  public ModelAndView sair(HttpSession http,RedirectAttributes redirectAttributes, SessionStatus sessionStatus){
		   sessionStatus.setComplete();
		  http.removeAttribute("morador");
		  redirectAttributes.addFlashAttribute("erro", "<div class=\"alert alert-success fade in\">"
					+ "<a href=\"#\" class=\"close\" data-dismiss=\"alert\" aria-label=\"close\">&times;</a><strong>Deslogado!</strong> "
					+ "Sua sessão foi encerrada.</div>"

	  
	  );
		return new ModelAndView("redirect:../login");  
	  }

	
}
