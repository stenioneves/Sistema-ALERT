package org.alert.controllers;

import java.util.ArrayList;
import java.util.List;

import javax.transaction.Transactional;

import org.alert.daos.MoradorDAO;
import org.alert.daos.PublicacaoDAO;
import org.alert.models.Morador;
import org.alert.models.Publicacao;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.fasterxml.jackson.annotation.JsonCreator;

@Controller
@Transactional
@SessionAttributes("morador")
public class PublicacaoController {
	@Autowired
	private PublicacaoDAO publicacaoDAO;
	@Autowired
	private MoradorDAO moradorDAO;
	
	@RequestMapping( value="pub", method=RequestMethod.GET)
	@ResponseBody
	public List<Publicacao> publicacaoGeral(@ModelAttribute("morador")Morador morador){
		//List<PublicacaoGeralGrupo>publicacaoGeralGrupos= new ArrayList<PublicacaoGeralGrupo>();
		List<Morador> moradoresgrup=moradorDAO.consultarMoradorGrupo(morador);
		List<Publicacao>publicaceosgrupo= new ArrayList<Publicacao>();
		
		 for(Morador moradorc:moradoresgrup){
			List<Publicacao>temp=publicacaoDAO.listarPublicacao(moradorc);
			for(Publicacao publicacao:temp){
				publicaceosgrupo.add(publicacao);
				
			}
			
		}
		
		return publicaceosgrupo;
		
	}
	
	@RequestMapping(value="publicarg", method=RequestMethod.POST)
	public ModelAndView publicarg(Publicacao publicacao,@ModelAttribute("morador")Morador dono,RedirectAttributes redirectAttributes){
		publicacao.setMorador(dono);
		publicacaoDAO.publicar(publicacao);
		redirectAttributes.addFlashAttribute("msg", "<div class=\"alert alert-success fade in\">"
				+ "<a href=\"#\" class=\"close\" data-dismiss=\"alert\" aria-label=\"close\">&times;</a><strong>Successo!</strong> "
				+ "Sua publicação foi realizada.</div>"
  
    
    );
		
		return new ModelAndView("redirect:/grupo/admgrupo");
	}
	@RequestMapping(value="/publicar", method=RequestMethod.POST)
	public ModelAndView publicar(Publicacao publicacao,@ModelAttribute("morador")Morador dono,RedirectAttributes redirectAttributes){
		publicacao.setMorador(dono);
		
		publicacaoDAO.publicar(publicacao);
		
		
		redirectAttributes.addFlashAttribute("msg", "<div class=\"alert alert-success fade in\">"
				+ "<a href=\"#\" class=\"close\" data-dismiss=\"alert\" aria-label=\"close\">&times;</a><strong>Successo!</strong> "
				+ "Sua publicação foi realizada.</div>"
  
    
    );
		
		return new ModelAndView("redirect:/principal");
	}
     @RequestMapping(value="editarp", method=RequestMethod.POST)
   
   public ModelAndView editarpublicacao( Publicacao publicacao, RedirectAttributes redirectAttributes){
    	 
	  publicacaoDAO.editarPublicacao(publicacao);
	  
	  redirectAttributes.addFlashAttribute("msg", "<div class=\"alert alert-success fade in\">"
				+ "<a href=\"#\" class=\"close\" data-dismiss=\"alert\" aria-label=\"close\">&times;</a><strong>Successo!</strong> "
				+ "Sua alteraçao foi realizada.</div>"

  
  );
	  return new ModelAndView("redirect:/principal");
	   
   }
     
      @RequestMapping(value="excluirPub/{id}")
     public ModelAndView excluirpublicacao(@PathVariable("id")int id, RedirectAttributes redirectAttributes ){
    	  
    	 publicacaoDAO.excluirPubId(id); 
    	 
    	 redirectAttributes.addFlashAttribute("msg", "<div class=\"alert alert-danger fade in\">"
 				+ "<a href=\"#\" class=\"close\" data-dismiss=\"alert\" aria-label=\"close\">&times;</a><strong>Successo!</strong> "
 				+ "Exclusão Efetuada.</div>"

   
   );
    	 
    	 return new ModelAndView("redirect:/principal"); 
    	 
     }
     
     
     
     
}
