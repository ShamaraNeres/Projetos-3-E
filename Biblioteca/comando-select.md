SELECT
    emprestimos.CodEmprestimo,
    emprestimos.Data_Emprestimo,
    emprestimos.Data_Devolucao,
    emprestimos.CodLeitor,
    leitores.Nome,
    emprestimos.CodLivro,
    livros.Titulo,
    livros.Autor
FROM `emprestimos`
INNER JOIN leitores
ON emprestimos.CodLeitor = leitores.CodLeitor
INNER JOIN livros
ON emprestimos.CodLivro = livros.CodLivro;
