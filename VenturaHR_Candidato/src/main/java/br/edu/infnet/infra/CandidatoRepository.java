package br.edu.infnet.infra;

import br.edu.infnet.domain.Resposta;
import java.util.List;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface CandidatoRepository extends CrudRepository<Resposta, Integer>{
    
    List<Resposta> findByIdUsuario(int idUsuario);
}
