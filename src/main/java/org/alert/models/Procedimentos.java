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
import javax.validation.constraints.Min;

import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.format.annotation.DateTimeFormat.ISO;
@Entity
@Table(name="procedimentos")
public class Procedimentos {
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private int idProcedimentos;
	
	
	@Min(value=5)
	@Max(value=20)
	@Column(name="tituloProcedimentos")
	private String titulo;
	
	@Lob
	@Column(name="textoProcedimentos")
	private String texto;
	
	@DateTimeFormat(iso=ISO.DATE)
	@Column(name="dataCriacaoProcedimentos")
	private Date dataCriacao;
	
	@Min(value=4)
	@Max(value=20)
	@Column(name="categoriaProcedimentos")
	private String categoria;
	
	@ManyToOne
	@JoinColumn(name="matriculaFuncional")
	private AdministradorGeral administradorGeral;

	public String getTitulo() {
		return titulo;
	}

	public void setTitulo(String titulo) {
		this.titulo = titulo;
	}

	public String getTexto() {
		return texto;
	}

	public void setTexto(String texto) {
		this.texto = texto;
	}

	public Date getDataCriacao() {
		return dataCriacao;
	}

	public void setDataCriacao(Date dataCriacao) {
		this.dataCriacao = dataCriacao;
	}

	public String getCategoria() {
		return categoria;
	}

	public void setCategoria(String categoria) {
		this.categoria = categoria;
	}

	public int getIdProcedimentos() {
		return idProcedimentos;
	}

	public void setIdProcedimentos(int idProcedimentos) {
		this.idProcedimentos = idProcedimentos;
	}
	
	
	
	
}
