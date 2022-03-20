package br.edu.infnet.app.usuarios;

import br.edu.infnet.domain.usuarios.Usuario;
import br.edu.infnet.infra.usuarios.UsuarioRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PatchMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping(path={"/usuarios"})
public class UsuarioController {
    
    @Autowired
    private UsuarioRepository usuarioRepository;
    
    @GetMapping(path={"/{id}"})
    public ResponseEntity obterPorID(@PathVariable int id){
        
        ResponseEntity retorno = ResponseEntity.notFound().build();
        
        try {
            Usuario usuario = this.findById(id);
            
            if(usuario != null){
                retorno = ResponseEntity.ok().body(usuario);
            }
            
        } catch (Exception e) {
        }
        
        return retorno;
    }
    
    private Usuario findById(Integer id) {

		Usuario retorno = null;
		try {
			retorno = usuarioRepository.findById(id).get();

		} catch (Exception e) {
		}
		return retorno;
	}
    
    @GetMapping(path={"/email/{email}"})
    public ResponseEntity obterPorEmail(@PathVariable String email){
        
        ResponseEntity retorno = ResponseEntity.notFound().build();
        
        try {
            Usuario usuario = usuarioRepository.findByEmail(email);
            
            if(usuario != null){
                retorno = ResponseEntity.ok().body(usuario);
            }
            
        } catch (Exception e) {
        }
        
        return retorno;
    }
    
    @PostMapping("/inserir")
    public ResponseEntity inserirUsuario(@RequestBody Usuario usuario){
        ResponseEntity retorno = ResponseEntity.badRequest().build();
        
        if(usuario != null && usuario.getId()==null){
            Usuario usuarioInserido = usuarioRepository.save(usuario);
            //retorno = ResponseEntity.ok().body(usuarioInserido);
            retorno = ResponseEntity.status(HttpStatus.CREATED).body(usuarioInserido);
        }
        return retorno;
    }
    
    @PatchMapping("/alterar")
    public ResponseEntity alterarUsuario (@RequestBody Usuario usuario){
        ResponseEntity retorno = ResponseEntity.badRequest().build();
        
        if(usuario != null && usuario.getId()!=null){
            Usuario usuarioGravado = usuarioRepository.findById(usuario.getId()).get();
            
            if(usuarioGravado != null){
                try {
                    usuarioGravado = usuarioRepository.save(usuario);
                    retorno = ResponseEntity.ok().body(usuarioGravado);
                } catch (Exception e) {
                }
            }
            
        }
        return retorno;
    }
}
