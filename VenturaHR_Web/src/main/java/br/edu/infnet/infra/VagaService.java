package br.edu.infnet.infra;

import br.edu.infnet.domain.Vaga;
import java.util.List;
import org.springframework.cloud.openfeign.FeignClient;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

@FeignClient(url = "http://localhost:8082/vagas", name="Vagas")
public interface VagaService {
    
    @PostMapping
    Vaga publicarVaga(Vaga vaga);
    
    @GetMapping(value = "/usuario/{idUsuario}")
    List<Vaga> listaPorUsuario(@PathVariable int idUsuario);
    
    @GetMapping(value = "/id/{id}")
    Vaga listaPorId(@PathVariable int id);
    
    @GetMapping(value = "/listavagas")
    List<Vaga> listaVagas();
    
    @GetMapping(value = "/cargo/{pesquisa}")
    List<Vaga> listaPorCargo(@PathVariable String pesquisa);
    
    @GetMapping(value = "/cidade/{pesquisa}")
    List<Vaga> listaPorCidade(@PathVariable String pesquisa);
    
    
}
