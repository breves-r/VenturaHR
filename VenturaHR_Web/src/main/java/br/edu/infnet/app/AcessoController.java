package br.edu.infnet.app;

import br.edu.infnet.domain.Resposta;
import br.edu.infnet.domain.Usuario;
import br.edu.infnet.domain.Vaga;
import br.edu.infnet.infra.CandidatoService;
import br.edu.infnet.infra.UsuarioService;
import br.edu.infnet.infra.VagaService;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttribute;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.bind.support.SessionStatus;

@SessionAttributes("user")
@Controller
public class AcessoController {
    
    @Autowired
    private UsuarioService usuarioService;
    
    @Autowired
    private VagaService vagaService;
    
    @Autowired
    private CandidatoService candidatoService;
    
    @GetMapping(value = "/")
    public String telaIndex(){
    	return "/index";
    }
    
    @GetMapping(value="/home")
    public String telaInicial(@SessionAttribute("user") Usuario usuario, Model model){
        
        try{
            List<Vaga> vagas = vagaService.listaVagas();
            model.addAttribute("vagas", vagas);
        }catch(Exception e){
            System.out.println(e.getMessage());
        }
        
        String destino = "";
        
        switch (usuario.getTipo()){
                case 'C':
                    destino = "/candidato/index";
                    
                    try{
                        List<Resposta> respostas = candidatoService.listaPorUsuario(usuario.getId());
                        
                        List<Vaga> vagasUser = new ArrayList<>();
                        
                        for(Resposta resposta : respostas){
                            Vaga vaga = vagaService.listaPorId(resposta.getIdVaga());
                            vagasUser.add(vaga);
                        }
                        model.addAttribute("vagasUser", vagasUser);
                        
                    }catch(Exception e){
                        System.out.println(e.getMessage());
                    }
                    
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
    
    @PostMapping (value = "/login")
    public String login(Model model, @RequestParam String email, @RequestParam String senha){
        String destino = "";
        
        Usuario usuario = usuarioService.obterPorEmail(email);

        if (usuario != null && email.equals(usuario.getEmail()) && senha.equals(usuario.getSenha())) {
            System.out.println(usuario);
            
            
            model.addAttribute("user", usuario);
            destino = "redirect:/home";
        } else{
            model.addAttribute("erro", "Login inválido");
            destino = "/index";
        }
        return destino;
    }
    
    @GetMapping(value = "/logout")
    public String logout(SessionStatus status, HttpSession session) {
	status.setComplete();
	session.removeAttribute("user");
        return "redirect:/";		
	}
}
