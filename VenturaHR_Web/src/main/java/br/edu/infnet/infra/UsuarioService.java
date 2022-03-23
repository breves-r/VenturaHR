package br.edu.infnet.infra;

import br.edu.infnet.domain.Usuario;
import org.springframework.cloud.openfeign.FeignClient;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

@FeignClient(url = "http://localhost:8081/usuarios", name="Usuarios")
public interface UsuarioService {
    
    @PostMapping
    Usuario inserirUsuario(Usuario usuario);
    
    @GetMapping(value = "/email/{email}")
    Usuario obterPorEmail(@PathVariable String email);
    
    @GetMapping(value = "/id/{id}")
    Usuario obterPorID(String id);
    
}
