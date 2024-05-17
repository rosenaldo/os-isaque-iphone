document.getElementById('generate-PDF').addEventListener('click', function () {
    const valorTotal = document.getElementById('total').value;
    const desconto = document.getElementById('desconto').value;
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

    gerarOrdemServico(nome, telefone, email, marca, modelo, imei, defeito, servicos, valorTotal,desconto,imagemPDF,termos);
});

function gerarOrdemServico(nome, telefone, email, marca, modelo, imei, defeito, servicos,valorTotal,desconto,imagemPDF,termos) {
    const doc = new jsPDF();
    // Adiciona a imagem no cabeçalho
doc.addImage(imagemPDF, 'PNG', 10, 5, 50, 30);

// Título da Ordem de Serviço
doc.setFontSize(16);
doc.setFontType("bold");
doc.text(`Ordem de Serviço - Manutenção de Celular`, 80, 10);
doc.setFontType("normal");

// CNPJ
doc.setFontSize(12);
doc.text(`CNPJ: 111111111111/11`, 145, 25);
doc.text(`Contato: 84 9 9820-0953`, 145, 20);

// Informações do Cliente
doc.text(`Nome: ${nome}`, 10, 70);
doc.text(`Telefone: ${telefone}`, 10, 80);
doc.text(`Email: ${email}`, 10, 90);
doc.text(`Marca do Celular: ${marca}`, 10, 100);
doc.text(`Modelo do Celular: ${modelo}`, 10, 110);
doc.text(`IMEI do Celular: ${imei}`, 10, 120);

// Descrição do Defeito e Serviços
doc.text(`Descrição do Defeito:`, 10, 140);
doc.text(`${defeito}`, 10, 150);
doc.text(`Serviços a serem Realizados:`, 10, 170);
doc.text(`${servicos}`, 10, 180);

// Valor Total e Desconto
doc.text(`Valor do Serviço: R$ ${valorTotal}`, 10, 210);
doc.text(`Desconto: R$ ${desconto}`, 10, 200);

// Termos e Condições
doc.setFontSize(10); 
doc.text(`A empresa somente se responsabilizará pela entrega deste aparelho,`, 10, 230);
doc.text(`mediante a apresentação deste comprovante após 90 dias a contar da data de entrega,`, 10, 235);
doc.text(`a empresa disporá do equipamento afim de custear as despesas conforme, Art. 1275, 1592, 3995,`,10,240);
doc.text(`do código civil brasileiro, sem prejuízo do Art. 1278.`, 10, 245);

    

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