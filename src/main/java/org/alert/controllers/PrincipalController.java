package org.alert.controllers;

import javax.transaction.Transactional;

import org.alert.models.Morador;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;
/**
 * Classe de controle da views principal.
 * @author stenio neves
 *
 */
@Controller
@Transactional
@RequestMapping("/principal")
@SessionAttributes("morador")
public class PrincipalController {
	
	@RequestMapping(method=RequestMethod.GET)
	public ModelAndView inicio(
			@ ModelAttribute("morador")Morador morador){
		ModelAndView modelAndView = new ModelAndView("principal");
		modelAndView.getModel().put("morador", morador);
		return modelAndView;
	}

	
}
