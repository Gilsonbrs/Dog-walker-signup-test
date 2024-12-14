# Teste Automatizado: Cadastro de Dog Walker

Este repositório contém um teste automatizado desenvolvido em **Robot Framework** utilizando a **Browser Library** para validar o fluxo de cadastro de Dog Walkers no site [WalkDog](https://walkdog.vercel.app/). Este é um primeiro teste criado a partir de um curso na Udemy, com o objetivo de aplicar os conceitos aprendidos na prática.

---

 **Ferramentas Utilizadas**
- **Robot Framework**: Framework para automação de testes.
- **Browser Library**: Biblioteca para interação com navegadores.
- **Python**: Linguagem base para o Robot Framework.

---

 **Escopo do Teste**
O teste automatizado simula o processo de cadastro de um Dog Walker na página de cadastro do site. Ele cobre as seguintes etapas:

1. Acessar a página de cadastro.
2. Preencher os campos do formulário de cadastro:
   - Nome
   - E-mail
   - CPF
   - CEP (com validação automática do endereço)
   - Endereço
   - Número da residência
   - Upload de CNH (em formato de imagem).
3. Enviar o formulário de cadastro.
4. Validar a mensagem de sucesso: **"Recebemos o seu cadastro e em breve retornaremos o contato."**

---

 **Arquivos Principais**
- **`signup.robot`**: Arquivo principal contendo os casos de teste e palavras-chave customizadas para realizar o cadastro automatizado.

---

 **Como Executar o Teste**

1. **Instale as dependências necessárias**:
   - Certifique-se de ter o Python instalado.
   - Instale o Robot Framework e a Browser Library:
     ```bash
     pip install robotframework
     pip install robotframework-browser
     ```
   - Instale as dependências da Browser Library:
     ```bash
     rfbrowser init
     ```

2. **Execute o teste**:
   No diretório onde o arquivo `signup.robot` está localizado, execute:
   ```bash
   robot signup.robot
