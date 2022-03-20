<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!DOCTYPE html>
<html lang="pt-br">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link rel="shortcut icon" href="./assets/img/favicon.ico" type="image/x-icon"/>
    <link rel="stylesheet" href="./assets/css/bootstrap.min.css" />
    <link rel="stylesheet" href="./assets/css/style.css" />
    <title>Ventura HR</title>
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet"/>
  </head>
  
  <body>
    <header>
      <nav class="navbar navbar-dark bg-dark">
        <div class="container-fluid">
          <a class="navbar-brand mb-0 h1"> Ventura HR </a>
        </div>
      </nav>
    </header>

    <main>
      <div class="wrapper">
        <div class="card">
            
          <table id="AutoNumber2">
            <tr>
              <td valign="top">
                <p class="title">Criação de Conta - Cadastramento de Usuário</p>
                <div align="center">
                  <center>
                      <form action="CadastrarUsuarioServlet" method="post">
                    <table id="AutoNumber3">
                      <tr>
                        <td><p class="title-form">Nome:</p></td>
                        <td>
                          <input type="text" class="form-control form-control-sm" name="nome" maxlength="50" size="50"
                            placeholder="Nome Completo" value="${usuario.nome}" />
                        </td>
                      </tr>
                      <tr>
                        <td><p class="title-form">Endereço:</p></td>
                        <td>
                            <input type="text" class="form-control form-control-sm" name="endereco" maxlength="100"
                            size="50" placeholder="Endereço" value="${usuario.endereco}"/>
                        </td>
                      </tr>
                      <tr>
                        <td><p class="title-form">Telefone:</p></td>
                        <td>
                            <input type="text" class="form-control form-control-sm" name="telefone" maxlength="15" size="30"
                                   placeholder="(00) 0000-0000" value="${usuario.telefone}"/>
                        </td>
                      </tr>
                      <tr>
                        <td><p class="title-form">Email:</p></td>
                        <td>
                            <input type="email" class="form-control form-control-sm" name="email" maxlength="50" size="30"
                                   placeholder="seuemail@dominio.com" value="${usuario.email}"/>
                        </td>
                      </tr>
                      <tr>
                        <td><p class="title-form">Senha:</p></td>
                        <td>
                          <input type="password" class="form-control form-control-sm" name="senha1" maxlength="15" size="20"
                                 placeholder="Password" value="${usuario.senha}" />
                        </td>
                      </tr>
                      <tr>
                        <td><p class="title-form">Confimar Senha:</p></td>
                        <td>
                            <input type="password" class="form-control form-control-sm" name="senha2" maxlength="15" size="20"
                            placeholder="Password"/>
                        </td>
                      </tr>
                      <tr>
                        <td><p class="title-form">Tipo de Conta:</p></td>
                        <td class="radio">
                          <input type="radio" class="form-check-input-sm" name="conta" value="Candidato"/>
                          <label>Candidato</label>
                          <input type="radio" class="form-check-input-sm" name="conta" value="Empresa"/>
                          <label>Empresa</label>
                        </td>
                      </tr>
                  <tr>
                       <td><p class="title-form">CPF:</p></td>
                        <td>
                            <input type="text" class="form-control form-control-sm" name="cpf" maxlength="11" size="20"
                                   placeholder="CPF" value="${usuario.cpf}"/>
                        </td>
                      </tr> 
                       <tr>
                        <td><p class="title-form">Razão Social:</p></td>
                        <td>
                          <input type="text" class="form-control form-control-sm" name="razaoSocial" maxlenght="100" size="30"
                            placeholder="Razão Social" value="${usuario.razaoSocial}"/>
                        </td>
                      </tr>
                      <tr>
                        <td><p class="title-form">CNPJ:</p></td>
                        <td>
                            <input type="text" class="form-control form-control-sm" name="cnpj" maxlength="14" size="20"
                            placeholder="CNPJ" value="${usuario.cnpj}"/>
                        </td>
                      </tr>    
                      <tr>
                         <td colspan="2">
                             <div class="button">
                            <input
                              class="btn btn-primary button"
                              type="submit"
                              value="Criar Conta"
                              
                            />
                          </div>
                            <%
                             String msg = (String)request.getAttribute("msg");
                             if(msg != null){%>
                                             <div class="container">
                                                 <h3><%=msg%></h3>
                                             </div>
                                     <%}%>
                             <%
                             ArrayList<String> erros = (ArrayList)request.getAttribute("erros");
                             if(erros != null){
                             for(String erro : erros){%>

                                 <div class="alert alert-warning">
                                               <strong>Atenção!</strong> <%=erro%>
                                             </div>
                                 <%}}%>
                        </td>
                      </tr>
                    </table>
                        </form>
                  </center>
                </div>
              </td>
            </tr>
          </table>
        </div>
      </div>
    </main>

    <div class="footer">
      <p class="rodape">Ventura HR © 2022 Company</p>
    </div>
  </body>
</html>

