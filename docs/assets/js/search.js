(function () {
  var input = document.getElementById('search-input');
  var results = document.getElementById('search-results');
  if (!input || !results) return;

  var index = [];
  var activeIndex = -1;
  var debounceTimer = null;
  var baseUrl = document.querySelector('meta[name="baseurl"]');
  var prefix = baseUrl ? baseUrl.content : '';

  fetch(prefix + '/search-index.json')
    .then(function (r) { return r.json(); })
    .then(function (data) { index = data; });

  function search(query) {
    if (!query || query.length < 2) return [];
    var q = query.toLowerCase();
    var terms = q.split(/\s+/);
    var scored = [];

    for (var i = 0; i < index.length; i++) {
      var item = index[i];
      var haystack = [
        item.title, item.name, item.description,
        item.category, item.subcategory, item.tags
      ].join(' ').toLowerCase();

      var match = true;
      var score = 0;
      for (var t = 0; t < terms.length; t++) {
        if (haystack.indexOf(terms[t]) === -1) { match = false; break; }
        if (item.title.toLowerCase().indexOf(terms[t]) !== -1) score += 10;
        if (item.name.toLowerCase().indexOf(terms[t]) !== -1) score += 5;
        score += 1;
      }
      if (match) scored.push({ item: item, score: score });
    }

    scored.sort(function (a, b) { return b.score - a.score; });
    return scored.slice(0, 12);
  }

  function render(matches) {
    activeIndex = -1;
    if (!matches.length) {
      results.innerHTML = '';
      input.setAttribute('aria-expanded', 'false');
      return;
    }

    var html = '';
    for (var i = 0; i < matches.length; i++) {
      var m = matches[i].item;
      var cat = m.category.replace(/-/g, ' ');
      html += '<li id="sr-' + i + '" class="search-result" role="option">' +
        '<a href="' + prefix + m.url + '">' +
        '<span class="sr-title">' + esc(m.title) + '</span>' +
        '<span class="sr-meta">' + esc(cat) +
        (m.type === 'agent' ? ' · agent' : '') +
        '</span></a></li>';
    }
    results.innerHTML = html;
    input.setAttribute('aria-expanded', 'true');
  }

  function esc(s) {
    var d = document.createElement('div');
    d.textContent = s;
    return d.innerHTML;
  }

  function setActive(idx, matches) {
    var items = results.querySelectorAll('.search-result');
    for (var i = 0; i < items.length; i++) {
      items[i].classList.remove('search-result--active');
    }
    if (idx >= 0 && idx < items.length) {
      items[idx].classList.add('search-result--active');
      input.setAttribute('aria-activedescendant', 'sr-' + idx);
      items[idx].scrollIntoView({ block: 'nearest' });
    } else {
      input.setAttribute('aria-activedescendant', '');
    }
    activeIndex = idx;
  }

  function close() {
    results.innerHTML = '';
    input.setAttribute('aria-expanded', 'false');
    activeIndex = -1;
  }

  input.addEventListener('input', function () {
    clearTimeout(debounceTimer);
    debounceTimer = setTimeout(function () {
      render(search(input.value));
    }, 150);
  });

  input.addEventListener('keydown', function (e) {
    var items = results.querySelectorAll('.search-result');
    if (!items.length) return;

    if (e.key === 'ArrowDown') {
      e.preventDefault();
      setActive(Math.min(activeIndex + 1, items.length - 1));
    } else if (e.key === 'ArrowUp') {
      e.preventDefault();
      setActive(Math.max(activeIndex - 1, 0));
    } else if (e.key === 'Enter' && activeIndex >= 0) {
      e.preventDefault();
      var link = items[activeIndex].querySelector('a');
      if (link) window.location.href = link.href;
    } else if (e.key === 'Escape') {
      close();
      input.blur();
    }
  });

  document.addEventListener('click', function (e) {
    if (!input.contains(e.target) && !results.contains(e.target)) {
      close();
    }
  });
})();
