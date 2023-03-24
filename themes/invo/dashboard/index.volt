<div class="row mb-3">
  <div class="col-xs-12 col-md-6">
    <h2>Search Vehicles</h2>
  </div>
</div>

<form action="/dashboard/index" role="form" method="POST" >
  <div class="d-flex">
  {% for element in form %} {% if is_a(element, 'Phalcon\Forms\Element\Hidden')
  %}
  {{ element }}
  {% else %}
  <div class="form-group ml-2">
    {{ element.label() }}
    <div class="controls">
      {{ element.setAttribute("class", "form-control") }}
    </div>
  </div>
  {% endif %} {% endfor %}
</div>
  {{ submit_button("Search", "class": "btn btn-primary") }}
</form>
<div class="mt-4">
  <nav aria-label="Page navigation example">
    <ul class="pagination justify-content-end">
      <li class="page-item">
        {{ link_to("dashboard", 'First', "class":
        "page-link") }} 
      </li>
      <li class="page-item">
        {{ link_to("dashboard?page=" ~ page.previous, '
      Previous', "class": "page-link") }}
      </li>
      <li class="page-item">
        {{ link_to("dashboard?page=" ~ page.next, '
        Next', "class": "page-link") }}
      </li>
      <li class="page-item">
        {{ link_to("dashboard?page=" ~ page.last, '
        Last', "class": "page-link") }}
      </li>
      <li>
        <span class="help-inline">{{ page.current }}/ {{ceil(page.total_items/page.limit)}}</span>
      </li>
    </ul>
  </nav>
  <div class="row">
  {% for vehicle in page.items %} 

  <div class="col-3 mt-3 p-0">
    {{ partial('dashboard/indexComponent/item',['vehicle':vehicle]) }}
  </div>
  {% else %} No vehicle types are recorded {% endfor %}
</div>
</div>
