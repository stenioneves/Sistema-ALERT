package org.alert.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/grupo")
public class GrupoController {
	
	@RequestMapping("/selecionarGrupo")
	public String selecionarGrupo(){
		return "selecionargrupo";
	}

}
