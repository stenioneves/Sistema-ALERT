package org.alert.controllers;

import java.util.List;

import javax.servlet.http.HttpSession;
import javax.transaction.Transactional;

import org.alert.daos.AdministradorGrupoDAO;
import org.alert.daos.AlertaDAO;
import org.alert.daos.GrupoDAO;
import org.alert.daos.MoradorDAO;
import org.alert.daos.PublicacaoDAO;
import org.alert.models.AdministradorGrupo;
import org.alert.models.Alerta;
import org.alert.models.Morador;
import org.alert.models.Publicacao;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;
/***
 * Classe para o controler das Views relacionado a morador e suas solicitações.
 * @author stenio
 *
 */

@Controller
@Transactional
//@SessionAttributes("morador")
public class MoradorController {
	
	@Autowired
	 private MoradorDAO moradorDAO;
	@Autowired
	private GrupoDAO grupoDAO;
	
	@Autowired
	private AdministradorGrupoDAO adminGrupoDAO;
	
	@Autowired
	private AlertaDAO alertaDAO;
	
	@Autowired
	private PublicacaoDAO publicaDAO;
	
	
	
	/**
	 * Método para indicar ao Spring qual validar irá usar.
	 * @param binder
	 */
	

	/**
	 * Método para exibir a tela de cadastro.
	 * @return Cadastro
	 */
	 @RequestMapping("cadastro")
	 public ModelAndView formCadastro(Morador morador){
		 ModelAndView modelAndView= new ModelAndView("cadastro");
		 return modelAndView;
	 }
	
	/**
	 * Método para persistência do morador.
	 * @param morador
	 * @return redireciona para tela seleção de grupo.
	 */
	@RequestMapping(value="adicionarMorador",method=RequestMethod.POST)
	public ModelAndView adicionarMorador(Morador morador, HttpSession session,BindingResult bindingResult){
		//Verifica se não erro de preenchimento no formulario.
				
		ModelAndView andView = new ModelAndView("selecionargrupo");
		session.setAttribute("temp", morador);
		
		 andView.addObject("grupos",  grupoDAO.listarGrupoPorBairro(morador));
		  
		 return andView;
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
	
	@RequestMapping("meusdados")
	@ResponseBody
	public Morador listarmeusdados(HttpSession httpSession){
	Morador morador= (Morador)httpSession.getAttribute("morador");
	return morador;
	
	
	}
	
	@RequestMapping(value="excluirMorador/{codigo}", method=RequestMethod.DELETE)
	public @ResponseBody void exclirMorador(@PathVariable("codigo") int codigo){
	Morador m=	moradorDAO.consultaId(codigo);
	///Grupo g= grupoDAO.consultarGrupoId(m.getGrupo());
	 AdministradorGrupo adm= adminGrupoDAO.admgrupo(m);
	  if(adm.getIdMorador()==m.getIdMorador()){
		  List<Alerta>alertas= alertaDAO.listarAlertaGrupo(m);
		  for(Alerta alerta : alertas){
			  
			  alertaDAO.excluirAlertas(alerta);
		  }
		  adminGrupoDAO.excluirAdm(m);
	  }
	  List<Publicacao> publicacoes=  publicaDAO.listarPublicacao(m);
	  for(Publicacao pub: publicacoes){
		  
		  publicaDAO.excluirPubId(pub.getIdPublicacao());
		  
	  }
	  moradorDAO.excluirMorador(m);
		
	}
	
	@RequestMapping(value="ecluirMoradorPAD/{id}",method=RequestMethod.GET)
	public ModelAndView excluirMoradorAdm(@PathVariable("id")int id){
		
		
		Morador m=	moradorDAO.consultaId(id);
		///Grupo g= grupoDAO.consultarGrupoId(m.getGrupo());
		 AdministradorGrupo adm= adminGrupoDAO.admgrupo(m);
		  if(adm.getIdMorador()==m.getIdMorador()){
			  List<Alerta>alertas= alertaDAO.listarAlertaGrupo(m);
			  for(Alerta alerta : alertas){
				  
				  alertaDAO.excluirAlertas(alerta);
			  }
			  adminGrupoDAO.excluirAdm(m);
		  }
		  List<Publicacao> publicacoes=  publicaDAO.listarPublicacao(m);
		  for(Publicacao pub: publicacoes){
			  
			  publicaDAO.excluirPubId(pub.getIdPublicacao());
			  
		  }
		  moradorDAO.excluirMorador(m);
		return new ModelAndView("redirect:../listaMoradores");
	}
}
