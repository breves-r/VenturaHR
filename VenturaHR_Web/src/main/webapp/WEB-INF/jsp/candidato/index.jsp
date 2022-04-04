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
          <link
            href="https://fonts.googleapis.com/icon?family=Material+Icons"
            rel="stylesheet"
          />

          <table
            border="1"
            cellpadding="5"
            cellspacing="0"
            style="border-collapse: collapse"
            bordercolor="#111111"
            width="100%"
            id="AutoNumber2"
          >
            <tr>
              <td valign="top">
                <p class="title">Bem Vindo/a ${user.getNome()}!</p>
                <table
                  border="1"
                  cellpadding="5"
                  cellspacing="0"
                  style="border-collapse: collapse"
                  bordercolor="#111111"
                  width="100%"
                  id="AutoNumber3"
                >
                  <tr>
                    <td width="100%" colspan="2">
                      <div class="button">
                        <input
                          class="btn btn-primary button"
                          type="button"
                          value="Alterar Dados"
                          onclick="location.href='009_04_Alterar_Usuario.html'"
                        />
                      </div>
                    </td>
                  </tr>
                  <tr>
                    <td width="50%" valign="top">
                      <p align="center">
                        <b><font size="3">Mensagens do Sistema:</font></b>
                      </p>
                      <p>
                        <font size="2"
                          >Lembre-se que é possível recomendar uma vaga aos seus
                          amigos - basta informar os seus emais</font
                        >
                      </p>
                    </td>
                    <td width="50%" valign="top">
                      <p align="center">
                        <b><font size="3">Suas Vagas Respondidas:</font></b>
                      </p>
                      <c:if test="${not empty vagasUser}">
                      <table
                        border="1"
                        cellpadding="0"
                        cellspacing="0"
                        style="border-collapse: collapse"
                        bordercolor="#111111"
                        width="100%"
                        id="AutoNumber4"
                      >
                        <tr>
                          <th width="200"><font size="2">Cargo</font></th>
                          <th width="100"><font size="2">Cidade</font></th>
                          <th width="1"><br /></th>
                        </tr>
                        <c:forEach var="v" items="${vagasUser}">
                        <tr>
                          <td width="200">
                            <font size="2">${v.cargo}</font>
                          </td>
                          <td width="100" >
                            <font size="2">${v.cidade}</font>
                          </td>
                          <td width="1" align="center">
                            <font size="2"
                              ><a href="a"
                                ><span class="material-icons">
                                  remove_red_eye
                                </span></a></font>
                          </td>
                        </tr>
                        </c:forEach>
                      </table>
                      </c:if>
                      <c:if test="${empty vagasUser}">
                            <p align="center">
                        <b><font size="2">Você ainda não respondeu nenhuma vaga!</font></b>
                      </p>
                      </c:if>
                    </td>
                  </tr>
                  
                      <div align="center">
                        <center>
                          <table
                            width="100%"
                            border="1"
                            cellpadding="3"
                            cellspacing="0"
                            style="border-collapse: collapse"
                            bordercolor="#111111"
                            id="AutoNumber6"
                          >
                              
                            <tr>
                                <td width="100%" colspan="2">
                                    <p align="center">
                                      <b><font size="3">Consulta de Vagas Disponíveis:</font></b>
                                    </p>
                                </td>
                              
                            </tr>
                            
                            <tr>
                                <td>
                                    <form action="/pesquisarCidade" method="post">
                                  
                                <div class="input-group mb-3">
                                    <input type="text" class="form-control" placeholder="Pesquisar por Cidade" name="pesquisa">
                                    <div class="input-group-append">
                                      <button class="btn btn-primary button" type="submit">Pesquisar</button>
                                    </div>
                                </div>
                                        
                                </form>
                              </td>
                            </tr>
                            
                            <tr>
                              <td>
                                  <form action="/pesquisarCargo" method="post">
                                  <div class="input-group mb-3">
                                    <input type="text" class="form-control" placeholder="Pesquisar por Cargo" name="pesquisa">
                                    <div class="input-group-append">
                                      <button class="btn btn-primary button" type="submit">Pesquisar</button>
                                    </div>
                                </div>
                                    </form>
                              </td>
                            </tr>
                            
                            <tr>
                              <td colspan="2">
                                <div class="button">
                                  <input
                                    class="btn btn-primary button"
                                    type="button"
                                    value="Ver Todas as Vagas" 
                                    onclick="location.href='/home'"
                                  />
                                </div>
                              </td>
                            </tr>
                            
                                <c:if test="${not empty vagas}">
                                    <table
                                      border="1"
                                      cellpadding="0"
                                      cellspacing="0"
                                      style="border-collapse: collapse"
                                      bordercolor="#111111"
                                      width="100%"
                                      id="AutoNumber7"
                                    >
                                      
                                      <tr>
                                        <th width="52%">
                                          <font size="4">Cargo</font>
                                        </th>
                                        <th width="21%">
                                          <font size="4">Cidade</font>
                                        </th>
                                        <th width="27%">
                                          <font size="4">Forma Contratação</font>
                                        </th>
                                        <th width="21%"><br /></th>
                                      </tr>
                                      
                                      <c:forEach var="v" items="${vagas}">
                                        <tr>
                                          <td width="52%">
                                            <font size="3">${v.cargo}</font>
                                          </td>
                                          <td width="21%">
                                            <font size="3">${v.cidade}</font>
                                          </td>
                                          <td width="27%">
                                            <font size="3">${v.formaContratacao}</font>
                                          </td>
                                          <td width="21%">
                                            <font size="2"
                                              ><a href="a"
                                                ><span class="material-icons">
                                                  remove_red_eye
                                                </span></a
                                              ></font>
                                          </td>
                                        </tr>
                                      </c:forEach>
                                      
                                    </table>
                                   </c:if>
                                   <c:if test="${empty vagas}">
                                       <p>Não existem vagas cadastradas!</p>
                                   </c:if>
                              </td>
                            </tr>
                          </table>
                        </center>
                      </div>
                    </td>
                  </tr>
                </table>
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
