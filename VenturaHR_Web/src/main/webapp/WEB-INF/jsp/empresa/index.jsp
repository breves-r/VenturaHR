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
                         
                        <a href="/vaga" class="btn btn-primary button">Criar Vaga</a>
                        
                      </div>
                    </td>
                  </tr>
                  <tr>
                    <td width="50%" valign="top">
                      <p align="center">
                        <b><font size="2">Mensagens do Sistema:</font></b>
                      </p>
                      <p>
                        <font size="2"
                          >Atenção: entre em contato com a administração para
                          resolver pendências de pagamento</font
                        >
                      </p>
                    </td>
                    <td width="50%" valign="top">
                      <p align="center">
                        <b><font size="2">Suas Vagas Publicadas:</font></b>
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
                              ><a href="a">
                                <span class="material-icons"
                                  >remove_red_eye</span
                                >
                              </a></font
                            >
                          </td>
                        </tr>
                        </c:forEach>
                        
                      </table>
                      </c:if>
                      <c:if test="${empty vagas}">
                            <p>Não existem vagas publicadas!</p>
                      </c:if>
                    </td>
                  </tr>
                  <tr>
                    <td width="100%" colspan="2">
                      <p align="center">
                        <b
                          ><font size="2"
                            >Consulta de Vagas Disponíveis:</font
                          ></b
                        >
                      </p>
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
                              <td>
                                <font size="2"
                                  >com <b>todas</b> as palavras</font
                                >
                              </td>
                              <td>
                                <input
                                  type="text"
                                  name="pesquisa_1"
                                  size="60"
                                />
                              </td>
                            </tr>
                            <tr>
                              <td>
                                <font size="2"
                                  >com <b>qualquer uma</b> das palavras</font
                                >
                              </td>
                              <td>
                                <input
                                  type="text"
                                  name="pesquisa_2"
                                  size="60"
                                />
                              </td>
                            </tr>
                            <tr>
                              <td>
                                <b><font size="2">sem</font></b
                                ><font size="2"> as palavras</font>
                              </td>
                              <td>
                                <input
                                  type="text"
                                  name="pesquisa_3"
                                  size="60"
                                />
                              </td>
                            </tr>
                            <tr>
                              <td colspan="2">
                                <div class="button">
                                  <input
                                    class="btn btn-primary button"
                                    type="submit"
                                    value="Pesquisar Vagas"
                                  />
                                </div>
                              </td>
                            </tr>
                            <tr>
                              <td colspan="2">
                                <p
                                  align="center"
                                  style="margin-top: 0; margin-bottom: 0"
                                >
                                  <font size="2"
                                    ><b>34 Vagas encontradas</b>, exibindo de 1
                                    a 5</font
                                  >
                                </p>
                                <p
                                  align="center"
                                  style="margin-top: 0; margin-bottom: 0"
                                >
                                  <font size="2"
                                    >[<a href="a">Início</a> |
                                    <a href="a"> Anterior</a>]
                                    <a href="a">1</a> <a href="a">2</a>
                                    <a href="a">3</a> <a href="a">4</a> [<a
                                      href="a"
                                      >Próxima</a
                                    >
                                    | <a href="a">Fim</a>]</font
                                  >
                                </p>
                                <p
                                  align="left"
                                  style="margin-top: 0; margin-bottom: 0"
                                >
                                  <br />
                                </p>
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
                                      <%--  <tr>
                                        <td width="27%">
                                          <font size="2">Programador Java</font>
                                        </td>
                                        <td width="52%">
                                          Phasellus adipiscing feugiat magna.
                                        </td>
                                        <td width="21%">
                                          <font size="2">São Paulo</font>
                                        </td>
                                        <td width="21%">
                                          <font size="2"
                                            ><a href="a"
                                              ><span class="material-icons">
                                                remove_red_eye
                                              </span></a
                                            ></font
                                          >
                                        </td>
                                      </tr>
                                      <tr>
                                        <td width="27%">
                                          <font size="2">Gerente de Projetos</font>
                                        </td>
                                        <td width="52%">Nam pretium nisi.</td>
                                        <td width="21%">
                                          <font size="2">Vitória</font>
                                        </td>
                                        <td width="21%">
                                          <font size="2"
                                            ><a href="a"
                                              ><span class="material-icons">
                                                remove_red_eye
                                              </span></a
                                            ></font
                                          >
                                        </td>
                                      </tr>
                                      <tr>
                                        <td width="27%">
                                          <font size="2"
                                            >Suporte de Rede Wireless</font
                                          >
                                        </td>
                                        <td width="52%">
                                          Aenean felis leo, sagittis ac, aliquam
                                          sed, mattis eu, ligula.
                                        </td>
                                        <td width="21%">
                                          <font size="2">Brasília</font>
                                        </td>
                                        <td width="21%">
                                          <font size="2"
                                            ><a href="a"
                                              ><span class="material-icons">
                                                remove_red_eye
                                              </span></a
                                            ></font
                                          >
                                        </td>
                                      </tr>
                                      <tr>
                                        <td width="27%">
                                          <font size="2">Arquiteto J2EE</font>
                                        </td>
                                        <td width="52%">
                                          Ut pede tortor, sodales a, hendrerit eget,
                                          pellentesque in, leo.
                                        </td>
                                        <td width="21%">
                                          <font size="2">Salvador</font>
                                        </td>
                                        <td width="21%">
                                          <font size="2"
                                            ><a href="a"
                                              ><span class="material-icons">
                                                remove_red_eye
                                              </span></a
                                            ></font
                                          >
                                        </td>
                                      </tr> --%>
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
