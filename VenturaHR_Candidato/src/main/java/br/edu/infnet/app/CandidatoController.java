package br.edu.infnet.app;

import br.edu.infnet.domain.Resposta;
import br.edu.infnet.domain.RespostaCriterio;
import br.edu.infnet.infra.CandidatoRepository;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping(path = {"/candidatos"})
public class CandidatoController {
    
    @Autowired 
    private CandidatoRepository candidatoRepository;
    
    @PostMapping
    public ResponseEntity responderVaga(@RequestBody Resposta resposta){
        ResponseEntity retorno = ResponseEntity.badRequest().build();
        
        List<RespostaCriterio> listaRespostaCriterio = resposta.getRespostaCriterioList();
        
        if(listaRespostaCriterio != null && !listaRespostaCriterio.isEmpty()){
            for (RespostaCriterio respostaCriterio : listaRespostaCriterio){
                respostaCriterio.setIdResposta(resposta);
            }
            
            Resposta gravada = candidatoRepository.save(resposta);
            retorno = ResponseEntity.status(HttpStatus.CREATED).body(gravada);
        }
        
        return retorno;
    }
    
    
    
    @GetMapping(path = "/usuario/{idUsuario}")
    public ResponseEntity listaPorUsuario(@PathVariable int idUsuario){
        ResponseEntity retorno = ResponseEntity.notFound().build();
        try{
            
            List<Resposta> lista = candidatoRepository.findByIdUsuario(idUsuario);
            if(!lista.isEmpty()){
                
                retorno = ResponseEntity.ok().body(lista);
            }
        } catch (Exception e){
            
        } 
        return retorno;
    }
}
