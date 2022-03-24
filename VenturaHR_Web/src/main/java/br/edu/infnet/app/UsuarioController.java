package br.edu.infnet.app;

import br.edu.infnet.domain.Usuario;
import br.edu.infnet.infra.UsuarioService;
import javax.validation.Valid;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;

//@SessionAttributes("user")
@Controller
public class UsuarioController {
    
    @Autowired
    private UsuarioService usuarioService;
    
    @GetMapping(value = "/cadastro")
    public String telaCadastro() {
        return "/usuario/cadastro";
    }
    
    @PostMapping(value = "/cadastrar")
    public ModelAndView realizarCadastro(@Valid Usuario usuario, BindingResult br){
        
        ModelAndView retorno = new ModelAndView("/usuario/cadastro");
        if(br.hasErrors()){
            retorno.addObject("erros", br.getFieldErrors());
        }else{
            System.out.println(usuario);
            usuarioService.inserirUsuario(usuario);
            String destino = "";
            
            switch (usuario.getTipo()){
                case 'C':
                    destino = "/candidato/index";
                    break;
                case 'E':
                    destino = "/empresa/index";
                    break;
            }
            
            retorno.setViewName(destino);
           // retorno.addObject("user", usuario);
        }
        return retorno;
        
    }
}
