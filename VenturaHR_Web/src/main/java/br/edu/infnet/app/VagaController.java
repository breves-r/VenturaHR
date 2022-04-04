package br.edu.infnet.app;

import br.edu.infnet.domain.Criterio;
import br.edu.infnet.domain.Usuario;
import br.edu.infnet.domain.Vaga;
import br.edu.infnet.infra.VagaService;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttribute;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class VagaController {
    
    @Autowired
    private VagaService vagaService;
    
    @GetMapping(value="/vaga")
    public String telaVaga(){
        return "/empresa/vaga";
    }
    
    @PostMapping(value="/criarvaga")
    public ModelAndView criarVaga(Vaga vaga, HttpServletRequest request){
        
        ModelAndView retorno = new ModelAndView("/empresa/criterio");
        
        HttpSession session = request.getSession();
        
        session.setAttribute("vaga", vaga);
        
        return retorno;
    }
    
    @PostMapping(value="/criarcriterio")
    public ModelAndView criarCriterio(Criterio criterio, HttpServletRequest request){
        
        ModelAndView retorno = new ModelAndView("/empresa/criterio");
        HttpSession session = request.getSession();
        
        List<Criterio> criterios = (List<Criterio>) session.getAttribute("criterios");

	if (criterios == null) {
            criterios = new ArrayList<>();
	}
        
        criterios.add(criterio);
        
        session.setAttribute("criterios", criterios);
        
        return retorno;
        
    }
    
    @PostMapping(value="publicarvaga")
    public String publicarVaga(HttpServletRequest request){
        HttpSession session = request.getSession();
        
        Usuario usuario = (Usuario) session.getAttribute("user");

        Vaga vaga = (Vaga) session.getAttribute("vaga");

	vaga.setIdUsuario(usuario.getId());
        
        List<Criterio> criterios = (List<Criterio>) session.getAttribute("criterios");

	vaga.setCriterioList(criterios);
        
        vagaService.publicarVaga(vaga);
        
        session.removeAttribute("vaga");
		
	session.removeAttribute("criterios");
        
        return "redirect:/home";
    }
    
    
    @PostMapping(value = "/pesquisarCidade")
    public String pesquisarVagaPorCidade(@RequestParam String pesquisa, Model model, @SessionAttribute("user") Usuario usuario){
        
        try{
            List<Vaga> vagas = vagaService.listaPorCidade(pesquisa);
            model.addAttribute("vagas", vagas);
        }catch(Exception e){
            System.out.println(e.getMessage());
        }
        
        String destino = "";
        
        switch (usuario.getTipo()){
                case 'C':
                    destino = "/candidato/index";
                    break;
                case 'E':
                    destino = "/empresa/index";
                    
                    try{
                        List<Vaga> vagasUser = vagaService.listaPorUsuario(usuario.getId());
                        model.addAttribute("vagasUser", vagasUser);
                    }catch(Exception e){
                        System.out.println(e.getMessage());
                    }
                    
                    break;
            }
        
        return destino;
    }
    
    @PostMapping(value = "/pesquisarCargo")
    public String pesquisarVagaPorCargo(@RequestParam String pesquisa, Model model, @SessionAttribute("user") Usuario usuario){
        
        try{
            List<Vaga> vagas = vagaService.listaPorCargo(pesquisa);
            model.addAttribute("vagas", vagas);
        }catch(Exception e){
            System.out.println(e.getMessage());
        }
        
        String destino = "";
        
        switch (usuario.getTipo()){
                case 'C':
                    destino = "/candidato/index";
                    break;
                case 'E':
                    destino = "/empresa/index";
                    
                    try{
                        List<Vaga> vagasUser = vagaService.listaPorUsuario(usuario.getId());
                        model.addAttribute("vagasUser", vagasUser);
                    }catch(Exception e){
                        System.out.println(e.getMessage());
                    }
                    
                    break;
            }
        
        return destino;
    }
}
     


