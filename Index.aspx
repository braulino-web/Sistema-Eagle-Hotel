<%@ Page Title="" Language="C#" MasterPageFile="~/Layout.Master" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="Eagle_Hotel_Web_Master.Index" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <body>
    <!-- Banner -->
    <div class="banner d-flex align-items-center" style="background: linear-gradient( rgba(0, 0, 0, 0.7),rgba(0, 0, 0, 0.7)),  url(assets/banner2.jpg) ; min-height: 600px; background-position-y: center;">
        <div class="jumbotron text-center text-white w-100 bg-transparent" >
            <div class="banner-conteudo mt-auto">
            <h1 class="display-4 font-weight-bold text-uppercase">As férias do seu sonho começam aqui!</h1>
            <p class="lead mt-3">Conheça o melhor hotel do Brasil com o melhor preço </p>
            <a class="btn btn-primary btn-lg mt-3 font-weight-bold" href="#" role="button">VER SUITES</a>
        </div>
        </div>
    </div>

    <!-- SOBRE -->
    <div class="sobre">
      <div class="container">
        <div class="row my-5 align-items-center">
            <div class="col-12 col-sm-6 titulo ">
                <h2 class=" semi-bold h1 marrom">Bem vindo ao Eagle Hotel</h2>
                <hr>
                <p class="sans">Passe suas férias com a gente e venha se divertir em família em nossas suítes luxuosas e piscinas.</p>
                <p class="sans">Suites de ótima qualidade, todas com ar condicionado. Com 20 anos de tradição garantimos o conforto que você merece</p>
                <h2 class=" semi-bold h2 marrom"> <i class="uil uil-map-marker"></i> Sorocaba - <small>10 Min do Centro</small></h2>
                
            </div>
            <div class="col-12 col-sm-6">
                <img src="assets/banner 1.jpg" alt="" class="w-100 p-4">
            </div>
        </div>
      </div>
    </div>

    <!-- Depoimentos -->
    <div class="depoimentos py-3 bg-light">
      <div class="container text-center">
        <p class="h2 titulo marrom text-center w-100 pt-5 semi-bold ">Alguns Depoimentos</p>
        <div class="row ">
          <div class="col-12 col-sm-6 my-3 d-flex flex-column">
            <p class="stars align-self-center">   <i class="uil uil-star"></i> <i class="uil uil-star"></i> <i class="uil uil-star"></i> <i class="uil uil-star"></i> <i class="uil uil-star"></i> </p>
            <p class="w-75 align-self-center"> "...Esta é sem dúvidas a melhor suite que já me hospedei. Obrigado por todo o excelente serviço prestado e ótimo atendimento. Definitivamente recomento para estadias curtas ou longas."</p>
            <img src="assets/Person1.png" alt="Depoimento" class="w-25 py-2 align-self-center">
            <h4 class="marrom titulo bold align-self-center">Jane Winston</h4>
          </div>
          <div class="col-12 col-sm-6 my-5 d-flex flex-column">
            <p class="stars align-self-center">   <i class="uil uil-star"></i> <i class="uil uil-star"></i> <i class="uil uil-star"></i> <i class="uil uil-star"></i> <i class="uil uil-star"></i> </p>
            <p class="w-75 align-self-center"> "Não tenho palavras para descrever o quanto foi incrivel minha estadia e hospitalidade que todos tiveram comigo, queria agradecer a equipe e todos os envolvidos, nota 10."</p>
            <img src="assets/Person2.png" alt="Depoimento" class="w-25 py-2 align-self-center">
            <h4 class="marrom titulo bold align-self-center">Jack Jhonson</h4>
          </div>  
        </div>
     </div>
    </div>

    <!-- Quartos -->

    <div class="quartos py-5">
      <div class="container">
        <p class="h1 titulo text-white text-center w-100 pt-5 pb-3  ">Nossos Quartos</p>
        <hr border-0>
        <div class="row ">
          <div class="col-12 col-sm-6 titulo text-white text-center pt-3">
            <img src="assets/quarto casal.jpg" alt="Qaurto casal">
            <small class="pt-3 ">1 CAMA LUXO</small>
            <p class="h1 py-2">Casal</p>
            <hr border-0>
            <p class="sans pt-2">Temos diversos pacotes e a opção de escolha de camas</p>
            <button class="btn btn-primary border-0 rounded-0 py-2" type="button">Ver Quarto</button>
          </div>
          <div class="col-12 col-sm-6 titulo text-white text-center pt-3">
            <img src="assets/familia.jpg" alt="Quarto Familia">
            <small class="pt-3 ">2 CAMA LUXO</small>
            <p class="h1 py-2">Família</p>
            <hr border-0>
            <p class="sans pt-2">Espaços completos para você e sua família, não perca</p>
            <button class="btn btn-primary border-0 rounded-0 py-2" type="button">Ver Quarto</button>
          </div>
        </div>

        <div class="row pt-5">
          <div class="col-12 col-sm-6 titulo text-white text-center pt-3">
            <img src="assets/suite.jpg" alt="Qaurto casal">
            <small class="pt-3 ">SUÍTE</small>
            <p class="h1 py-2">Athena</p>
            <hr border-0>
            <p class="sans pt-2">Suíte ampla e luxuosa com um toque rústico, ótima para lua de mel</p>
            <button class="btn btn-primary border-0 rounded-0 py-2" type="button">Ver Suíte</button>
          </div>
          <div class="col-12 col-sm-6 titulo text-white text-center pt-3">
            <img src="assets/suite2.jpg" alt="Quarto Familia">
            <small class="pt-3 ">SUÍTE</small>
            <p class="h1 py-2">Apollo</p>
            <hr border-0>
            <p class="sans pt-2">Suíte Confortável e luxuosa, ótima para descansar, você se sente nas nuvens</p>
            <button class="btn btn-primary border-0 rounded-0 py-2" type="button">Ver Suíte</button>
          </div>
        </div>
      
      </div>
    </div>

    <!-- Diferenciais -->

    <div class="diferenciais py-5 bg-light">
      <div class="container">
        <p class="h1 titulo marrom semi-bold text-center w-100 py-4  ">Porque nos escolher?</p>
          <div class="row">
            <div class="col-12 col-sm-4 text-center marrom">
              <i class="uil uil-star dif-icon"></i>
              <p class="h2 titulo semi-bold">Chef 5 Estrelas</p>
              <small>Temos um Chef 5 estrelas para preparar as mais deliciosas comidas para você.</small>
            </div>
            <div class="col-12 col-sm-4 text-center marrom">
              <i class="uil uil-clock dif-icon"></i>
              <p class="h2 titulo semi-bold">Serviços 24H</p>
              <small>Nossa equipe sempre vai estar a sua disposição independente do horário</small>
            </div>
            <div class="col-12 col-sm-4 text-center marrom">
              <i class="uil uil-analysis dif-icon"></i>
              <p class="h2 titulo semi-bold">Coworking</p>
              <small>Temos salas para reuniões e coworking para você realizar vários networking</small>
            </div>
          </div>
      </div>
    </div>

    <!-- Galeria de Imagens -->

    <div class="container py-5 text-center marrom">
      <p>SEÇÃO DESCANÇO</p>
      <P class="h1">Confira nossos ambientes</P>
      <div class="owl-carousel owl-theme owl-loaded py-4">
        <div class="owl-stage-outer">
            <div class="owl-stage">
                <div class="owl-item">
                  <img src="assets/ambiente1.jpg" alt="">
                </div>
                <div class="owl-item">
                  <img src="assets/ambiente2.jpg" alt="">
                </div>
                <div class="owl-item">
                  <img src="assets/ambiente3.jpg" alt="">
                </div>
                <div class="owl-item">
                  <img src="assets/ambiente4.jpg" alt="">
                </div>
                <div class="owl-item">
                  <img src="assets/ambiente5.jpg" alt="">
                </div>
                <div class="owl-item">
                  <img src="assets/ambiente6.jpg" alt="">
                </div>
                <div class="owl-item">
                  <img src="assets/ambiente7.jpg" alt="">
                </div>
            </div>
        </div>
      </div>
    </div>

    <!-- contador -->
    <div class="contador py-5">
      <div class="container text-center text-white">
        <P class="h1">Nossas Estatísticas</P>
        <div class="row">
          <div class="col-12 col-sm-4 titulo pt-3">
            <small>+ de</small><p class="counter-up h1 semi-bold" data-count-to="5000"></p>
            <p class="sub-contador">Hospedes</p>
          </div>
          <div class="col-12 col-sm-4 titulo pt-3">
            <small>+ de</small><p class="counter-up h1 semi-bold" data-count-to="20"></p>
            <p class="sub-contador">Anos de História</p>
          </div>
          <div class="col-12 col-sm-4 titulo pt-3">
            <small>+ de</small><p class="counter-up h1 semi-bold" data-count-to="30"></p>
            <p class="sub-contador">Quartos e Suítes</p>
          </div>
        </div>
      </div>
    </div>

    <!-- Contato e Mapa -->
    <div class="contato py-5 bg-light">
      <div class="container">
        <p class="h1 titulo marrom text-center py-4 semi-bold">Contatos</p>
        <div class="row marrom">
          <div class="col-12 col-sm-6 text-center pb-2">
            <p class="h2 titulo">Venhas nos visitar <i class="uil uil-map-marker"></i></p>
            <iframe style="filter: invert(80%)" class="rounded mw-100 " src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3658.9845587424684!2d-47.45747208440788!3d-23.49706566510761!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x94c58aa472e64527%3A0xc21ffa386514f88c!2sR.%20Dr.%20%C3%81lvaro%20Soares%2C%20451%20-%20Centro%2C%20Sorocaba%20-%20SP%2C%2018010-191!5e0!3m2!1spt-BR!2sbr!4v1633842388536!5m2!1spt-BR!2sbr" width="500" height="400" style="border:0;" allowfullscreen="" loading="lazy"></iframe>
          </div>
          <div class="col-12 col-sm-6 text-center my-auto  pb-2">
            <p class="h2 titulo pb-3">Fale Conosco </i></p>
            <p class="h5 pb-3"><i class="uil uil-phone-alt"></i>Telefone:(15) 3222-3663</p>
            <p class="h5 pb-3"><i class="uil uil-whatsapp"></i></i>WhatsApp:(15) 99745-8556</p>
            <p class="h5 pb-3"><i class="uil uil-envelope-alt"></i>Email:contato@eaglehotel.com.br</p>


            <button type="button" class="btn btn-primary rounded-0" data-toggle="modal" data-target="#formContato">
              Envie uma mensagem
            </button>
            
            <!-- Modal -->
            <div class="modal fade pb-3" id="formContato" tabindex="-1" aria-labelledby="formContato" aria-hidden="true">
              <div class="modal-dialog">
                <div class="modal-content">
                  <div class="modal-header">
                    <h5 class="modal-title" id="formContato">Fale Conosco</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                      <span aria-hidden="true">&times;</span>
                    </button>
                  </div>
                  <div class="modal-body text-left">
                    <form>
                      <div class="form-group">
                        <label for="nome">Nome</label>
                        <input type="text" class="form-control" id="nome" placeholder="Ex: Joao Neves">
                      </div>
                      <div class="form-group">
                        <label for="email">Email</label>
                        <input type="email" class="form-control" id="email" placeholder="Ex: name@example.com">
                      </div>
                      <div class="form-group">
                        <label for="telefone">Telefone</label>
                        <input type="tel" class="form-control" id="telefone" placeholder="Ex: 15987654321">
                      </div>
                      <div class="form-group">
                        <label for="mensagem">Mensagem</label>
                        <textarea class="form-control" id="mensagem" rows="3" placeholder="Escreva sua mensagem aqui"></textarea>
                      </div>
                    </form>
                  </div>
                  <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Fechar</button>
                    <button type="button" class="btn btn-primary">Enviar</button>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>  
    
    </div>



  </body>

</asp:Content>
