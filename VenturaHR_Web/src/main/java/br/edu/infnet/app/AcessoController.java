package br.edu.infnet.app;

import br.edu.infnet.domain.Usuario;
import br.edu.infnet.domain.Vaga;
import br.edu.infnet.infra.UsuarioService;
import br.edu.infnet.infra.VagaService;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;

@SessionAttributes("user")
@Controller
public class AcessoController {
    
    @Autowired
    private UsuarioService usuarioService;
    
    @Autowired
    private VagaService vagaService;
    
    @GetMapping(value = "/")
    public String telaIndex(){
    	return "/index";
    }
    
    @PostMapping (value = "/login")
    public ModelAndView login(@RequestParam String email, @RequestParam String senha){
        ModelAndView retorno = new ModelAndView("/index");
        
        Usuario usuario = usuarioService.obterPorEmail(email);

        if (usuario != null && email.equals(usuario.getEmail()) && senha.equals(usuario.getSenha())) {
            System.out.println(usuario);
            
            String destino = "";
            
            switch (usuario.getTipo()){
                case 'C':
                    destino = "/candidato/index";
                    break;
                case 'E':
                    destino = "/empresa/index";
                    try{
                        List<Vaga> vagas = vagaService.listaVagas();
                        retorno.addObject("vagas", vagas);
                    }catch(Exception e){
                        System.out.println(e.getMessage());
                    }
                    break;
            }
            retorno.addObject("user", usuario);
            retorno.setViewName(destino);
        } else{
            retorno.addObject("erro", "Login inválido");
        }
        return retorno;
    }
}
