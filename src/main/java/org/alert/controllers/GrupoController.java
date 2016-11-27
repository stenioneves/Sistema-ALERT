package org.alert.controllers;

import java.util.List;

import javax.servlet.http.HttpSession;
import javax.transaction.Transactional;

import org.alert.daos.AlertaDAO;
import org.alert.daos.GrupoDAO;
import org.alert.daos.MoradorDAO;
import org.alert.models.Alerta;
import org.alert.models.Grupo;
import org.alert.models.Morador;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
//import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.bind.support.SessionStatus;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

@Transactional
@Controller
@RequestMapping("/grupo")
//@SessionAttributes({"morador"})

public class GrupoController {
	
	@Autowired
	private MoradorDAO moradorDAO;
	@Autowired
	private GrupoDAO grupodao;
	private AlertaDAO alertaDAO;
	
	@RequestMapping( value="/selecionarGrupo/{idgrupo}", method=RequestMethod.GET)
	public ModelAndView selecionarGrupo(@PathVariable("idgrupo")Integer idgrupo, RedirectAttributes attributes
			,HttpSession httpSession,SessionStatus sessionStatus){
		Grupo gr =new Grupo();
		gr.setIdGrupo(idgrupo);
		Morador morador = (Morador) httpSession.getAttribute("temp");
		morador.setGrupo(grupodao.consultarGrupoId(gr));
		moradorDAO.cadastrar(morador);
		sessionStatus.setComplete();
		httpSession.removeAttribute("temp");
		
		
		attributes.addFlashAttribute("erro"," <div class=\"alert alert-info\"> <strong>Cadastro Realizado!<strong> Você deve efetura o login</div>");
		return new ModelAndView("redirect:../../login");
	}

	@RequestMapping("/admgrupo")
	public ModelAndView admGrupo(){
		ModelAndView andView = new ModelAndView("admgrupo");
		return andView;
	}
	
	@RequestMapping("/meugrupo")
	public ModelAndView meugrupo(HttpSession httpSession){
		 Morador morador =(Morador)httpSession.getAttribute("morador");
		ModelAndView andView =new ModelAndView("meugrupo");
		andView.addObject("moradorgrupo", morador);
		return andView;
	}
	
	@RequestMapping(value="listarMoradorGrupo",method=RequestMethod.GET)
	@ResponseBody
	public  List<Morador> listarMoradorGrupo(@ModelAttribute("morador")Morador morador){
		 return moradorDAO.consultarMoradorGrupo(morador);
		
	}
	 @RequestMapping(value="/criargrupo",method=RequestMethod.POST)
	public ModelAndView criarGrupo(Grupo grupo){
		 grupodao.criarGrupo(grupo);
		
		
		return new ModelAndView("redirect:../adm/principal");
	}
	 
	 @RequestMapping("/listarGrupo")
	 @ResponseBody
	 public List<Grupo> ListarGrupo(){
		return grupodao.listarGrupo();
		  
		 
	 }
	 
	  @RequestMapping( value="/emitirAlerta", method=RequestMethod.POST)
	 public ModelAndView emitir(Alerta alerta){
		 alertaDAO.EmitirAlerta(alerta);
		 return new ModelAndView("redirect:admgrupo");
	 }
	 
	  @RequestMapping("/listartodogrupo")
	  public ModelAndView listarg(){
		  return new ModelAndView("listargrupo");
		  
	  }
	  @RequestMapping("form")
	  public ModelAndView criarGrupoForm(HttpSession session,RedirectAttributes attributes){
		  
		  if(session.getAttribute("adm")==null){
			  attributes.addFlashAttribute("msg"
					  ,"<div class=\"w3-panel w3-red w3-card-2\">"
			  +"<p> Operação negada! Usuário não é administrador geral &#9998;</p></div>"
					  );
			  return new ModelAndView("redirect:../adm/login");
			  
		  }
		  return new ModelAndView("grupoform");
	  }
}
