package org.alert.models;

import java.io.Serializable;
import java.util.Calendar;
import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Embedded;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Inheritance;
import javax.persistence.InheritanceType;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToOne;
import javax.persistence.Table;
import javax.validation.constraints.Max;
import javax.validation.constraints.Min;

/***
 * Classe que representa os dados dos Usuarios/Moradores do sistema e seus métodos.
 * @author stenio
 *
 */

@Entity
@Inheritance(strategy=InheritanceType.JOINED)
@Table(name="morador")
public class Morador  {
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private int idMorador;
	@Column
	private  String nomeMorador;
	@Column
	private  String senhaMorador;
	@Column
	private  Date dataNascMorador;
	@Column 
	private  String sexoMorador;
	@Column
	private  String tipoMorador;
	@Column
	private  String telefoneMorador;
	@Column
	private  String ruaEnderecoMorador;
	@Column
	private  String complementoEnderecoMorador;
	@Column
	private  String bairroEnderecoMorador;
	@Column
	private  String nivelRiscoImovel;
	@Column
	private  boolean jaFoiVitima;
	@Column
	private  String tipoResidencia;
	@Column
	private  int rendaTotal;
	@Column
	private  int qtdaMorador;
	@Column
	private  String emailMorador;
    @Column
    private String situacaoCasa;
	@ManyToOne
	@JoinColumn(name="idGrupo")
   private Grupo grupo;
   
    
    
   
	public String getSituacaoCasa() {
		return situacaoCasa;
	}
	public void setSituacaoCasa(String situacaoCasa) {
		this.situacaoCasa = situacaoCasa;
	}
	public String getEmailMorador() {
		return emailMorador;
	}
	public void setEmailMorador(String emailMorador) {
		this.emailMorador = emailMorador;
	}
	public int getIdMorador() {
		return idMorador;
	}
	public void setIdMorador(int idMorador) {
		this.idMorador = idMorador;
	}
	public String getNomeMorador() {
		return nomeMorador;
	}
	public void setNomeMorador(String nomeMorador) {
		this.nomeMorador = nomeMorador;
	}
	public String getSenhaMorador() {
		return senhaMorador;
	}
	public void setSenhaMorador(String senhaMorador) {
		this.senhaMorador = senhaMorador;
	}
	public Date getDataNascMorador() {
		return dataNascMorador;
	}
	public void setDataNascMorador(Date dataNascMorador) {
		this.dataNascMorador = dataNascMorador;
	}
	public String getSexoMorador() {
		return sexoMorador;
	}
	public void setSexoMorador(String sexoMorador) {
		this.sexoMorador = sexoMorador;
	}
	public String getTipoMorador() {
		return tipoMorador;
	}
	public void setTipoMorador(String tipoMorador) {
		this.tipoMorador = tipoMorador;
	}
	public String getTelefoneMorador() {
		return telefoneMorador;
	}
	public void setTelefoneMorador(String telefoneMorador) {
		this.telefoneMorador = telefoneMorador;
	}
	public String getRuaEnderecoMorador() {
		return ruaEnderecoMorador;
	}
	public void setRuaEnderecoMorador(String ruaEnderecoMorador) {
		this.ruaEnderecoMorador = ruaEnderecoMorador;
	}
	public String getComplementoEnderecoMorador() {
		return complementoEnderecoMorador;
	}
	public void setComplementoEnderecoMorador(String complementoEnderecoMorador) {
		this.complementoEnderecoMorador = complementoEnderecoMorador;
	}
	public String getBairroEnderecoMorador() {
		return bairroEnderecoMorador;
	}
	public void setBairroEnderecoMorador(String bairroEnderecoMorador) {
		this.bairroEnderecoMorador = bairroEnderecoMorador;
	}
	public String getNivelRiscoImovel() {
		return nivelRiscoImovel;
	}
	public void setNivelRiscoImovel(String nivelRiscoImovel) {
		this.nivelRiscoImovel = nivelRiscoImovel;
	}
	public boolean getJaFoiVitima() {
		return jaFoiVitima;
	}
	public void setJaFoiVitima(boolean jaFoiVitima) {
		this.jaFoiVitima = jaFoiVitima;
	}
	public String getTipoResidencia() {
		return tipoResidencia;
	}
	public void setTipoResidencia(String tipoResidencia) {
		this.tipoResidencia = tipoResidencia;
	}
	public int getRendaTotal() {
		return rendaTotal;
	}
	public void setRendaTotal(int rendaTotal) {
		this.rendaTotal = rendaTotal;
	}
	public int getQtdaMorador() {
		return qtdaMorador;
	}
	public void setQtdaMorador(int qtdaMorador) {
		this.qtdaMorador = qtdaMorador;
	}

	public Grupo getGrupo() {
		return grupo;
	}

    public void setGrupo(Grupo grupo) {
		this.grupo = grupo;
	}
	
	
	
	
	

}
