package org.alert.controllers;

import javax.transaction.Transactional;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
/**
 * Classe de controle da views principal.
 * @author stenio neves
 *
 */
@Controller
@Transactional
@RequestMapping("/principal")
public class PrincipalController {
	
	@RequestMapping(method=RequestMethod.GET)
	public ModelAndView inicio(){
		ModelAndView modelAndView = new ModelAndView("principal");
		return modelAndView;
	}

	
}
