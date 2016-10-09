package org.alert.models;

import javax.persistence.DiscriminatorValue;
import javax.persistence.Entity;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;
import javax.persistence.PrimaryKeyJoinColumn;
import javax.persistence.Table;



@Entity
@PrimaryKeyJoinColumn(name="idMorador")
@Table(name="administradorGrupo")
public class AdministradorGrupo extends Morador {
	
	


	
	public void autorizarMorador(Morador morador){
		
	}
	 public void publicarAlerta(Publicacao publicacao){
		 
		 
	 }
	
}
