<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="testeSite.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="/site/formularioStyle.css" type="text/css" rel="stylesheet" /> 
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Formulário Dinâmico</title>
</head>
<body>
    <div class="box"> <!-- Div para englobar todas as tags, juntamente da classe 'box' -->
        <form runat="server"> <!-- Tag de formulário -->
            <fieldset> <!-- Box para agrupar os elementos -->

                <legend><b>Formulário Clientes</b></legend> <!-- Nome que irá ficar junto da box do fieldset -->

                <br> <!-- Quebra de linha -->
                <!-- Div's criadas para facilitar o design, tendo em vista que o design dos 3 campos serão o mesmo, então colocá-los na mesma classe facilita-->
                <div class="inputBox">
                    <input type="text" name="nome" id="nome" class="inputUser" required /> <!-- Caixa de entrada de dados para o nome | O 'required' indica que o campo é de preenchimento obrigatório -->
                    <label for="nome" class="labelInput">Nome completo:</label>
                </div>
                <br /><br /> <!-- Quebra de linha para o espaçamento -->

                <div class="inputBox">
                    <input type="text" name="email" id="email" class="inputUser" required /> <!-- Caixa de entrada de dados para o email -->
                    <label for="email" class="labelInput">E-mail:</label> <!-- Label com o nome 'E-mail:' para o input email -->
                </div>
                <br /><br /> <!-- Quebra de linha para o espaçamento -->

                <div class="inputBox">
                    <input type="tel" name="telefone" id="telefone" class="inputUser" required /> <!-- Caixa de entrada de dados para o telefone -->
                    <label for="telefone" class="labelInput">Telefone:</label> <!-- Label com o nome 'Telefone:' para o input telefone -->
                </div>
                <br /> <!-- Quebra de linha para o espaçamento -->

                <p>Sexo:</p> <!-- Parágrafo para receber o sexo -->
                <input type="radio" id="feminino" name="genero" value="feminino" required /> <!-- Caixa para selecionar o tipo do sexo do cliente -->
                <label for="feminino">Feminino</label> <!-- Label com o nome 'Feminino' para o input feminino -->
                <br />
                <input type="radio" id="masculino" name="genero" value="masculino" required /> <!-- Caixa para selecionar o tipo do sexo do cliente -->
                <label for="masculino">Masculino</label> <!-- Label com o nome 'Masculino' para o input masculino -->
                <br />    
                <input type="radio" id="outro" name="genero" value="outro" required /> <!-- Caixa para selecionar o tipo do sexo do cliente -->
                <label for="outro">Outro</label> <!-- Label com o nome 'Outro' para o input outro -->
                <br /><br />
                    
                <label for="data"><b>Data de nascimento: </b></label> <!-- Label com o nome 'Data de nascimento' para o input data -->
                <input type="date" id="data" name="data" required /> <!-- Input com calendáro (tipo date) para coleta da data de nascimento -->

                <br /><br /> <!-- Quebra de linha para o espaçamento -->

                <div class="inputBox">
                    <input type="text" id="cidade" name="cidade" class="inputUser" required /> <!-- Input de texto para coleta da cidade -->
                    <label for="cidade" class="labelInput">Cidade:</label> <!-- Label com o nome 'Cidade:' para o input cidade -->
                </div>
                <br /><br /> <!-- Quebra de linha para o espaçamento -->

                <div class="inputBox">
                    <input type="text" id="estado" name="estado" class="inputUser" required /> <!-- Input de texto para coleta do estado -->
                    <label for="estado" class="labelInput">Estado:</label> <!-- Label com o nome 'Estado:' para o input estado -->
                </div>
                <br /><br /> <!-- Quebra de linha para o espaçamento -->

                <div class="inputBox">
                    <input type="text" id="endereco" name="endereco" class="inputUser" required /> <!-- Input de texto para coleta do endereço -->
                    <label for="endereco" class="labelInput">Endereço:</label> <!-- Label com o nome 'Endereço:' para o input endereco -->
                </div>
                <br /><br /> <!-- Quebra de linha para o espaçamento -->

                <input type="submit" name="submit" id="submit" /> <!-- Input do tipo submit para enviar os dados -->

            </fieldset>
        </form>
    </div>
</body>
</html>
