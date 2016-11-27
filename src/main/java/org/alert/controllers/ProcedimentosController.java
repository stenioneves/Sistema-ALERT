package org.alert.controllers;

import javax.transaction.Transactional;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
@Transactional

 @RequestMapping("/procedimentos")
public class ProcedimentosController {
	
	
	
	 @RequestMapping(method=RequestMethod.GET)
	public ModelAndView biblioteca(){
		ModelAndView biblioteca = new ModelAndView("biblioteca");
		return biblioteca;
		
	}
     @RequestMapping("/primeiro")
	public ModelAndView primeiro(){
	 ModelAndView model= new ModelAndView("primeiro");
	 	return model;
	}
     
      @RequestMapping("/incendio")
     public ModelAndView incendio(){
    	 ModelAndView model = new ModelAndView("incendio");
    	 return model;
     }
      
      @RequestMapping("/alagamento")
      public ModelAndView alagamento(){
     	 ModelAndView model = new ModelAndView("alagamento");
     	 return model;
      }
       @RequestMapping("/deslizamento")
      public ModelAndView desmoronamento(){
    	  ModelAndView model = new ModelAndView("deslizamento");
    	  return model;
      }
	
}
