package br.edu.infnet.infra;

import br.edu.infnet.domain.Vaga;
import java.util.List;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface VagaRepository extends CrudRepository<Vaga,Integer>{
    
    List<Vaga> findByIdUsuario(int idUsuario);
    
    Vaga findById(int id);
    
    List<Vaga> findByCargoContainingIgnoreCase(String pesquisa);
    
    List<Vaga> findByCidadeContainingIgnoreCase(String pesquisa);

}
