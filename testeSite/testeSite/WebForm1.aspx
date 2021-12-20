<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="testeSite.WebForm1" %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="pageStyle.css" type="text/css" rel="stylesheet" /> 
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Formulário Dinâmico</title>
</head>
<body>
    <div class="box"> <!-- Div para englobar todas as tags, juntamente da classe 'box' -->
        <form method="post" runat="server"> <!-- Tag de formulário -->
            <fieldset> <!-- Box para agrupar os elementos -->
                
                <legend><b>Formulário Clientes</b></legend> <!-- Nome que irá ficar junto da box do fieldset -->

                <!-- QUEBRA DE LINHA -->
                <br/> 
                
                <!-- Div's criadas para facilitar o design, tendo em vista que o design dos 3 campos serão o mesmo, então colocá-los na mesma classe facilita-->
                <div class="inputBox">
                    <asp:TextBox runat="server" ID="nome" type="text" class="inputUser"></asp:TextBox> <!-- Caixa de entrada de dados para o nome | O 'required' indica que o campo é de preenchimento obrigatório -->
                    <asp:Label runat="server" class="labelInput">Nome Completo: </asp:Label> <!-- Label com o nome 'Nome: ' para o input email -->
                </div>
                
                <!-- QUEBRA DE LINHA PARA O ESPAÇAMENTO -->
                <br /><br /> 

                <div class="inputBox">
                    <asp:TextBox runat="server" ID="email" type="text" class="inputUser" > </asp:TextBox> <!-- Caixa de entrada de dados para o email -->
                    <asp:Label runat="server" class="labelInput">Email: </asp:Label> <!-- Label com o nome 'E-mail: ' para o input email -->
                </div>
                
                <!-- QUEBRA DE LINHA PARA O ESPAÇAMENTO -->
                <br /><br /> 

                <div class="inputBox">
                    <asp:TextBox runat="server" ID="telefone" type="tel" class="inputUser" /> <!-- Caixa de entrada de dados para o telefone -->
                    <asp:Label runat="server" class="labelInput">Telefone: </asp:Label> <!-- Label com o nome 'Telefone: ' para o input email -->
                </div>
                
                <!-- QUEBRA DE LINHA PARA O ESPAÇAMENTO -->
                <br /> 

                <!-- PARÁGRAFO PARA RECEBER O SEXO -->
                <p>Sexo:</p> 
                <asp:RadioButtonList runat="server" ID="generos"> 
                    <asp:ListItem>Feminino</asp:ListItem>
                    <asp:ListItem>Masculino</asp:ListItem>
                    <asp:ListItem>Outros</asp:ListItem>
                </asp:RadioButtonList>
                
                <!-- QUEBRA DE LINHA PARA O ESPAÇAMENTO -->
                <br /> 

                <!-- INPUT DATA -->
                <asp:Label runat="server" Text="Data de nascimento:"></asp:Label> <!-- Label com nome "Data de nascimento:" -->
                <asp:TextBox runat="server" type="date" id="data"></asp:TextBox> <!-- Input de calendário para marcar a data -->

                <!-- QUEBRA DE LINHA PARA O ESPAÇAMENTO -->
                <br /> <br /> <br /> 

                <!-- INPUT CIDADE -->
                <div class="inputBox">
                    <asp:TextBox runat="server" ID="cidade" type="text" class="inputUser" /> <!-- Caixa de entrada de dados para a cidade-->
                    <asp:Label runat="server" class="labelInput">Cidade: </asp:Label> <!-- Label com o nome 'Cidade: ' para o input cidade-->
                </div>
                
                <!-- QUEBRA DE LINHA PARA O ESPAÇAMENTO -->
                <br /><br /> 

                <!-- INPUT ESTADO -->
                <div class="inputBox">
                    <asp:TextBox runat="server" ID="estado" type="text" class="inputUser" /> <!-- Caixa de entrada de dados para o estado -->
                    <asp:Label runat="server" class="labelInput">Estado: </asp:Label> <!-- Label com o nome 'Estado: ' para o input estado-->
                </div>
                
                <!-- QUEBRA DE LINHA PARA O ESPAÇAMENTO -->
                <br /><br /> 

                <!-- INPUT ENDEREÇO -->
                <div class="inputBox">
                    <asp:TextBox runat="server" ID="endereco" type="text" class="inputUser" /> <!-- Caixa de entrada de dados para o endereço -->
                    <asp:Label runat="server" class="labelInput">Endereço: </asp:Label> <!-- Label com o nome 'Endereço: ' para o input endereço-->
                </div>  

                <!-- QUEBRA DE LINHA PARA O ESPAÇAMENTO -->
                <br /><br /> 

                <!-- BOTÃO -->
                <asp:Button ID="submit" OnClick="btnValidar_Click" runat="server" Text="Concluído" CssClass="button" /> <!-- Botão de id "submit" para salvar os dados -->


            </fieldset>
        </form>
    </div>
</body>
</html>
