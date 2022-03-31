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
          
          <c:if test="${not empty user}">
		<a class="nav-link" href="/logout">Logout, ${user.nome}</a>
            </c:if>
        </div>
      </nav>
    </header>

    <main>
      <div class="wrapper">
        <div class="card">
          <table
            id="AutoNumber2"
          >
            <tr>
              <td valign="top">
                <p class="title">Publicar Vaga - Dados da Vaga - Página 1 de 2</p>
                <div align="center">
                  <center>
                      <form action="/criarvaga" method="post">
                    <table id="AutoNumber3">
                        
                      <tr>
                        <td><p class="title-form">Cargo:</p></td>
                        <td height="22">
                          <input
                            class="form-control form-control-sm"
                            type="text"
                            name="cargo"
                            size="40"
                            placeholder="Cargo"
                          />
                        </td>
                      </tr>
                      
                      <tr>
                        <td><p class="title-form">Cidade:</p></td>
                        <td height="22">
                          <input
                            class="form-control form-control-sm"
                            type="text"
                            name="cidade"
                            size="20"
                            placeholder="Cidade"
                          />
                        </td>
                      </tr>

                      <tr>
                        <td><p class="title-form">Forma de Contratação:</p></td>
                        <td height="22">
                          <input
                            class="form-control form-control-sm"
                            type="text"
                            name="formaContratacao"
                            size="20"
                            placeholder="Forma de Contrataçã"
                          />
                        </td>
                      </tr>

                      <tr>
                        <td colspan="2" height="27">
                          <div class="button">
                            <input
                              class="btn btn-primary button"
                              type="submit"
                              value="Cadastrar Critérios"
                            />
                            <input
                              class="btn btn-primary button"
                              type="button"
                              value="Cancelar" 
                              onclick="location.href='/home'"
                            />
                          </div>
                        </td>
                      </tr>
                    </table>
                      </form>
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
