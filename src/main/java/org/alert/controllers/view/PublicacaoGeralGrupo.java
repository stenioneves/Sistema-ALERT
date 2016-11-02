package org.alert.controllers.view;

import java.util.List;

import org.alert.models.Morador;
import org.alert.models.Publicacao;

public class PublicacaoGeralGrupo {
	private Morador morador;
	private List<Publicacao> publicacao;
	
	public Morador getMorador() {
		return morador;
	}
	public void setMorador(Morador morador) {
		this.morador = morador;
	}
	public List<Publicacao> getPublicacao() {
		return publicacao;
	}
	public void setPublicacao(List<Publicacao> publicacao) {
		this.publicacao = publicacao;
	}
	
	

}
