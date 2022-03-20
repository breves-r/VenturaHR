package br.edu.infnet.infra;
import br.edu.infnet.domain.Usuario;
import java.util.ArrayList;
import java.util.HashMap;

public class UsuarioRepository {
    private HashMap<Integer, Usuario> usuarios = new HashMap<>();
    
    public Usuario inserir(Usuario usuario){
        int id = usuarios.size()+1;
        
        usuarios.put(id, usuario);
        
        usuario.setId(id);
        
        return usuario;
    }
    
    public ArrayList<Usuario> listar(){
        ArrayList<Usuario> retorno = new ArrayList<>();
        for(Object obj : usuarios.values()){
            retorno.add((Usuario)obj);
        }
        return retorno;
    }
}
