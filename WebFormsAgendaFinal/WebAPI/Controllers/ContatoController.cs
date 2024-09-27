using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;

namespace WebAPI.Controllers
{
    public class ContatoController : ApiController
    {
        // Exemplo de retorno de lista de contatos (pode conectar ao seu banco de dados)
        [HttpGet]
        public IEnumerable<string> Get()
        {
            return new string[] { "Contato 1", "Contato 2" };
        }

        // Adicionar um novo contato
        [HttpPost]
        public IHttpActionResult Post([FromBody] string contato)
        {
            // Lógica para adicionar contato
            return Ok("Contato adicionado com sucesso!");
        }
    }
}

