package org.alert.controllers;

import javax.transaction.Transactional;
import javax.validation.Valid;

import org.alert.models.Morador;
import org.alert.validation.LoginValidator;
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
	public ModelAndView formLogin(){
		ModelAndView modelAndView = new ModelAndView("login");
		return modelAndView ;
	}
	/**
	 * Método para autenticação no sistema
	 * @param morador
	 * @return principal
	 */
	
	
	@RequestMapping(value="efetuarLogin",method=RequestMethod.POST)
	public  ModelAndView efetuarLogin(@Valid Morador morador,BindingResult bindingResult,RedirectAttributes redirectAttributes){
		//Questões de segurança.
		if(bindingResult.hasErrors())
			return formLogin();
	 
		// envia para o DAO onde irá obter a confimação método boolean e com if.
		if(morador.getEmailMorador().equals("stenio@teste.com")&& (morador.getSenhaMorador().equals("123456")))
					
			return new ModelAndView("redirect:/principal");
		
		else
		{
			redirectAttributes.addFlashAttribute("erro"," <div class=\"alert alert-danger\">Usuário ou senha inválido </div>");
			return new ModelAndView("redirect:login");
		}
 }
	
	
	
	

}
