<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="pt-br">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link
      rel="shortcut icon"
      href="./assets/img/favicon.ico"
      type="image/x-icon"
    />
    <link rel="stylesheet" href="./assets/css/bootstrap.min.css" />
    <link rel="stylesheet" href="./assets/css/style.css" />
    <title>Ventura HR</title>
    <link
      href="https://fonts.googleapis.com/icon?family=Material+Icons"
      rel="stylesheet"
    />
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
          <table id="AutoNumber1">
            <table id="AutoNumber2">
              <tr>
                <td width="500" valign="top">
                  <p class="title">10 Últimas Vagas Publicadas</p>
                  <table class="table table-bordered" id="AutoNumber3">
                    <thead>
                      <tr class="sub-title">
                        <th scope="col">Cargo</th>
                        <th scope="col" colspan="2">Descrição</th>
                        <th scope="col">Cidade</th>
                        <th scope="col">Link</th>
                      </tr>
                    </thead>
                    <tbody>
                      <tr>
                        <th>Engenheiro de Software</th>
                        <td colspan="2">
                          Lorem ipsum dolor sit amet, consectetuer adipiscing.
                        </td>
                        <td>Rio de Janeiro</td>
                        <td>
                          <a href="a">
                            <span class="material-icons">remove_red_eye</span>
                          </a>
                        </td>
                      </tr>
                      <tr>
                        <th>Programador Java</th>
                        <td colspan="2">
                          Lorem ipsum dolor sit amet, consectetuer adipiscing.
                        </td>
                        <td>São Paulo</td>
                        <td>
                          <a href="a">
                            <span class="material-icons">remove_red_eye</span>
                          </a>
                        </td>
                      </tr>
                      <tr>
                        <th>Gerente de Projetos</th>
                        <td colspan="2">
                          Lorem ipsum dolor sit amet, consectetuer adipiscing.
                        </td>
                        <td>Vitória</td>
                        <td>
                          <a href="a">
                            <span class="material-icons">remove_red_eye</span>
                          </a>
                        </td>
                      </tr>
                      <tr>
                        <th>Suporte de Rede</th>
                        <td colspan="2">
                          Lorem ipsum dolor sit amet, consectetuer adipiscing.
                        </td>
                        <td>Salvador</td>
                        <td>
                          <a href="a">
                            <span class="material-icons">remove_red_eye</span>
                          </a>
                        </td>
                      </tr>
                      <tr>
                        <th>Scrum Master</th>
                        <td colspan="2">
                          Lorem ipsum dolor sit amet, consectetuer adipiscing.
                        </td>
                        <td>Santa Catarina</td>
                        <td>
                          <a href="a">
                            <span class="material-icons">remove_red_eye</span>
                          </a>
                        </td>
                      </tr>
                      <tr>
                        <th>Desenvolvedor React</th>
                        <td colspan="2">
                          Lorem ipsum dolor sit amet, consectetuer adipiscing.
                        </td>
                        <td>Brasília</td>
                        <td>
                          <a href="a">
                            <span class="material-icons">remove_red_eye</span>
                          </a>
                        </td>
                      </tr>
                      <tr>
                        <th>Desevolvedor Python</th>
                        <td colspan="2">
                          Lorem ipsum dolor sit amet, consectetuer adipiscing.
                        </td>
                        <td>Campinas</td>
                        <td>
                          <a href="a">
                            <span class="material-icons">remove_red_eye</span>
                          </a>
                        </td>
                      </tr>
                      <tr>
                        <th>Programador FullStack</th>
                        <td colspan="2">
                          Lorem ipsum dolor sit amet, consectetuer adipiscing.
                        </td>
                        <td>Belo Horizonte</td>
                        <td>
                          <a href="a">
                            <span class="material-icons">remove_red_eye</span>
                          </a>
                        </td>
                      </tr>
                    </tbody>
                  </table>
                </td>
                <td valign="top">
                  <p class="title">Acesso ao Sistema</p>
                      <table id="AutoNumber4" class="center">
                        <form>
                          <div class="form-group row">
                            <tr>
                              <td>
                                <p class="title">Email:</p>
                              </td>
                              <td>
                                <input
                                  class="form-control form-control-sm"
                                  type="email"
                                  name="email"
                                  size="30"
                                  placeholder="seuemail@dominio.com"
                                />
                              </td>
                            </tr>
                          </div>

                          <div class="form-group row">
                            <tr>
                              <td>
                                <p class="title">Senha:</p>
                              </td>
                              <td>
                                <input
                                  class="form-control form-control-sm"
                                  type="password"
                                  name="senha"
                                  size="30"
                                  placeholder="Password"
                                />
                              </td>
                            </tr>
                          </div>
                          <tr>
                            <td colspan="2">
                              <div class="button">
                                <input
                                  class="btn btn-primary button"
                                  type="button"
                                  value="Entrar"
                                />
                              </div>
                            </td>
                          </tr>
                        </form>
                      </table>
                  <br />
                  <div class="container">
                    <table id="AutoNumber5">
                      <tr>
                        <td>
                          <div class="button">
                            <p class="sub-title">Não tem conta no site?</p>
                            <input
                              class="btn btn-primary button"
                              type="button"
                              value="Cadastrar"
                              onclick="location.href='cadastro.jsp'"
                            />
                          </div>
                        </td>
                      </tr>
                      <tr>
                        <td>
                          <p class="sub-title">
                            Benefícios de se cadastrar como membro:
                          </p>
                          <p>
                            Lorem ipsum dolor sit amet, consectetuer adipiscing
                            elit.
                          </p>
                          <p>
                            Phasellus adipiscing feugiat magna. Nam pretium
                            nisi. Aenean felis leo, sagittis ac, aliquam sed,
                            mattis eu, ligula.
                          </p>
                          <p>
                            Ut pede tortor, sodales a, hendrerit eget,
                            pellentesque in, leo.
                          </p>
                        </td>
                      </tr>
                    </table>
                  </div>
                </td>
              </tr>
            </table>
          </table>
        </div>
      </div>
    </main>

    <div class="footer">
      <p class="rodape">Ventura HR © 2022 Company</p>
    </div>
  </body>
</html>
