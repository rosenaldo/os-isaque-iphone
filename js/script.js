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

    gerarOrdemServico(nome, telefone, email, marca, modelo, imei, defeito, servicos, valorTotal);
});

function gerarOrdemServico(nome, telefone, email, marca, modelo, imei, defeito, servicos,valorTotal) {
    const doc = new jsPDF();
    doc.text(`CNPJ: 111111111111/11`, 10, 10)
    doc.text(`Ordem de Serviço - Manutenção de Celular`, 60, 10);
    doc.text(`Nome do Cliente: ${nome}`, 10, 20);
    doc.text(`Telefone do Cliente: ${telefone}`, 10, 30);
    doc.text(`Email do Cliente: ${email}`, 10, 40);
    doc.text(`Marca do Celular: ${marca}`, 10, 50);
    doc.text(`Modelo do Celular: ${modelo}`, 10, 60);
    doc.text(`IMEI do Celular: ${imei}`, 10, 70);
    doc.text(`Descrição do Defeito: ${defeito}`, 10, 80);
    doc.text(`Serviços a serem Realizados: ${servicos}`, 10, 90);
    doc.text(`Valor do serviço: ${valorTotal}`, 10, 90);
    doc.save('ordem_servico.pdf');
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


document.getElementById('voltar').addEventListener('click', function () {
    const valorTotal = document.getElementById('total').value;
    const nome = document.getElementById('nome').value;
    const telefone = document.getElementById('telefone').value;
    const email = document.getElementById('email').value;
    const marca = document.getElementById('marca').value;
    const modelo = document.getElementById('modelo').value;
    const imei = document.getElementById('imei').value;
    const defeito = document.getElementById('defeito').value;
    const servicos = document.getElementById('servicos').value;

    limpar(nome, telefone, email, marca, modelo, imei, defeito, servicos, valorTotal);
});
    




