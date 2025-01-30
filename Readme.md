# Sistema de Controle de Ordens de Serviço em Oficina Mecânica

## Descrição do Projeto

Este projeto tem como objetivo criar um sistema de controle e gerenciamento de execução de ordens de serviço (OS) em uma oficina mecânica. O sistema permite que clientes levem seus veículos para conserto ou revisão, e que a oficina gerencie os serviços realizados.

## Objetivo

- Criar um esquema conceitual para o contexto de uma oficina mecânica com base na narrativa fornecida.
- Implementar o esquema em um banco de dados MySQL.

## Entidades e Relacionamentos

### Clientes

- **Clientes**: Armazena informações dos clientes, incluindo nome, endereço e telefone.

### Veículos

- **Veículos**: Armazena informações dos veículos dos clientes, incluindo placa, marca, modelo e ano.

### Mecânicos

- **Mecânicos**: Armazena informações dos mecânicos, incluindo nome, endereço, telefone e especialidade.

### Equipe

- **Equipes**: Armazena informações das equipes de mecânicos.

### Ordem de Serviço (OS)

- **Ordens de Serviço**: Armazena informações das ordens de serviço, incluindo número da OS, data de emissão, valor, status e data de conclusão.

### Referência de Mão-de-Obra

- **Tabela de Referência de Mão-de-Obra**: Armazena descrições e valores dos serviços de mão-de-obra.

### Peças

- **Peças**: Armazena descrições e valores das peças usadas nos serviços.

### Itens da OS

- **Itens da OS (Serviços)**: Armazena os serviços realizados em cada OS.
- **Itens da OS (Peças)**: Armazena as peças utilizadas em cada OS.