package alert;

import org.alert.daos.MoradorDAO;
import org.alert.models.Morador;

public class TesteHibernate {
	
public static void main(String[] args){
	
	MoradorDAO maMoradorDAO = new MoradorDAO();
	Morador morador = new Morador();
	 morador.setEmailMorador("stenio@teste.com");
	morador.setSenhaMorador("123456");
	 Morador m =maMoradorDAO.consultarMorador(morador);

    System.out.println(m.getEmailMorador());

}


}
