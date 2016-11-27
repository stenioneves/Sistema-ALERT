package org.alert.models;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;
import javax.persistence.Table;

@Entity
@Table(name="grupo")
public class Grupo {
    @Id
    @GeneratedValue(strategy=GenerationType.AUTO)
	private int idGrupo;
    @Column
	private String nome;
    @Column
	private String bairro;
    @Column
	private String nivelRiscoBairro;
   
	public String getNome() {
		return nome;
	}
	public void setNome(String nome) {
		this.nome = nome;
	}
	public String getBairro() {
		return bairro;
	}
	public void setBairro(String bairro) {
		this.bairro = bairro;
	}
	public String getNivelRiscoBairro() {
		return nivelRiscoBairro;
	}
	public void setNivelRiscoBairro(String nivelRiscoBairro) {
		this.nivelRiscoBairro = nivelRiscoBairro;
	}
	public int getIdGrupo() {
		return idGrupo;
	}
	public void setIdGrupo(int idGrupo) {
		this.idGrupo = idGrupo;
	}
	
	
	
	
	
	
	
}
