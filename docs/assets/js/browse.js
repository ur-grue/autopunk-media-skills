(function () {
  var grid = document.getElementById('browse-results');
  var countEl = document.getElementById('result-count');
  var searchInput = document.getElementById('browse-search-input');
  var categorySelect = document.getElementById('category-filter');
  var subcategorySelect = document.getElementById('subcategory-filter');
  var sortSelect = document.getElementById('sort-select');

  if (!grid || !searchInput) return;

  var allItems = [];
  var state = { role: 'all', status: 'all', category: '', subcategory: '', query: '', sort: 'alpha' };
  var debounceTimer = null;
  var baseUrl = (document.querySelector('meta[name="baseurl"]') || {}).content || '';

  fetch(baseUrl + '/search-index.json')
    .then(function (r) { return r.json(); })
    .then(function (data) {
      allItems = data.filter(function (d) { return d.type === 'skill'; });
      populateCategories();
      readUrlParams();
      applyFilters();
    });

  function populateCategories() {
    var cats = {};
    allItems.forEach(function (s) {
      if (!cats[s.category]) cats[s.category] = {};
      if (s.subcategory) cats[s.category][s.subcategory] = true;
    });

    var sorted = Object.keys(cats).sort();
    sorted.forEach(function (cat) {
      var opt = document.createElement('option');
      opt.value = cat;
      opt.textContent = cat.replace(/-/g, ' ');
      categorySelect.appendChild(opt);
    });

    categorySelect._subcats = cats;
  }

  function updateSubcategories() {
    var cat = state.category;
    subcategorySelect.innerHTML = '<option value="">All subcategories</option>';
    subcategorySelect.disabled = true;

    if (!cat || !categorySelect._subcats || !categorySelect._subcats[cat]) return;

    var subs = Object.keys(categorySelect._subcats[cat]).sort();
    if (!subs.length) return;

    subcategorySelect.disabled = false;
    subs.forEach(function (sub) {
      var opt = document.createElement('option');
      opt.value = sub;
      opt.textContent = sub.replace(/-/g, ' ');
      subcategorySelect.appendChild(opt);
    });

    subcategorySelect.value = state.subcategory || '';
  }

  function readUrlParams() {
    var params = new URLSearchParams(window.location.search);
    if (params.get('role')) state.role = params.get('role');
    if (params.get('status')) state.status = params.get('status');
    if (params.get('category')) state.category = params.get('category');
    if (params.get('sub')) state.subcategory = params.get('sub');
    if (params.get('q')) { state.query = params.get('q'); searchInput.value = state.query; }
    if (params.get('sort')) state.sort = params.get('sort');

    syncPills('role-filters', 'role', state.role);
    syncPills('status-filters', 'status', state.status);
    categorySelect.value = state.category;
    updateSubcategories();
    sortSelect.value = state.sort;
  }

  function syncPills(groupId, attr, value) {
    var btns = document.getElementById(groupId).querySelectorAll('.pill');
    btns.forEach(function (btn) {
      var v = btn.getAttribute('data-' + attr);
      var active = v === value;
      btn.classList.toggle('pill--active', active);
      btn.setAttribute('aria-pressed', active ? 'true' : 'false');
    });
  }

  function writeUrlParams() {
    var params = new URLSearchParams();
    if (state.role !== 'all') params.set('role', state.role);
    if (state.status !== 'all') params.set('status', state.status);
    if (state.category) params.set('category', state.category);
    if (state.subcategory) params.set('sub', state.subcategory);
    if (state.query) params.set('q', state.query);
    if (state.sort !== 'alpha') params.set('sort', state.sort);

    var qs = params.toString();
    var url = window.location.pathname + (qs ? '?' + qs : '');
    history.replaceState(null, '', url);
  }

  function matchesRole(item) {
    if (state.role === 'all') return true;
    return (item.roles || []).indexOf(state.role) !== -1;
  }

  function matchesStatus(item) {
    if (state.status === 'all') return true;
    return item.status === state.status;
  }

  function matchesCategory(item) {
    if (!state.category) return true;
    return item.category === state.category;
  }

  function matchesSubcategory(item) {
    if (!state.subcategory) return true;
    return item.subcategory === state.subcategory;
  }

  function scoreSearch(item, terms) {
    if (!terms.length) return 1;
    var haystack = [item.title, item.name, item.description, item.category, item.subcategory, item.tags].join(' ').toLowerCase();
    var score = 0;
    for (var i = 0; i < terms.length; i++) {
      if (haystack.indexOf(terms[i]) === -1) return 0;
      if (item.title.toLowerCase().indexOf(terms[i]) !== -1) score += 10;
      if (item.name.toLowerCase().indexOf(terms[i]) !== -1) score += 5;
      score += 1;
    }
    return score;
  }

  function applyFilters() {
    var terms = state.query ? state.query.toLowerCase().split(/\s+/).filter(Boolean) : [];
    var results = [];

    allItems.forEach(function (item) {
      if (!matchesRole(item)) return;
      if (!matchesStatus(item)) return;
      if (!matchesCategory(item)) return;
      if (!matchesSubcategory(item)) return;
      var score = scoreSearch(item, terms);
      if (score === 0) return;
      results.push({ item: item, score: score });
    });

    if (state.sort === 'relevance' || (state.sort === 'alpha' && terms.length)) {
      results.sort(function (a, b) { return b.score - a.score || a.item.title.localeCompare(b.item.title); });
    } else if (state.sort === 'score') {
      results.sort(function (a, b) { return (b.item.score || 0) - (a.item.score || 0) || a.item.title.localeCompare(b.item.title); });
    } else {
      results.sort(function (a, b) { return a.item.title.localeCompare(b.item.title); });
    }

    renderResults(results);
    writeUrlParams();
  }

  function esc(s) {
    var d = document.createElement('div');
    d.textContent = s || '';
    return d.innerHTML;
  }

  function statusClass(s) {
    return 'status-dot--' + (s || 'planned');
  }

  function renderResults(results) {
    countEl.textContent = 'Showing ' + results.length + ' of ' + allItems.length + ' skills';

    if (!results.length) {
      grid.innerHTML = '<li class="browse-empty">No skills match your filters. Try broadening your search.</li>';
      return;
    }

    var html = '';
    results.forEach(function (r) {
      var s = r.item;
      var cat = (s.category || '').replace(/-/g, ' ');
      var sub = s.subcategory ? ' · ' + s.subcategory.replace(/-/g, ' ') : '';
      var scoreHtml = s.score ? '<span class="browse-card-score">' + s.score + '/5</span>' : '';
      var whenAttr = s.when_to_use ? ' title="' + esc(s.when_to_use) + '"' : '';

      html += '<li class="browse-card"' + whenAttr + '>' +
        '<a href="' + baseUrl + s.url + '" class="browse-card-link">' +
        '<span class="browse-card-header">' +
        '<span class="status-dot ' + statusClass(s.status) + '" aria-label="' + esc(s.status) + '"></span>' +
        '<span class="browse-card-title">' + esc(s.title) + '</span>' +
        scoreHtml +
        '</span>' +
        '<span class="browse-card-meta">' + esc(cat + sub) + '</span>' +
        '<span class="browse-card-desc">' + esc(s.description) + '</span>' +
        '</a></li>';
    });

    grid.innerHTML = html;
  }

  document.querySelectorAll('#role-filters .pill').forEach(function (btn) {
    btn.addEventListener('click', function () {
      state.role = btn.getAttribute('data-role');
      syncPills('role-filters', 'role', state.role);
      applyFilters();
    });
  });

  document.querySelectorAll('#status-filters .pill').forEach(function (btn) {
    btn.addEventListener('click', function () {
      state.status = btn.getAttribute('data-status');
      syncPills('status-filters', 'status', state.status);
      applyFilters();
    });
  });

  categorySelect.addEventListener('change', function () {
    state.category = this.value;
    state.subcategory = '';
    updateSubcategories();
    applyFilters();
  });

  subcategorySelect.addEventListener('change', function () {
    state.subcategory = this.value;
    applyFilters();
  });

  sortSelect.addEventListener('change', function () {
    state.sort = this.value;
    applyFilters();
  });

  searchInput.addEventListener('input', function () {
    clearTimeout(debounceTimer);
    debounceTimer = setTimeout(function () {
      state.query = searchInput.value.trim();
      applyFilters();
    }, 150);
  });

  searchInput.addEventListener('keydown', function (e) {
    if (e.key === 'Escape') {
      searchInput.value = '';
      state.query = '';
      applyFilters();
    }
  });
})();
