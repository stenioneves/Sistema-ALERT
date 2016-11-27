package org.alert.models;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.validation.constraints.Max;
import javax.validation.constraints.Min;

@Entity
@Table(name="administradorGeral")
public class AdministradorGeral {
  @Id
  //@GeneratedValue(strategy=GenerationType.AUTO)
  private int matriculaFuncional;
  
  
  @Column(name="nomeAdministradorGeral")
  private String nome;
  
  @Column(name="senhaAdm")
  private String senhaAdm;

  
  public int getMatriculaFuncional() {
	return matriculaFuncional;
}
  public void setMatriculaFuncional(int matriculaFuncional) {
	this.matriculaFuncional = matriculaFuncional;
}
  public String getNome() {
	return nome;
}
  public void setNome(String nome) {
	this.nome = nome;
}
public String getSenhaAdm() {
	return senhaAdm;
}
public void setSenhaAdm(String senhaAdm) {
	this.senhaAdm = senhaAdm;
}	
	

}
