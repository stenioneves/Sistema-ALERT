package org.alert.controllers;

import java.util.List;

import org.alert.daos.MoradorDAO;
import org.alert.models.Morador;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/grupo")
@SessionAttributes("morador")
public class GrupoController {
	
	@Autowired
	private MoradorDAO moradorDAO;
	
	@RequestMapping("/selecionarGrupo")
	public String selecionarGrupo(){
		return "selecionargrupo";
	}

	@RequestMapping("/admgrupo")
	public ModelAndView admGrupo(){
		ModelAndView andView = new ModelAndView("admgrupo");
		return andView;
	}
	
	@RequestMapping("/meugrupo")
	public ModelAndView meugrupo(@ModelAttribute("morador")Morador morador){
		ModelAndView andView =new ModelAndView("meugrupo");
		andView.addObject("moradorgrupo", morador);
		return andView;
	}
	
	@RequestMapping(value="listarMoradorGrupo",method=RequestMethod.GET)
	@ResponseBody
	public  List<Morador> listarMoradorGrupo(@ModelAttribute("morador")Morador morador){
		 return moradorDAO.consultarMoradorGrupo(morador);
		
	}
}
