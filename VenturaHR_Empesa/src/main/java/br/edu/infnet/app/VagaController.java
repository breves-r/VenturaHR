package br.edu.infnet.app;

import br.edu.infnet.domain.Criterio;
import br.edu.infnet.domain.Vaga;
import br.edu.infnet.infra.VagaRepository;
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
@RequestMapping(path = {"/vagas"})
public class VagaController {
    
    @Autowired
    private VagaRepository vagaRepository;
    
    @PostMapping
    public ResponseEntity publicarVaga(@RequestBody Vaga vaga){
        ResponseEntity retorno = ResponseEntity.badRequest().build();
        
        List<Criterio> listaCriterio = vaga.getCriterioList();
        
        if(listaCriterio != null && !listaCriterio.isEmpty()){
            for (Criterio criterio : listaCriterio){
                
                criterio.setIdVaga(vaga);
            }
            
            Vaga gravada = vagaRepository.save(vaga);
            retorno = ResponseEntity.status(HttpStatus.CREATED).body(gravada);
        }
        return retorno;
    }
    
    @GetMapping(path = "/listavagas")
    public ResponseEntity listaVagas(){
        List<Vaga> lista = (List<Vaga>) vagaRepository.findAll();
        
        return ResponseEntity.ok().body(lista);
    }
    
    @GetMapping(path = "/usuario/{idUsuario}")
    public ResponseEntity listaPorUsuario(@PathVariable int idUsuario){
        ResponseEntity retorno = ResponseEntity.notFound().build();
        try{
            
            List<Vaga> lista = vagaRepository.findByIdUsuario(idUsuario);
            if(!lista.isEmpty()){
                
                retorno = ResponseEntity.ok().body(lista);
            }
        } catch (Exception e){
            
        } 
        return retorno;
    }
    
    @GetMapping(path="/id/{id}")
    public ResponseEntity listaPorId(@PathVariable int id){
        ResponseEntity retorno = ResponseEntity.notFound().build();
        try{
            
            Vaga vaga = vagaRepository.findById(id);
            if(vaga != null){
                
                retorno = ResponseEntity.ok().body(vaga);
            }
        } catch (Exception e){
            
        } 
        return retorno;
    }
    
    
    @GetMapping(path = "/cargo/{pesquisa}")
    public ResponseEntity listaPorCargo(@PathVariable String pesquisa){
        
        ResponseEntity retorno = ResponseEntity.notFound().build();
        try{
            
            List<Vaga> lista = vagaRepository.findByCargoContainingIgnoreCase(pesquisa);
            if(!lista.isEmpty()){
                
                retorno = ResponseEntity.ok().body(lista);
            }
        } catch (Exception e){
            
        } 
        return retorno;
    }
    
    @GetMapping(path = "/cidade/{pesquisa}")
    public ResponseEntity listaPorCidade(@PathVariable String pesquisa){
        
        ResponseEntity retorno = ResponseEntity.notFound().build();
        try{
            
            List<Vaga> lista = vagaRepository.findByCidadeContainingIgnoreCase(pesquisa);
            if(!lista.isEmpty()){
                
                retorno = ResponseEntity.ok().body(lista);
            }
        } catch (Exception e){
            
        } return retorno;
    }
}
