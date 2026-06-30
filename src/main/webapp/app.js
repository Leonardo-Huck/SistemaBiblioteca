
function toggleMenu(){
  document.querySelector('.sidebar')?.classList.toggle('open');
}

function showToast(message, type='success'){
  let container = document.querySelector('.toast-container');
  if(!container){
    container = document.createElement('div');
    container.className = 'toast-container';
    document.body.appendChild(container);
  }
  const toast = document.createElement('div');
  toast.className = `toast ${type==='error'?'error':''}`;
  toast.innerHTML = `<i class="fa-solid ${type==='error'?'fa-circle-xmark':'fa-circle-check'}"></i><span class="msg">${message}</span>`;
  container.appendChild(toast);
  setTimeout(()=>{ toast.style.opacity='0'; toast.style.transform='translateX(30px)'; }, 2800);
  setTimeout(()=> toast.remove(), 3200);
}

function initCadastroForm(){
  const form = document.getElementById('formCadastro');
  if(!form) return;

  const requiredFields = form.querySelectorAll('[data-required]');

  form.addEventListener('submit', (e)=>{
    let valid = true;
    requiredFields.forEach(input=>{
      if(!input.value.trim()){
        input.classList.add('invalid');
        valid = false;
      } else {
        input.classList.remove('invalid');
      }
    });

    const ano = form.querySelector('[name="ano"]');
    if(ano && ano.value){
      const v = parseInt(ano.value);
      if(v < 1000 || v > new Date().getFullYear()+1){
        ano.classList.add('invalid'); valid = false;
      }
    }

    const qtd = form.querySelector('[name="quantidade"]');
    if(qtd && qtd.value && parseInt(qtd.value) < 1){
      qtd.classList.add('invalid'); valid = false;
    }

    if(!valid){
      e.preventDefault();
      showToast('Preencha os campos obrigatórios corretamente.', 'error');
      return;
    }

    const btn = form.querySelector('button[type="submit"]');
    if(btn){
      btn.disabled = true;
      btn.innerHTML = '<span class="spinner"></span> Salvando...';
    }
    showToast('Livro cadastrado com sucesso!');
  });

  requiredFields.forEach(input=>{
    input.addEventListener('input', ()=> input.classList.remove('invalid'));
  });
}

let paginaAtual = 1;
const porPagina = 5;

function getRows(){
  const tbody = document.getElementById('tbodyLivros');
  return tbody ? Array.from(tbody.querySelectorAll('tr.row-livro')) : [];
}

function aplicarFiltro(){
  const termo = (document.getElementById('searchInput')?.value || '').toLowerCase();
  const rows = getRows();
  const visiveis = rows.filter(r =>
    r.textContent.toLowerCase().includes(termo)
  );

  rows.forEach(r => r.style.display='none');

  const totalPaginas = Math.max(1, Math.ceil(visiveis.length / porPagina));
  if(paginaAtual > totalPaginas) paginaAtual = totalPaginas;

  const inicio = (paginaAtual-1)*porPagina;
  visiveis.slice(inicio, inicio+porPagina).forEach(r => r.style.display='');

  const empty = document.getElementById('emptyState');
  const tableWrap = document.getElementById('tableWrap');
  if(empty && tableWrap){
    if(visiveis.length===0){ empty.style.display='block'; tableWrap.style.display='none'; }
    else { empty.style.display='none'; tableWrap.style.display='block'; }
  }

  const total = document.getElementById('totalCount');
  if(total) total.textContent = `${visiveis.length} livro(s)`;

  renderPaginacao(totalPaginas);
}

function renderPaginacao(totalPaginas){
  const pag = document.getElementById('pagination');
  if(!pag) return;
  pag.innerHTML = '';

  const prev = document.createElement('button');
  prev.innerHTML = '<i class="fa-solid fa-chevron-left"></i>';
  prev.disabled = paginaAtual===1;
  prev.onclick = ()=>{ paginaAtual--; aplicarFiltro(); };
  pag.appendChild(prev);

  for(let i=1;i<=totalPaginas;i++){
    const b = document.createElement('button');
    b.textContent = i;
    if(i===paginaAtual) b.classList.add('active');
    b.onclick = ()=>{ paginaAtual=i; aplicarFiltro(); };
    pag.appendChild(b);
  }

  const next = document.createElement('button');
  next.innerHTML = '<i class="fa-solid fa-chevron-right"></i>';
  next.disabled = paginaAtual===totalPaginas;
  next.onclick = ()=>{ paginaAtual++; aplicarFiltro(); };
  pag.appendChild(next);
}

function initListagem(){
  const input = document.getElementById('searchInput');
  if(!input) return;
  input.addEventListener('input', ()=>{ paginaAtual=1; aplicarFiltro(); });
  aplicarFiltro();
}

let livroParaExcluir = null;

function abrirModalExclusao(id, titulo, url){
  livroParaExcluir = { id, titulo, url };
  const modal = document.getElementById('modalExcluir');
  const txt = document.getElementById('modalLivroTitulo');
  if(txt) txt.textContent = titulo ? `"${titulo}"` : '';
  modal?.classList.add('show');
}

function fecharModal(){
  document.getElementById('modalExcluir')?.classList.remove('show');
  livroParaExcluir = null;
}

function confirmarExclusao(){
  if(!livroParaExcluir) return;

  // Em produção (Servlet): redirecionar para a URL de exclusão
  if(livroParaExcluir.url && !document.body.dataset.demo){
    window.location.href = livroParaExcluir.url;
    return;
  }

  const row = document.querySelector(`tr[data-id="${livroParaExcluir.id}"]`);
  row?.remove();
  showToast('Livro excluído com sucesso!');
  fecharModal();
  aplicarFiltro();
}

document.addEventListener('DOMContentLoaded', ()=>{
  initCadastroForm();
  initListagem();

  document.getElementById('modalExcluir')?.addEventListener('click', (e)=>{
    if(e.target.id === 'modalExcluir') fecharModal();
  });
});
