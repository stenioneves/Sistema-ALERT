package org.alert.controllers;

import javax.persistence.NoResultException;
import javax.servlet.http.HttpSession;
import javax.transaction.Transactional;
import javax.validation.Valid;

import org.alert.daos.MoradorDAO;
import org.alert.models.Morador;
import org.alert.validation.LoginValidator;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
/**
 * Classe de Auntenticaçãodo sistema.
 * @author stenio
 *
 */
@Controller
@Transactional
public class AutenticacaoController {
	@Autowired
	 private MoradorDAO moradorDAO;
	/**
	 * Método para indicar ao Spring qual validar irá usar.
	 * @param binder
	 */
	
	@InitBinder
	protected void initBinder(WebDataBinder binder){
		binder.setValidator(new LoginValidator());
	}
	
	/**
	 * Método para exibir a tela de login
	 * @return login
	 */
	
	@RequestMapping("login")
	public ModelAndView formLogin(Morador morador){
		ModelAndView modelAndView = new ModelAndView("login");
		return modelAndView ;
	}
	/**
	 * Método para autenticação no sistema
	 * @param morador
	 * @return principal
	 */
	
	
	@RequestMapping(value="efetuarLogin",method=RequestMethod.POST)
	public  ModelAndView efetuarLogin(@Valid Morador morador,BindingResult bindingResult,RedirectAttributes redirectAttributes, HttpSession sessao){
		//Questões de segurança.
		//Verifica se não erro de preenchimento no formulario.
		if(bindingResult.hasErrors())
			return formLogin(morador);
		try{
			//Trecho monitorado devido a exceção do Hibernate.
			
		Morador moradorc=moradorDAO.consultarMorador(morador);//consulta no banco de dadospara verificar o usuário
		
		
		// envia para o DAO onde irá obter a confimação método boolean e com if. Método Hard
				if(morador.getEmailMorador().equals(moradorc.getEmailMorador()) && morador.getSenhaMorador().equals(moradorc.getSenhaMorador()))
				{		
					
					sessao.setAttribute("morador", moradorc);
					return new ModelAndView("redirect:/principal");
				}
				else
				{ // Senha inválida 
					redirectAttributes.addFlashAttribute("erro"," <div class=\"alert alert-danger\"> Senha inválida </div>");
					return new ModelAndView("redirect:login");
				}
		}catch(NoResultException e){
			// Usuário inexistente.
			redirectAttributes.addFlashAttribute("erro"," <div class=\"alert alert-danger\">Usuário não encontrado no sistema </div>");
			return new ModelAndView("redirect:login");
		}
		
 }
	
	
	
	

}
