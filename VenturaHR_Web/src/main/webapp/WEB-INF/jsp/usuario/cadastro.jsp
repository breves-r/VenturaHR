<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="pt-br">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    
    <link href="<c:url value="/assets/img/favicon.ico" />" rel="shortcut icon" type="image/x-icon">
    <link href="<c:url value="/assets/css/bootstrap.min.css" />" rel="stylesheet">
    <link href="<c:url value="/assets/css/style.css" />" rel="stylesheet">
    <link
      href="https://fonts.googleapis.com/icon?family=Material+Icons"
      rel="stylesheet"
    />
    <title>Ventura HR</title>
    
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
                      <form action="/cadastrar" method="post">
                    <table id="AutoNumber3">
                      <tr>
                        <td><p class="title-form">Nome:</p></td>
                        <td>
                          <input type="text" class="form-control form-control-sm" name="nome" maxlength="50" size="50"
                            placeholder="Nome Completo" value="Rafaela" />
                        </td>
                      </tr>
                      <tr>
                        <td><p class="title-form">Endereço:</p></td>
                        <td>
                            <input type="text" class="form-control form-control-sm" name="endereco" maxlength="100"
                            size="50" placeholder="Endereço" value="Rua I"/>
                        </td>
                      </tr>
                      <tr>
                        <td><p class="title-form">Telefone:</p></td>
                        <td>
                            <input type="text" class="form-control form-control-sm" name="telefone" maxlength="15" size="30"
                                   placeholder="(00) 0000-0000" value="99999999"/>
                        </td>
                      </tr>
                      <tr>
                        <td><p class="title-form">Email:</p></td>
                        <td>
                            <input type="email" class="form-control form-control-sm" name="email" maxlength="50" size="30"
                                   placeholder="seuemail@dominio.com" value="rafaela@gmail"/>
                        </td>
                      </tr>
                      <tr>
                        <td><p class="title-form">Senha:</p></td>
                        <td>
                          <input type="password" class="form-control form-control-sm" name="senha" maxlength="15" size="20"
                                 placeholder="Password" value="123" />
                        </td>
                      </tr>
                      <%-- <tr>
                        <td><p class="title-form">Confimar Senha:</p></td>
                        <td>
                            <input type="password" class="form-control form-control-sm" name="senha" maxlength="15" size="20"
                            placeholder="Password"/>
                        </td> 
                      </tr>--%>
                      <tr>
                        <td><p class="title-form">Tipo de Conta:</p></td>
                        <td class="radio">
                          <input type="radio" class="form-check-input-sm" name="tipo" value="C"/>
                          <label>Candidato</label>
                          <input type="radio" class="form-check-input-sm" name="tipo" value="E"/>
                          <label>Empresa</label>
                        </td>
                      </tr>
                  <tr>
                       <td><p class="title-form">CPF:</p></td>
                        <td>
                            <input type="text" class="form-control form-control-sm" name="cpf" maxlength="11" size="20"
                                   placeholder="CPF" value="12345678"/>
                        </td>
                      </tr> 
                       <tr>
                        <td><p class="title-form">Razão Social:</p></td>
                        <td>
                          <input type="text" class="form-control form-control-sm" name="razaoSocial" maxlenght="100" size="30"
                            placeholder="Razão Social" value=""/>
                        </td>
                      </tr>
                      <tr>
                        <td><p class="title-form">CNPJ:</p></td>
                        <td>
                            <input type="text" class="form-control form-control-sm" name="cnpj" maxlength="14" size="20"
                            placeholder="CNPJ" value=""/>
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
                             <c:if test="${not empty erros}">
                                 <c:forEach var="e" items="${erros}">
                                     
                                     
			<div class="alert alert-warning">
				<strong>Atenção!</strong> ${e.getDefaultMessage()}
			</div>
                                  </c:forEach>
                            </c:if>
                           
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