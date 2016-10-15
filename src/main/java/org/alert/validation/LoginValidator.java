package org.alert.validation;

import org.alert.models.Morador;
import org.springframework.validation.Errors;
import org.springframework.validation.ValidationUtils;
import org.springframework.validation.Validator;
/**
 * Classe para a validação dos campos da tela de login.
 * @author Stenio Neves Siva 
 *
 */
public class LoginValidator implements Validator {
	
    /**
     * Método da Interface Validator do Spring para verificar se a 
     * classe no parametro é igual a classe de suporte.
     */
	@Override
	public boolean supports(Class<?> classe) {
		return Morador.class.equals(classe);
	}

	@Override
	public void validate(Object target, Errors errors) {
		boolean ev= true;
		
		ValidationUtils.rejectIfEmpty(errors, "emailMorador", "field.required.email");
		ValidationUtils.rejectIfEmptyOrWhitespace(errors,"senhaMorador","field.required.senha");
		 Morador morador =(Morador)target;
		 
		 for(int i=0; i<morador.getEmailMorador().length();i++){
			 //Character temp;
			 if(morador.getEmailMorador().charAt(i)=='@')
			 { ev= false;
			   break;
			 }
			 
		 }
		if(ev)
			errors.rejectValue("emailMorador", "field.required.emailValidation");//E-mail fora do padrão.
	
	    //if(morador.getNomeMoradorUsuario().length()<6 && morador.getNomeMoradorUsuario().length()<15)
	    	
	    	//errors.rejectValue("nomeMoradorUsuario","field.required.usuarioNomeValidation");
	}
	
	

}
