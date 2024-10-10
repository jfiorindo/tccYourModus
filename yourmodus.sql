-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 22-Nov-2022 às 14:56
-- Versão do servidor: 10.4.24-MariaDB
-- versão do PHP: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `yourmodus`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `blog`
--

CREATE TABLE `blog` (
  `id_postagem` int(11) NOT NULL,
  `titulo_postagem` varchar(50) NOT NULL,
  `descricao_postagem` text NOT NULL,
  `autor_postagem` varchar(50) NOT NULL,
  `data_postagem` varchar(50) NOT NULL,
  `edicao_postagem` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura da tabela `imagens`
--

CREATE TABLE `imagens` (
  `id_imagem` int(11) NOT NULL,
  `nome_imagem` varchar(50) NOT NULL,
  `coluna_imagem` varchar(50) NOT NULL,
  `estilo_imagem` varchar(50) NOT NULL,
  `descricao_imagem` text NOT NULL,
  `autor_imagem` varchar(50) NOT NULL,
  `link_imagem` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `imagens`
--

INSERT INTO `imagens` (`id_imagem`, `nome_imagem`, `coluna_imagem`, `estilo_imagem`, `descricao_imagem`, `autor_imagem`, `link_imagem`) VALUES
(1, 'sw1', 'a', 'Streetwear', 'Calça jeans mom destroyed, jaqueta trucker, Air Jordan 1 panda, camiseta e acessórios a escolha', 'Jornal de Brasília', 'https://jornaldebrasilia.com.br/estilo-de-vida/moda/8-itens-para-compor-looks-streetwear-femininos/'),
(2, 'sw2', 'a', 'Streetwear', 'Calça moletom jogger, camiseta oversized, tênis New balance 550', 'A chata de batom', 'https://www.achatadebatom.com/2021/10/como-usar-camisetas-no-estilo-streetwear.html'),
(3, 'sw3', 'a', 'Streetwear', 'Moletom liso com capuz, calça jogger, Air Jordan 1 azul e branco', 'Pinterest', 'https://br.pinterest.com/pin/54184001758393370/'),
(4, 'sw4', 'a', 'Streetwear', 'Calça jeans reta over, moletom liso', 'Pinterest', 'https://br.pinterest.com/pin/12033123994818479/'),
(5, 'sw5', 'b', 'Streetwear', 'T-shirt oversized, Jeans bicolor, tênis dunk panda, sholder bag', 'Dicas de mulher', 'https://www.dicasdemulher.com.br/streetwear-feminino/'),
(6, 'sw6', 'b', 'Streetwear', 'Jeans corte reto, moletom preto básico, air force 1 white version', 'Dicas de mulher', 'https://www.dicasdemulher.com.br/streetwear-feminino/'),
(7, 'sw7', 'b', 'Streetwear', 'Calça moletom estampada, segunda pele estampada, air jordan 1 retro high \"UNC Patent\"', 'Loja da ruiva', 'https://www.lojadaruiva.com.br/produtos/conjunto-streetwear-estilo-moda-gringa-importado/'),
(8, 'sw8', 'b', 'Streetwear', 'T-shirt overzised, calça cargo areia, air force 1 white version', 'Pinterest', 'https://br.pinterest.com/pin/12103492739380594/'),
(9, 'sw9', 'c', 'Streetwear', 'T-shirt manga longa, calça alfaiataria, Nike SB Blazer mid ', 'Pinterest', 'https://br.pinterest.com/pin/1002613935763774078/'),
(10, 'sw10', 'c', 'Streetwear', 'Calça moletom bolso simples, top básico, casaco bicolor, air force 1 white, bolsa louis vuiton', 'Dicas de mulher', 'https://www.dicasdemulher.com.br/streetwear-feminino/'),
(11, 'sw11', 'c', 'Streetwear', 'Calça jeans mom destroyed, t-shirt oversized, dunk panda, bag simples', 'Pinterest', 'https://br.pinterest.com/pin/725712927457244121/'),
(12, 'sw12', 'c', 'Streetwear', 'Calça jeans cintura alta, cropped básico, air force 1 white version', 'Pinterest', 'https://br.pinterest.com/pin/814940495066472328/'),
(13, 'sw13', 'd', 'Streetwear', 'Calça jeans reta, Nike SB blazer mid, t-shirt preto básico, gorro preto básico', 'Pinterest', 'https://co.pinterest.com/pin/179369997648672714/'),
(14, 'sw14', 'd', 'Streetwear', 'Calça jeans corte reto, moletom roxo básico, dunk white and purple low', 'Pinterest', 'https://br.pinterest.com/pin/791296597022000967/'),
(15, 'sw15', 'd', 'Streetwear', 'Calça jeans skull, moletom marrom básico, chinelo slide yeezy', 'Pinterest', 'https://br.pinterest.com/pin/722264858986006203/'),
(16, 'sw16', 'd', 'Streetwear', 'T-shirt preto básico, calça jogger destroyed, tênis nike skull', 'Pinterest', 'https://br.pinterest.com/pin/976999712883760786/'),
(17, 'spw1', 'a', 'Sportwear', 'Moletom básico nike, calça jogger, air force 1 white version', 'Pinterest', 'https://br.pinterest.com/pin/237424211590802272/'),
(18, 'spw2', 'a', 'Sportwear', 'Moletom creme básico, calça moletom creme básico, air force 1 white version, bolsa louis vuiton', 'Pinterest', 'https://www.pinterest.co.uk/pin/725712927444665027/'),
(19, 'spw3', 'a', 'Sportwear', 'Calça moletom básico azul, moletom básico azul, nike white high', 'Pinterest', 'https://br.pinterest.com/pin/572731277612311356/'),
(20, 'spw4', 'b', 'Sportwear', 'Casaco nike simples, moletom nike simples, tênis nike limited', 'Pinterest', 'https://br.pinterest.com/pin/639581584560730705/'),
(21, 'spw5', 'b', 'Sportwear', 'T-shirt manga longa adidas, calça 3d stripes, tênis yeezy 500', 'Pinterest', 'https://br.pinterest.com/pin/29554941296742550/'),
(22, 'spw6', 'b', 'Sportwear', 'Moletom adidas, calça básico adidas, yeezy boost', 'Pinterest', 'https://br.pinterest.com/pin/479351954086349738/'),
(23, 'spw7', 'c', 'Sportwear', 'T-shirt adidas básico, casaco adidas básico, calça adidas básico, tênis adidas forun', 'Pinterest', 'https://br.pinterest.com/pin/219128338100953934/'),
(24, 'spw8', 'c', 'Sportwear', 'Calça moletom white, casaco cropped, air force 1 white version', 'Blog Myahaas', 'https://blog.myahaas.com.br/moda/estilo-esportivo/'),
(25, 'spw9', 'c', 'Sportwear', 'moletom cinza , calça legging cinza, meia canelada , tênis branco e bolsa preta', 'Pinterest', 'https://br.pinterest.com/pin/85498092918197708/'),
(26, 'spw10', 'd', 'Sportwear', 'moletom preto , calça legging preta , moletom cinza, meia canelada, tênis branco, bolsa preta e boné NY', 'Pinterest', 'https://br.pinterest.com/pin/687361961892988162/'),
(27, 'spw11', 'd', 'Sportwear', 'Tenis adidas branco, calça jogger bege, cropped bege', 'Pinterest', 'https://pin.it/3slBdV9'),
(28, 'cas1', 'a', 'Casual', 'Camiseta azul marinho estampada, calça jeans skinny, tênis azul marinho e acessórios', 'Canal Masculino', 'https://www.canalmasculino.com.br/como-usar-estampa-de-poa-em-looks-masculinos/'),
(29, 'cas2', 'a', 'Casual', 'Camiseta preta, bermuda jeans beje , boné preto com símbolo branco , tênis vans preto com lista branca e acessórios', 'Pinterest', 'https://pin.it/2YFUE4Q'),
(30, 'cas3', 'a', 'Casual', 'Camiseta listrada preta e branca, blazer branco, calça jeans reta com pequenos rasgos , salto alto branco com estampa, bolsa preta e acessórios', 'Blog da daniteo', 'https://blogdadaniteo.weebly.com/moda-e-beleza/look-com-t-shirt-listrada'),
(31, 'cas4', 'a', 'Casual', 'Camiseta marrom, short beje , sandália gladiadora marrom , bolsa estampada e acessórios', 'Blog Oscar', 'https://blog.oscarcalcados.com.br/looks-com-vertice/'),
(32, 'cas5', 'b', 'Casual', 'Camisa preta , calça jeans reta, tênis branco, bolsa preta e acessórios', 'Pinterest', 'https://pin.it/4DiZJp2'),
(33, 'cas6', 'b', 'Casual', 'Camiseta branca, calça jeans reta, moletom preto e Air Jordan preto e branco', 'Pinterest', 'https://pin.it/5xUjJjm'),
(34, 'cas7', 'b', 'Casual', 'Camiseta branca, blazer preto, calça jeans reta , tênis branco, bolsa preta e acessórios', 'Pinterest', 'https://pin.it/7JCPkQH'),
(35, 'cas8', 'b', 'Casual', 'Camiseta branca, blazer de linho, calça preta de alfaiataria, mocassim beje , bolsa de couro marrom e acessórios', 'Pinterest', 'https://pin.it/3ZBglMr'),
(36, 'cas9', 'c', 'Casual', 'Camiseta preta estampada, blazer xadrez preto e branco, calça jeans reta , all star preto e acessórios', 'Pinterest', 'https://pin.it/5i8SkD9'),
(37, 'cas10', 'c', 'Casual', 'Camisa branca, calça jeans reta , mocassim preto, bolsa preta e acessórios', 'Pinterest', 'https://pin.it/4BdKChF'),
(38, 'cas11', 'c', 'Casual', 'Camiseta branca, casaco cinza esverdeado, calça de sarja preta e tênis branco', 'Pinterest', 'https://pin.it/2Ao9uyc'),
(39, 'cas12', 'd', 'Casual', 'Camiseta preta, casaco beje , calça jeans reta e tênis branco', 'Pinterest', 'https://pin.it/xNFpGAc'),
(40, 'cas13', 'd', 'Casual', 'Moletom cinza, calça jeans reta , Air force branco e acessórios', 'Pinterest', 'https://pin.it/5jFLoqf'),
(41, 'cas14', 'd', 'Casual', 'Camiseta branca, Calça jeans reta, Dunk Low xadrez', 'Pinterest', 'https://pin.it/2fQEf1C'),
(42, 'cla1', 'a', 'Clássico', 'Suéter de linho beje , calça pantalona branca , salto alto branco, bolsa estampada e acessórios', 'Pinterest', 'https://pin.it/3p1F1Jp'),
(43, 'cla2', 'a', 'Clássico', 'Camiseta branca, calça pantalona beje , sapatilha branca, bolsa marrom e acessórios', 'Pinterest', 'https://pin.it/7zuMDcH'),
(44, 'cla3', 'a', 'Clássico', 'Camisa branca, gravata preta , calça linho cinza , tênis Nike branco com detalhes azul e sobretudo preto', 'Pinterest', 'https://pin.it/7zuMDcH'),
(45, 'cla4', 'a', 'Clássico', 'Camiseta de manga longa e gola alta, calça alfaiataria xadrez e mocassim marrom', 'Pinterest', 'https://pin.it/qzI37x7'),
(46, 'cla5', 'b', 'Clássico', 'Camisa branca, calça pantalona preta , bolsa preta e acessórios', 'Pinterest', 'https://pin.it/5yg421J'),
(47, 'cla6', 'b', 'Clássico', 'Suéter azul, calça de alfaiataria beje, e salto alto nude', 'Pinterest', 'https://pin.it/6aKDmtA'),
(48, 'cla7', 'b', 'Clássico', 'Camiseta branca, blazer xadrez marrom e creme , calça alfaiataria branca , mocassim preto , bolsa preta e acessórios', 'Pinterest', 'https://pin.it/5e466ib'),
(49, 'cla8', 'b', 'Clássico', 'Camiseta de gola alta, blazer branco, calça alfaiataria preta, meia canelada , mocassim Gucci e acessórios', 'Pinterest', 'https://pin.it/3SWHUdL'),
(50, 'cla9', 'c', 'Clássico', 'Camiseta branca, calça alfaiataria preta, sapatilhas beje e preta e acessório', 'Pinterest', 'https://pin.it/1gRw4ir'),
(51, 'cla10', 'c', 'Clássico', 'Camiseta preta de manga longa, calça nude e all star', 'Pinterest', 'https://pin.it/onYp06M'),
(52, 'cla11', 'c', 'Clássico', 'Camisa branca, calça de linho marrom , mocassim marrom e acessórios', 'Pinterest', 'https://pin.it/1vETPK9'),
(53, 'cla12', 'd', 'Clássico', 'Camisa preta, blazer cinza , calça jeans skinny preta, coturno marrom e acessórios', 'Pinterest', 'https://pin.it/6VBZDw4'),
(54, 'cla13', 'd', 'Clássico', 'Camiseta de manga longa preta , calça cinza de alfaiataria e tênis branco', 'Pinterest', 'https://pin.it/2IM0CHO'),
(55, 'cla14', 'd', 'Clássico', 'Camiseta preta, calça de alfaiataria verde musgo e tênis vans com lista branca', 'Pinterest', 'https://pin.it/2IM0CHO'),
(56, 'vr1', 'a', 'Vintage', 'Camiseta branca, calça de alfaiataria cinza, suspensórios branco, boina de linho azul e sapato de couro', 'Pinterest', 'https://pin.it/44JiCin'),
(57, 'vr2', 'a', 'Vintage', 'Camisa amarela com listas preto , calça jeans reta skinny , meia branca e tênis preto', 'Pinterest', 'https://pin.it/1xXMztF'),
(58, 'vr3', 'a', 'Vintage', 'Camiseta branca de manga longa branca com listas azuis , jardineira jeans , sapato rosa , bolsa preta e acessórios', 'Pinterest', 'https://pin.it/1Auf1o5'),
(59, 'vr4', 'a', 'Vintage', 'Camisa branca com listas preta , calça jeans reta, tênis cinza e acessórios', 'Pinterest', 'https://pin.it/3qdClvQ'),
(60, 'vr5', 'b', 'Vintage', 'Camisa azul com estampa , calça jeans cintura alta, meia canelada com listas azul , all star branco e acessórios', 'Pinterest', 'https://pin.it/70ZnKRw'),
(61, 'vr6', 'b', 'Vintage', 'Camiseta preta estampada, jaqueta de couro, calça jeans reta ,vans preto com lista branca e acessórios', 'Pinterest', 'https://pin.it/4K7g3xb'),
(62, 'vr7', 'b', 'Vintage', 'Regata branca, camisa xadrez amarela, calça jeans reta , tênis branco e acessórios', 'Pinterest', 'https://pin.it/2FdxZsh'),
(63, 'vr8', 'b', 'Vintage', 'Camiseta amarela com estampa, bermuda jeans meia canelada de diversas cores e all star preto', 'Pinterest', 'https://pin.it/2FdxZsh'),
(64, 'vr9', 'c', 'Vintage', 'Blusa de manga longa azul , preta e amarela, jardineira jeans , coturno marrom e acessórios', 'Pinterest', 'https://pin.it/7DFOwdj'),
(65, 'vr10', 'c', 'Vintage', 'Camiseta branca, vestido xadrez beje e marrom , sobretudo preto, meia canelada preta e all star vermelho', 'Pinterest', 'https://pin.it/3MYwkS0'),
(66, 'vr11', 'c', 'Vintage', 'Camiseta branca estampada , corta vento verde estampado , calça jeans reta , tênis branco e acessórios', 'Pinterest', 'https://pin.it/1gSU8nG'),
(67, 'vr12', 'd', 'Vintage', 'Camiseta branca estampada, calça jeans reta, all star cano alto preto e acessórios', 'Pinterest', 'https://pin.it/72dimXx'),
(68, 'vr13', 'd', 'Vintage', 'Camiseta branca, calça jeans reta, all star vermelho e acessórios', 'Pinterest', 'https://pin.it/3VAMekG'),
(69, 'vr14', 'd', 'Vintage', 'Camiseta branca estampada , camisa marrom , calça jeans reta com rasgo , coturno marrom e acessórios', 'Pinterest', 'https://pin.it/348kHJv'),
(70, 'gr1', 'a', 'Grunge', 'Camiseta preta estampada, camisa xadrez azul preta e cinza, calça beje e all star preto', 'Pinterest', 'https://pin.it/3xa36jI'),
(71, 'gr2', 'a', 'Grunge', 'Camiseta cinza estampada , calça wide leg reta preta , tênis branco com preto e acessórios', 'Pinterest', 'https://pin.it/2WjklRR'),
(72, 'gr3', 'a', 'Grunge', 'Cropped branco , casaco xadrez azul , calça cargo xadrez azul e tênis preto', 'Glamour Globo', 'https://glamour.globo.com/moda/tendencias/noticia/2021/07/estilo-grunge-como-se-vestir-de-acordo-com-moda-do-rock-90s.ghtml'),
(73, 'gr4', 'a', 'Grunge', 'Cropped preto de manga comprida com escrita, calça xadrez vermelha e preta, coturno preto, touca preta com simpolo branco e acessórios', 'Pajaris', 'https://blog.pajaris.com.br/conheca-o-estilo-grunge-e-roube-o-look/'),
(74, 'gr5', 'b', 'Grunge', 'Luvas arrastão, camiseta estampada , meia arrastão, calça jeans reta rasgada , coturno preto e acessórios', 'Pinterest', 'https://pin.it/2vtrjAm'),
(75, 'gr6', 'b', 'Grunge', 'Camiseta verde estampada, camiseta xadrez azul e cinza, calça marrom, all star verde musgo e acessórios', 'Pinterest', 'https://pin.it/69rr05r'),
(76, 'gr7', 'b', 'Grunge', 'Camiseta branca de manga longa, camiseta preta estampada, calça jeans wide leg reta, coturno preto e bolsa preta', 'Pinterest', 'https://pin.it/1dxPOOt'),
(77, 'gr8', 'b', 'Grunge', 'Moletom preto , camiseta preta estampada, calça xadrez preta e cinza e all star cinza azulado', 'Pinterest', 'https://pin.it/3kpooRp'),
(78, 'gr9', 'c', 'Grunge', 'Cropped de manga longa arrastão, cropped preto estampado, calça preta com rasgos , coturno preto e acessórios', 'Pinterest', 'https://pin.it/4FJmTFe'),
(79, 'gr10', 'c', 'Grunge', 'Cropped preto, camisa xadrez preta e branca, calça jeans preta , coturno plataforma e acessórios', 'Pinterest', 'https://pin.it/71XRjd8'),
(80, 'gr11', 'c', 'Grunge', 'Camiseta preta de manga longa, camiseta preta estampada, calça jeans skinny preta com rasgos , meia arrastão , all star amarelo e acessórios', 'Pinterest', 'https://pin.it/6cSjvw9'),
(81, 'gr12', 'c', 'Grunge', 'Camiseta verde estampada , camisa xadrez cinza e preta, calça pantalona  creme e all star preto', 'Pinterest', 'https://pin.it/nbbzmOb'),
(82, 'gr13', 'd', 'Grunge', 'Moletom cinza, camisa xadrez azul preta cinza e branca, calça cargo beje, all star preto e acessórios', 'Pinterest', 'https://pin.it/42sZRTb'),
(83, 'gr14', 'd', 'Grunge', 'Camiseta preta estampada, calça cargo preta e all star vermelho e preto', 'Pinterest', 'https://pin.it/6ajfYdA'),
(84, 'gr15', 'd', 'Grunge', 'Camiseta cinza com estampa , saia xadrez preta , meia calça preta rasgada , coturno , luvas listradas pretas e cinza e acessórios', 'Pinterest', 'https://pin.it/1ZWHQBn'),
(85, 'gr16', 'd', 'Grunge', 'Camiseta preta estampada, camisa xadrez preta , meia calça arrastão, calça jeans reta com rasgo, coturno preto e acessórios', 'Pinterest', 'https://pin.it/4Nt2pP0'),
(86, 'cf1', 'a', 'Comfy', 'Camiseta branca, moletom preto, calça cargo verde musgo, Nike Air Max 97 e acessórios', 'Pinterest', 'https://pin.it/3VSETWb'),
(87, 'cf2', 'a', 'Comfy', 'Moletom verde, calça branca off white , Nike Air Force 1 Branco e acessórios', 'Pinterest', 'https://pin.it/gnMwLxj'),
(88, 'cf3', 'b', 'Comfy', 'Moletom cinza estampado , jaqueta college verde musgo com mangas brancas , calça moletom preta e all star preto', 'Pinterest', 'https://pin.it/z2Cw6gB'),
(89, 'cf4', 'b', 'Comfy', 'Moletom cinza, jaqueta preta de couro, calça preta e Nike Air Force 1', 'Pinterest', 'https://pin.it/6Okgco4'),
(90, 'cf5', 'c', 'Comfy', 'Moletom marrom, calça jeans beje e tênis Nike Air Jordan branco e verde \r\nMoleton marrom, calça jeans reta preta e tênis Nike Air Jordan branco e verde', 'Pinterest', 'https://pin.it/544EEsQ'),
(91, 'cf6', 'c', 'Comfy', 'Cropped branco , camisa xadrez azul e branca , calça de moletom cinza , tênis Nike Air Jordan 1 low branco e preto, boné NY e acessórios', 'Pinterest', 'https://pin.it/20wTcfo'),
(92, 'cf7', 'd', 'Comfy', 'Moletom cinza com escrita verde , calça legging boca de sino marrom e tênis branco', 'Pinterest', 'https://pin.it/NSGuaLV'),
(93, 'cf8', 'd', 'Comfy', 'Camiseta preta com estampa, short branco, tênis Air Force 1 branco e acessórios', 'Pinterest', 'https://pin.it/68j61rO'),
(94, 'hip1', 'a', 'Hipster', 'Camiseta de manga comprida listrada preta e branca, camiseta preta estampada , saia jeans amarela, meia calça de estrelas e coturno preto', 'Pinterest', 'https://pin.it/60sdiRJ'),
(95, 'hip2', 'a', 'Hipster', 'Cropped preto de faixa , camisa xadrez, calça jeans reta , coturno preto, mochila preta e acessórios', 'Pinterest', 'https://pin.it/1wmxn7d'),
(96, 'hip3', 'a', 'Hipster', 'Camiseta azul marinho, moletom preto com gorro, calça jeans wide leg, coturno Tratorada preto e acessórios', 'Pinterest', 'https://pin.it/60L3yvU'),
(97, 'hip4', 'b', 'Hipster', 'Casaco xadrez azul e creme , calça cargo preta , tênis preto , touca preta e eco bag preta', 'Pinterest', 'https://pin.it/7mV9PaF'),
(98, 'hip5', 'b', 'Hipster', 'Camiseta branca, camisa xadrez marrom e branca , calça reta marrom , Nike Dunk Low preto e beje com bolsa beje', 'Pinterest', 'https://pin.it/3XL49KC'),
(99, 'hip6', 'b', 'Hipster', 'Moletom preto, calça cargo preta, coturno preto e acessórios', 'Pinterest', 'https://pin.it/1FjZ7xC'),
(100, 'hip7', 'c', 'Hipster', 'Moletom listrado preto e vermelho, jardineira preta , meia calça preta, coturno e acessórios', 'Pinterest', 'https://pin.it/3ExFtRt'),
(101, 'hip8', 'c', 'Hipster', 'Camisa estampada , calça pantalona branca , tênis preto , eco bag branca e acessórios', 'Pinterest', 'https://pin.it/67UID1S'),
(102, 'hip9', 'd', 'Hipster', 'Moletom cinza , jaqueta verde de linho, calça de sarja preta , tênis branco e eco bag creme', 'Pinterest', 'https://pin.it/7pgfbPs'),
(103, 'hip10', 'd', 'Hipster', 'Top preto, jaqueta jeans preta, calça xadrez, coturno preto e acessórios', 'Pinterest', 'https://pin.it/5CSaHQ9'),
(104, 'ind1', 'a', 'Indie', 'Cropped verde lima, Blusa de zíper verde , calça jeans wide leg com estampa , tênis plataforma branco, bolsa verde estampada e acessórios', 'Pinterest', 'https://pin.it/1jB7BIu'),
(105, 'ind2', 'a', 'Indie', 'Cropped jeans estampado , calça jeans wide leg estampada , tamanco plataforma branco , bolsa branca e acessórios', 'Pinterest', 'https://pin.it/2qv7YvT'),
(106, 'ind3', 'a', 'Indie', 'Camiseta branca com escrita azul , calça jeans reta, meia canelada , tênis Nike Air Force 1 e acessórios', 'Pinterest', 'https://pin.it/2xODPSY'),
(107, 'ind4', 'b', 'Indie', 'Camiseta creme , suéter azul ,calça jeans reta , tênis Nike Air Force 1 e eco bag', 'Pinterest', 'https://pin.it/7OSoLHb'),
(108, 'ind5', 'b', 'Indie', 'Cropped listrado colorido de manga longa e gola alta, calça jeans reta, all star plataforma amarelo e acessórios', 'Pinterest', 'https://br.pinterest.com/pin/363876844895830306/'),
(109, 'ind6', 'b', 'Indie', 'Cropped branco , camisa xadrez roxa , calça jeans wide leg reta , all star plataforma preto e acessórios', 'Pinterest', 'https://br.pinterest.com/pin/214343263506611247/'),
(110, 'ind7', 'c', 'Indie', 'Moletom marrom com gola de camisa social aparecendo, calça beje alfaiataria dobrada, meias canelada e tênis vans slip-on xadrez', 'Pinterest', 'https://pin.it/44i6psv'),
(111, 'ind8', 'c', 'Indie', 'Camiseta branca estampada, camisa beje , calça jeans branca reta, tênis Nike Air Force 1 e acessórios', 'Pinterest', 'https://pin.it/6QCTeOL'),
(112, 'ind9', 'c', 'Indie', 'Cropped branco com desenho, blusa de zíper verde , calça jeans reta marrom e tênis branco', 'Pinterest', 'https://pin.it/2o1kDzX'),
(113, 'ind10', 'd', 'Indie', 'Camiseta laranja estampada , calça de sarja  marrom, bolsa estampada , tênis plataforma branco e acessórios', 'Pinterest', 'https://pin.it/2MoFaJQ'),
(114, 'ind11', 'd', 'Indie', 'Camiseta creme ,estampa verde , calça jeans reta , all star e eco bag marrom com escrita', 'Pinterest', 'https://pin.it/3te7sv9'),
(115, 'ind12', 'd', 'Indie', 'Camiseta branca estampada, camisa xadrez azul, calça jeans reta com rasgo , tênis Nike Air Jordan, eco bag creme', 'Pinterest', 'https://pin.it/5vzb4JU'),
(116, 'min1', 'a', 'Minimalista', 'Blusa de malha beje , calça de alfaiataria beje e salto alto nude', 'Pinterest', 'https://br.pinterest.com/pin/521362094376542674/'),
(117, 'min2', 'a', 'Minimalista', 'Camiseta branca, blazer preto , calça de sarja preta e tênis cinza', 'Pinterest', 'https://br.pinterest.com/pin/624733779573706323/'),
(118, 'min3', 'a', 'Minimalista', 'Camisa branca , calça pantalona preta , tênis branco e acessórios', 'Pinterest', 'https://pin.it/3fmlctg'),
(119, 'min4', 'b', 'Minimalista', 'Camiseta preta , pantalona branca , mocassim Prada preto e bolsa marrom', 'Pinterest', 'https://pin.it/4b2FAYl'),
(120, 'min5', 'b', 'Minimalista', 'Regata de linho beje , sobretudo de lã beje , calça de alfaiataria preta e mocassim preto', 'Pinterest', 'https://pin.it/2BoE4AY'),
(121, 'min6', 'b', 'Minimalista', 'Suéter cinza , calça de sarja cinza e tênis branco', 'Pinterest', 'https://pin.it/3K1LAn1'),
(122, 'min7', 'c', 'Minimalista', 'Camiseta marrom, calça branca pantalona , bota preta e eco bag branca estampada', 'Pinterest', 'https://pin.it/6fQhRbJ'),
(123, 'min8', 'c', 'Minimalista', 'Cardigã cinza,  calça reta preta de seda , tênis branco e bolsa preta', 'Pinterest', 'https://pin.it/7OSoLHb'),
(124, 'min9', 'c', 'Minimalista', 'Moletom branco , calça jeans preta reta, bota plataforma preta e eco bag preta', 'Pinterest', 'https://pin.it/6zAb2IA'),
(125, 'min10', 'd', 'Minimalista', 'Cardigã creme , calça moletom preta , tênis beje e bolsa preta', 'Pinterest', 'https://pin.it/32rXqoC'),
(126, 'min11', 'd', 'Minimalista', 'Moletom branco, sobretudo cinza , calça preta de alfaiataria e tênis Vans Old Skool padrão', 'Pinterest', 'https://pin.it/6iZNwOe'),
(127, 'min12', 'd', 'Minimalista', 'Moletom branco, calça jeans skinny e tênis branco', 'Pinterest', 'https://pin.it/22vzSSE');

-- --------------------------------------------------------

--
-- Estrutura da tabela `usuarios`
--

CREATE TABLE `usuarios` (
  `id_usuario` int(11) NOT NULL,
  `nome_usuario` varchar(50) NOT NULL,
  `email_usuario` varchar(50) NOT NULL,
  `senha_usuario` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `usuarios`
--

INSERT INTO `usuarios` (`id_usuario`, `nome_usuario`, `email_usuario`, `senha_usuario`) VALUES
(3, 'admin', 'tccyourmodus@gmail.com', '!@#$ADMIN$#@!'),
(6, 'mrmarquitosbr', 'mrm4rc0sbr@gmail.com', '627267ma');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `blog`
--
ALTER TABLE `blog`
  ADD PRIMARY KEY (`id_postagem`);

--
-- Índices para tabela `imagens`
--
ALTER TABLE `imagens`
  ADD PRIMARY KEY (`id_imagem`);

--
-- Índices para tabela `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id_usuario`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `blog`
--
ALTER TABLE `blog`
  MODIFY `id_postagem` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de tabela `imagens`
--
ALTER TABLE `imagens`
  MODIFY `id_imagem` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=128;

--
-- AUTO_INCREMENT de tabela `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id_usuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
