package br.edu.infnet.infra;

import br.edu.infnet.domain.Resposta;
import java.util.List;
import org.springframework.cloud.openfeign.FeignClient;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

@FeignClient(url = "http://localhost:8083/candidatos", name="Candidatos")
public interface CandidatoService {
    
    @PostMapping
    Resposta responderVaga(Resposta resposta);
    
    @GetMapping(value = "/usuario/{idUsuario}")
    List<Resposta> listaPorUsuario(@PathVariable int idUsuario);
    
}
