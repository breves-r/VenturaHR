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
            id="AutoNumber2"
          >
            <tr>
              <td valign="top">
                <p class="title">
                  Publicar Vaga - Dados dos Critérios - Página 2 de 2
                </p>
                <p class="sub-title center">
                <b>Cargo: </b>${vaga.cargo} | <b>Contratação:</b> ${vaga.formaContratacao} |
                    <b>Cidade:</b>${vaga.cidade}
                </p>
                <center>
                    <form action="/criarcriterio" method="post">
                <table
                >
                    
                  <tr>
                    <th width="380"><font size="3">Descrição</font></th>
                    <th width="68"><font size="3">Perfil</font></th>
                    <th width="68"><font size="3">Peso</font></th>
                    <th width="53"><br /></th>
                  </tr>
                  <tr>
                 
                    <td>
                        <div class="form-group">
                        <input type="text" name="descricao" size="25" class="form-control"/>
                        </div>
                    </td>
                    <td>
                        <div class="form-group">
                      <select name="perfil" class="form-control">
                        <option>1</option>
                        <option>2</option>
                        <option>3</option>
                        <option>4</option>
                        <option>5</option>
                      </select>
                        </div>
                    </td>
                    <td>
                        <div class="form-group">
                      <select name="peso" class="form-control">
                        <option>1</option>
                        <option>2</option>
                        <option>3</option>
                        <option>4</option>
                        <option>5</option>
                      </select>
                        </div>
                    </td>
                    <td align="center">
                        <input
                              class="btn btn-primary button"
                              type="submit"
                              value="Adicionar"
                            />
                    </td>
                  </tr>
                </table>
                </form>

                <br />
                <center>
                <table
                >
                  <c:if test="${not empty criterios}">
                      
                    <tr>
                    <th width="380"><font size="3">Descrição</font></th>
                    <th width="68"><font size="3">Perfil</font></th>
                    <th width="68"><font size="3">Peso</font></th>
                    </tr>
                  
                  <c:forEach var="c" items="${criterios}">
                  <tr>
                    <td width="380">
                      <font size="3">${c.descricao}</font
                      >
                    </td>
                    
                    <td width="68" align="center"><font size="3">${c.perfil}</font></td>
                    <td width="68" align="center"><font size="3">${c.peso}</font></td>
                  </c:forEach>
                  </c:if>
                
                  <tr></tr>
                  <tr>
                    <td colspan="8" align="center">
                        <form action="/publicarvaga" method="post">
                      <div class="button">
                          
                          <input
                              class="btn btn-primary button"
                              type="submit"
                              value="Publicar Vaga"
                            />
                       
                      </div>
                       </form>
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
