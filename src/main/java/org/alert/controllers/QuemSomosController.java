package org.alert.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/***
 * Controle da view quem somos
 * @author stenio
 *
 */
@Controller
public class QuemSomosController {
	@RequestMapping("quemsomos")
	public String exibeInfo(){
		return "quemsomos";
		
	}

}
