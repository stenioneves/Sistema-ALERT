package org.alert.validation;

import org.alert.daos.MoradorDAO;
import org.alert.models.Morador;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.validation.Errors;
import org.springframework.validation.ValidationUtils;
import org.springframework.validation.Validator;

public class CadastroValidation implements Validator {
	@Autowired
	private MoradorDAO moradordao;

	@Override
	public boolean supports(Class<?> arg0) {
		return Morador.class.equals(arg0) ;
	}

	@Override
	public void validate(Object arg0, Errors errors) {
		boolean ev= true;
		Morador morador= (Morador)arg0;
		
		ValidationUtils.rejectIfEmpty(errors, "emailMorador", "field.required.email");
		ValidationUtils.rejectIfEmptyOrWhitespace(errors,"senhaMorador","field.required.senha");
		
		 for(int i=0; i<morador.getEmailMorador().length();i++){
			 //Character temp;
			 if(morador.getEmailMorador().charAt(i)=='@')
			 { ev= false;
			   break;
			 }
			 
		 }
		if(ev)
			errors.rejectValue("emailMorador", "field.required.emailValidation");//E-mail fora do padrão.
		
		
		 //if(moradordao.consultarMorador(morador).getEmailMorador().equals(morador.getEmailMorador()))
			// errors.rejectValue("emailMorador", "field.emailExiste");
		 
		 if(morador.getSenhaMorador().length()<6)
			 errors.reject("senhaMorador", "field.senhaFora");
		
		
		
	}

}
