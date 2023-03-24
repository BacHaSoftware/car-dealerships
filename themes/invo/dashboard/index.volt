<div class="row mb-3">
    <div class="col-xs-12 col-md-6">
        <h2>Search Vehicles</h2>
    </div>
</div>

<form action="/dashboard/index" role="form" method="POST">
    {% for element in form %}
        {% if is_a(element, 'Phalcon\Forms\Element\Hidden') %}
            {{ element }}
        {% else %}
            <div class="form-group">
                {{ element.label() }}
                <div class="controls">
                    {{ element.setAttribute("class", "form-control") }}
                </div>
            </div>
        {% endif %}
    {% endfor %}

    {{ submit_button("Search", "class": "btn btn-primary") }}
</form>
<div class="mt-4">
{% for vehicle in page.items %}
{% if loop.last %}

<div class="btn-group">
    {{ link_to("dashboard", '<i class="icon-fast-backward"></i> First', "class": "btn") }}
    {{ link_to("dashboard?page=" ~ page.previous, '<i class="icon-step-backward"></i> Previous', "class": "btn") }}
    {{ link_to("dashboard?page=" ~ page.next, '<i class="icon-step-forward"></i> Next', "class": "btn") }}
    {{ link_to("dashboard?page=" ~ page.last, '<i class="icon-fast-forward"></i> Last', "class": "btn") }}
    <span class="help-inline">{{ page.current }}/{{ page.total_items }}</span>
</div>
{% endif %}
    {% if loop.first %}
        <table class="table table-bordered table-striped">
        <thead>
        <tr>
            <th>Id</th>
            <th>Type</th>
            <th>Name</th>
            <th>Condition</th>
            <th>Retail Price</th>
            <th>Sales Price</th>
            <th>Stock</th>
            <th>Mileage</th>
        </tr>
        </thead>
        <tbody>
    {% endif %}
    <tr>
        <td>{{ link_to("dashboard/detail/" ~ vehicle.id ,vehicle.id )}}</td>
        <td>{{ vehicle.type }}</td>
        <td>{{ vehicle.name }}</td>
        <td>{{ vehicle.condition }}</td>
        <td>{{ vehicle.retailPrice }}</td>
        <td>{{ vehicle.salesPrice }}</td>
        <td>{{ vehicle.stock }}</td>
        <td>{{ vehicle.mileage }}</td>
    </tr>
</tbody>
</table>
{% else %}
    No vehicle types are recorded
{% endfor %}
</div>