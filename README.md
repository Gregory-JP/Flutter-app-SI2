<h1 align="center"> Criando um CRUD em Flutter </h1>
<div align="center">
<img src="https://blog.gft.com/br/wp-content/uploads/sites/4/2021/05/1.jpg" width="720px" height="360px">
</div>

<br>

> Trabalho destinado a disciplina de Sistemas para Internet 2 - FURG (6º semestre) <br>
Integrantes do grupo: [Gregory Pitthan](https://github.com/Gregory-JP), [Jeferson Lopes](https://github.com/thelopesbr) e [Samuel Gomes](https://github.com/Saesel).


## O que significa a sigla CRUD?
- Create (criar)
- Read (ler)
- Update (atualizar)
- Delete (deletar)



## Vantagens do Flutter

O Flutter é uma plataforma de desenvolvimento de aplicativos móveis que permite criar aplicativos nativos para as plataformas Android e iOS a partir de um único código base. Algumas das principais vantagens do Flutter incluem:

- **Desenvolvimento rápido:** o Flutter tem uma funcionalidade de "atualização em tempo real", o que significa que você pode ver as alterações no código refletidas no  aplicativo em tempo real, sem ter que recompilar o código. Isso pode economizar muito tempo durante o processo de desenvolvimento.

- **Design atraente:** o Flutter vem com uma biblioteca de componentes de interface de usuário (UI) atraentes e altamente personalizáveis. Isso permite que você crie aplicativos com designs atraentes e consistentes, independentemente da plataforma.

- **Performance:** o Flutter é baseado em C++ e compila o código diretamente para o código nativo das plataformas, o que resulta em aplicativos com excelente performance.

- **Suporte para testes:** o Flutter vem com ferramentas de teste integradas, o que facilita muito o processo de teste e validação de aplicativos.

- **Código único para várias plataformas:** como mencionado anteriormente, o Flutter permite que você crie aplicativos para Android e iOS a partir de um único código base. Isso pode economizar muito tempo e esforço no processo de desenvolvimento, especialmente se você precisar criar versões para ambas as plataformas.

## Desvantagens do Flutter

- **Aprendizado:** o Flutter é baseado em Dart, uma linguagem de programação relativamente nova e pouco conhecida. Isso pode significar que levará mais tempo para os desenvolvedores aprenderem a usar o Flutter e se tornarem proficientes nele.

- **Suporte limitado a plataformas:** embora o Flutter possa ser usado para criar aplicativos para Android e iOS, ele ainda não oferece suporte nativo para outras plataformas, como Windows ou macOS.

- **Biblioteca de componentes limitada:** embora o Flutter tenha uma biblioteca de componentes de interface de usuário bastante completa, ela ainda não é tão ampla quanto as oferecidas por outras plataformas de desenvolvimento de aplicativos, como o Android ou o iOS. Isso pode significar que os desenvolvedores precisarão criar alguns componentes customizados de interface de usuário por conta própria.

- **Integração com plataformas nativas:** em alguns casos, pode ser difícil integrar o Flutter com recursos nativos das plataformas, como a câmera ou o gerenciamento de senhas. Isso pode exigir mais tempo e esforço para implementar esses recursos em um aplicativo Flutter.

- **Comunidade menor:** como uma plataforma relativamente nova, o Flutter ainda tem uma comunidade menor de desenvolvedores e uma base de usuários menor do que outras plataformas de desenvolvimento de aplicativos móveis, como o Android ou o iOS. Isso pode significar que há menos recursos e exemplos disponíveis para ajudar os desenvolvedores a resolver problemas ou aprender a usar o Flutter.

## Como rodar o projeto?
Existem 2 formas para isso, usando o GIT ou baixando o projeto em um zip.

No primeiro caso, você pode copiar o *link* do projeto e usar o comando `git clone` *link*.
Em alternativa ao primeiro caso, você pode baixar o zip com todos os arquivos e extrair para uma pasta de sua preferência.


Feito isso, abra a pasta no VS Code e instale todas as dependências do projeto, normalmente o VS Code vai mostrar uma notificação, clique em *pub get*. Caso não apareça, abra o CMD na pasta do projeto e rode o comando `flutter pub get` que a instalação das depêndencias será feita.
Agora que tudo está pronto, você já pode iniciar o emulador ou abrir no Chrome e rodar o projeto.

Caso encontre qualquer problema em relação a dependências, abra o CMD e use o comando `flutter doctor` para verificar os requisitos ou o comando `flutter upgrade` para atualizar o Flutter para a versão mais recente.
