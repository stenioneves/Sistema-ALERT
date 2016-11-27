package org.alert.models;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;
import javax.persistence.Table;
import javax.persistence.UniqueConstraint;

import org.hibernate.annotations.Columns;
import org.hibernate.annotations.FilterJoinTable;
import org.springframework.context.annotation.Primary;



@Entity

@Table(name="administradorGrupo")

public class AdministradorGrupo extends Morador {
	
	
	@OneToOne
	@JoinColumn(name="idGrupo")
	
    private Grupo grupo;

	
	public void autorizarMorador(Morador morador){
		
	}
	 public void publicarAlerta(Alerta alerta){
		 //
		 
		 
	 }
	public Grupo getGrupo() {
		return grupo;
	}
	public void setGrupo(Grupo grupo) {
		this.grupo = grupo;
	}
	
	@Override
	public void setIdMorador(int idMorador) {
		// TODO Auto-generated method stub
		super.setIdMorador(idMorador);
	}
}
