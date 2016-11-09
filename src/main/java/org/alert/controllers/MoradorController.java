package org.alert.controllers;

import java.util.List;

import javax.transaction.Transactional;

import org.alert.daos.MoradorDAO;
import org.alert.models.Morador;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
/***
 * Classe para o controler das Views relacionado a morador e suas solicitações.
 * @author stenio
 *
 */

@Controller
@Transactional
public class MoradorController {
	
	@Autowired
	 private MoradorDAO moradorDAO;
	/**
	 * Método para exibir a tela de cadastro.
	 * @return Cadastro
	 */
	 @RequestMapping("cadastro")
	 public ModelAndView formCadastro(){
		 ModelAndView modelAndView= new ModelAndView("cadastro");
		 return modelAndView;
	 }
	
	/**
	 * Método para persistência do morador.
	 * @param morador
	 * @return redireciona para tela seleção de grupo.
	 */
	@RequestMapping(value="adicionarMorador",method=RequestMethod.POST)
	 public String adicionarMorador(Morador morador){
		  moradorDAO.cadastrar(morador);
		 return "redirect:/grupo/selecionarGrupo";
	 }
	@RequestMapping(value="morador", method=RequestMethod.GET)
    @ResponseBody
	public List<Morador> ListarMorador(){
		return moradorDAO.listarMorador();
		
		
	}
	@RequestMapping("listaMoradores")
	public ModelAndView listarMorador(){
		ModelAndView modelAndView= new ModelAndView("listarMorador");
		return modelAndView;
	}
	
}
