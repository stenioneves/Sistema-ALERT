package org.alert.controllers;

import java.util.ArrayList;
import java.util.List;

import javax.transaction.Transactional;

import org.alert.controllers.view.PublicacaoGeralGrupo;
import org.alert.daos.MoradorDAO;
import org.alert.daos.PublicacaoDAO;
import org.alert.models.Morador;
import org.alert.models.Publicacao;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;

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
	public List<PublicacaoGeralGrupo> publicacaoGeral(@ModelAttribute("morador")Morador morador){
		List<PublicacaoGeralGrupo>publicacaoGeralGrupos= new ArrayList<PublicacaoGeralGrupo>();
		List<Morador> moradoresgrup=moradorDAO.consultarMoradorGrupo(morador);
		
		
		 for(Morador moradorc:moradoresgrup){
			
			 PublicacaoGeralGrupo pub = new PublicacaoGeralGrupo();
			 pub.setMorador(morador);
			 pub.setPublicacao(publicacaoDAO.listarPublicacao(moradorc));
			publicacaoGeralGrupos.add(pub);
		}
		
		return publicacaoGeralGrupos;
		
	}

}
