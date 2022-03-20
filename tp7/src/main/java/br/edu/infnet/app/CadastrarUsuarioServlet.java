/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package br.edu.infnet.app;

import br.edu.infnet.domain.Usuario;
import br.edu.infnet.infra.UsuarioRepository;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.apache.commons.lang.StringUtils;

@WebServlet(name = "CadastrarUsuarioServlet", urlPatterns = {"/CadastrarUsuarioServlet"})
public class CadastrarUsuarioServlet extends HttpServlet {
    
    private UsuarioRepository usuarioRepository = new UsuarioRepository();

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        //Passo 1 - Receber os dados da requisição
        Usuario usuario = new Usuario();
        usuario.setNome(request.getParameter("nome"));
        usuario.setEmail(request.getParameter("email"));
        usuario.setSenha(request.getParameter("senha1"));
        usuario.setEndereco(request.getParameter("endereco"));
        usuario.setTelefone(request.getParameter("telefone"));
        usuario.setConta(request.getParameter("conta"));
        usuario.setCpf(request.getParameter("cpf"));
        usuario.setRazaoSocial(request.getParameter("razaoSocial"));
        usuario.setCnpj(request.getParameter("cnpj"));
        request.setAttribute("usuario", usuario);
        
        //Passo 2 - Validar os dados da requisição
        ArrayList<String> erros = new ArrayList<>();
        
        
        if(StringUtils.isBlank(usuario.getNome())){
            erros.add("O campo Nome é obrigatório.");
        }
        
        if(StringUtils.isBlank(usuario.getEmail())){
            erros.add("O campo Email é obrigatório.");
        }
        
        if(StringUtils.isBlank(usuario.getSenha())){
            erros.add("O campo Senha é obrigatório.");
        }
        
        if(StringUtils.isBlank(usuario.getEndereco())){
            erros.add("O campo Endereço é obrigatório.");
        }
        
        if(StringUtils.isBlank(usuario.getConta())){
            erros.add("O campo Tipo de Conta é obrigatório.");
        }
        
        if(!StringUtils.isNumeric(usuario.getTelefone())){   
            erros.add("O campo Telefone tem que ser numérico.");
        }
        
        if(!usuario.getSenha().equalsIgnoreCase(request.getParameter("senha2"))){
            erros.add("As senhas não estão iguais!");
        }
        
        
        //Passo 3 - Cadastrar o usuário
        if(erros.isEmpty()){
            usuarioRepository.inserir(usuario);
            //Passo 4 - Inclui dados na requisição 
            request.removeAttribute("usuario");
            request.setAttribute("msg", "Cadastro realizado com sucesso");
        } else{
            //Passo 4 - Inclui dados na requisição 
            request.setAttribute("erros", erros);
        }
        
        //Passo 5 - Redirecionar
        RequestDispatcher rd = request.getRequestDispatcher("cadastro.jsp");
        rd.forward(request, response);
        
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
