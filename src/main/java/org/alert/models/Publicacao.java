package org.alert.models;

import java.sql.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.Lob;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
import javax.validation.constraints.Max;

import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.format.annotation.DateTimeFormat.ISO;

@Entity
@Table(name="publicacao")
public class Publicacao {
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private int idPublicacao;
	@Column
	@Max(value=30)
	private String tituloPublicacao;
	@Lob
	private  String textoPublicacao;
	@DateTimeFormat(iso=ISO.DATE)
	private Date dataPublicacao;
	
	@ManyToOne
	@JoinColumn(name="idMorador")
	private Morador morador;
	
	public String getTituloPublicacao() {
		return tituloPublicacao;
	}
	public void setTituloPublicacao(String titulo) {
		this.tituloPublicacao = titulo;
	}
	public String getTextoPublicacao() {
		return textoPublicacao;
	}
	public void setTextoPublicacao(String texto) {
		this.textoPublicacao = texto;
	}
	public Date getDataPublicacao() {
		return dataPublicacao;
	}
	public void setDataPublicacao(Date dataPublicacao) {
		this.dataPublicacao = dataPublicacao;
	}

}
