using System;
using System.Web;

namespace testeSite
{
    public class funcoes : IHttpModule
    {
        /// <summary>
        /// Será necessário configurar este módulo no arquivo Web.config do seu
        /// web e registrá-lo no IIS para que ele possa ser usado. Para obter mais informações,
        /// consulte o seguinte link: https://go.microsoft.com/?linkid=8101007
        /// </summary>
        #region Membros IHttpModule

        public void Dispose()
        {
            //código de limpeza aqui.
        }

        public void Init(HttpApplication context)
        {
            // Abaixo está um exemplo de como é possível tratar o evento LogRequest e fornecer 
            // implementação do registro em log personalizada para ele
            context.LogRequest += new EventHandler(OnLogRequest);
        }

        #endregion

        public void OnLogRequest(Object source, EventArgs e)
        {
            //a lógica do registro em log personalizada pode vir aqui
        }
    }
}
