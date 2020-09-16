# app-flutter
Repositório dedicado a matéria de programação para dispositivo Web - professor Rodrigo Fujioka

# Grupo
Addam leite da cruz 
10755845

Gabriel Vianna dos Santos Pereira
10659684

João Neto
não sabe o rgm

Pedro Henrique de Moraes
10754814

Rebecca Medeiros Martins Silva de Oliveira 
10738746

Sabrina Akemi Saito
10724991

# Exercicio 1 - (algumas) camadas do flutter

Framework (dart)

Animation
Para que serve? 
Para tornar a UI mais intuitiva, contribuir para a aparência elegante de um aplicativo refinado e melhorar a experiência do usuário
Funcionamento: 
1. Tween animation - Em uma animação de interpolação, os pontos inicial e final são definidos, bem como uma linha do tempo e uma curva que define o tempo e a velocidade da transição. A estrutura calcula como fazer a transição do ponto inicial ao ponto final.
2. Physics-based animation - Na animação baseada na física, o movimento é modelado para se assemelhar ao comportamento do mundo real.
3. Pre-canned animations - Este pacote contém animações pré-construídas para os seguintes padrões comumente usados: Containertransformações, transições de eixo compartilhadas, transições de esmaecimento e transições de esmaecimento.

Gestures
Para que serve? 
Para definir qualquer ação física ou movimento de um usuário na intenção de controlar o dispositivo móvel.
Funcionamento: 
Flutter fornece um widget que oferece excelente suporte para todos os tipos de gestos usando o widget GestureDetector. O GestureWidget é um widget não visual, que é usado principalmente para detectar o gesto do usuário. A ideia básica do detector de gestos é um widget sem estado que contém parâmetros em seu construtor para diferentes eventos de toque.
Objetivo: 
Permitir a interação com o aplicativo
móvel (ou qualquer dispositivo baseado em toque).

Platform channels
Para que serve? 
Ele opera com base no princípio de envio e recebimento de mensagens, sem geração de código. A comunicação é bidirecional e assíncrona.
Funcionamento: 
Usado para implementar qualquer funcionalidade ausente do Flutter usando um código específico da plataforma (plug-ins) e chamar quaisquer APIs disponíveis em código Java ou Kotlin no Android ou em código Objective-C ou Swift no iOS
Objetivo: 
Estabelecer comunicação entre a plataforma e os aplicativos específicos.


Frame scheduling
Para que serve? 
Despacha processos selecionados em uma taxa em tempo real em uma CPU. Você também pode criar vários Frame Schedulers sincronizados para despachar processos simultâneos em várias CPUs.
Funcionamento: 
Um Frame Scheduler assume o agendamento e despacho de processos em uma CPU. Ele isola a CPU (consulte “Isolando uma CPU das interrupções TLB” ) e substitui completamente a operação do escalonador IRIX normal nessa CPU. Somente os processos enfileirados no Frame Scheduler podem usar a CPU. As prioridades de despacho IRIX não são relevantes nessa CPU. Se essa CPU for atribuída a um conjunto de processadores (consulte “Usando conjuntos de processadores” ), a atribuição do conjunto será ignorada enquanto o Frame Scheduler estiver em execução.
Objetivo: 
Facilitar a estruturação de um programa em tempo real como uma família de processos independentes e cooperativos, rodando em várias CPUs, programados em sequência na taxa de quadros do aplicativo.


# app_flutter

A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://flutter.dev/docs/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://flutter.dev/docs/cookbook)

For help getting started with Flutter, view our
[online documentation](https://flutter.dev/docs), which offers tutorials,
samples, guidance on mobile development, and a full API reference.
