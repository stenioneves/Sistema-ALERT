package org.alert.models;

import java.sql.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name="alerta")
public class Alerta {
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private  int idpublicacao;
	@Column
    private Date dataPublicacao;
	@Column
	private String texto;
	
	@ManyToOne
	@JoinColumn(name="idMoradorAdministradorGrupo")
	private AdministradorGrupo administradorGrupo;
	
	private Boolean exibicao;
	
	
	public Date getDataPublicacao() {
		return dataPublicacao;
	}
	public void setDataPublicacao(Date dataPublicacao) {
		this.dataPublicacao = dataPublicacao;
	}
	public String getTexto() {
		return texto;
	}
	public void setTexto(String texto) {
		this.texto = texto;
	}
	public Boolean getExibicao() {
		return exibicao;
	}
	public void setExibicao(Boolean exibicao) {
		this.exibicao = exibicao;
	}
	public int getIdpublicacao() {
		return idpublicacao;
	}
	public void setIdpublicacao(int idpublicacao) {
		this.idpublicacao = idpublicacao;
	}
	public AdministradorGrupo getAdministradorGrupo() {
		return administradorGrupo;
	}
	public void setAdministradorGrupo(AdministradorGrupo administradorGrupo) {
		this.administradorGrupo = administradorGrupo;
	}
	
   
}
