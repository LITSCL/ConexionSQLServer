package cl.inacap.conexionsqlserver;

import cl.inacap.conexionsqlserver.model.dao.PersonaDAO;
import cl.inacap.conexionsqlserver.model.dto.Persona;

public class Start {

	public static void main(String[] args) {
		Persona p = new Persona();
		p.setNombre("Jorge");
		p.setEdad(56);
		
		PersonaDAO daoPersona = new PersonaDAO();
		daoPersona.save(p);
	}

}
