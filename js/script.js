document.getElementById('generate-PDF').addEventListener('click', function () {
    const valorTotal = document.getElementById('total').value;
    const nome = document.getElementById('nome').value;
    const telefone = document.getElementById('telefone').value;
    const email = document.getElementById('email').value;
    const marca = document.getElementById('marca').value;
    const modelo = document.getElementById('modelo').value;
    const imei = document.getElementById('imei').value;
    const defeito = document.getElementById('defeito').value;
    const servicos = document.getElementById('servicos').value;
    const imagemPDF = document.getElementById('img-pdf');
    const termos = document.getElementById('termos');
    const dtentrada = document.getElementById('dtentrada').value;
    const dtsaida = document.getElementById('dtsaida').value;

    gerarOrdemServico(nome, telefone, email, marca, modelo, imei, defeito, servicos, valorTotal,imagemPDF,termos,dtentrada,dtsaida);
});

function gerarOrdemServico(nome, telefone, email, marca, modelo, imei, defeito, servicos,valorTotal,imagemPDF,termos,dtentrada,dtsaida) {
    const doc = new jsPDF();
    // Adiciona a imagem no cabeçalho
    doc.setFillColor(211, 211, 211);     
    doc.rect(0, 0, 210, 40, 'F');

doc.addImage(imagemPDF, 'PNG', 10, 5, 50, 30);

// Título da Ordem de Serviço
doc.setFontSize(16);
doc.setFontType("bold");
doc.text(`Ordem de Serviço - Manutenção de Celular`, 80, 10);
doc.setFontType("normal");


// CNPJ
doc.setFontSize(12);
doc.text(`CNPJ: 28.649.899/0001-97`, 145, 25);
doc.text(`Contato: 84 9 9820-0953`, 145, 20);

//data
const dataEntrada = formatDate(dtentrada);
doc.text(`Data de entrada: ${dataEntrada}`, 145, 30);
const dataSaida = formatDate(dtsaida);
doc.text(`Data de saída: ${dataSaida}`, 145, 35);

// Informações do Cliente
doc.text(`Cliente: ${nome}`, 10, 50);
doc.text(`Telefone: ${telefone}`, 90, 50);
doc.text(`Email: ${email}`, 10, 60);
doc.text(`Marca do Celular: ${marca}`, 90, 60);
doc.text(`Modelo do Celular: ${modelo}`, 10, 70);
doc.text(`IMEI do Celular: ${imei}`, 90, 70);

// Descrição do Defeito e Serviços
doc.text(`Descrição do Defeito:`, 10, 80);
doc.text(`${defeito}`, 90, 80);
doc.text(`Serviços a serem Realizados:`, 10, 100);
doc.text(`${servicos}`, 90, 100);

// Valor Total e Desconto
doc.text(`Valor do Serviço: R$ ${valorTotal}`, 10, 120);

// Termos e Condições
doc.setFontSize(10); 
doc.text(`A empresa somente se responsabilizará pela entrega deste aparelho, mediante a apresentação deste comprovante`, 10, 160);
doc.text(`após 90 dias a contar da data de entrega, a empresa disporá do equipamento afim de custear as despesas`, 10, 165);
doc.text(`conforme, Art. 1275, 1592, 3995, do código civil brasileiro, sem prejuízo do Art. 1278.`,10,170);
doc.text(``, 10, 245);

    

    doc.save('os.pdf');
}




//ADICIONANDO UMA MASCARA AO TELEFONE
document.getElementById('telefone').addEventListener('input', function (event) {
    let telefone = event.target.value;

     telefone = telefone.replace(/\D/g, '');
    
    if (telefone.length === 11) {
        telefone = telefone.replace(/^(\d{2})(\d{5})(\d{4})$/, '($1) $2-$3');
    } else if (telefone.length === 10) {
        telefone = telefone.replace(/^(\d{2})(\d{4})(\d{4})$/, '($1) $2-$3');
    }

    event.target.value = telefone;
});

function formatDate(dateString) {
    const date = new Date(dateString);
    const day = String(date.getDate()).padStart(2, '0');
    const month = String(date.getMonth() + 1).padStart(2, '0');
    const year = date.getFullYear();
    return `${day}/${month}/${year}`;
}