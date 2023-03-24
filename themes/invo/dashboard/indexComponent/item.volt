<div class="col vehicle-inventory-container">
  <div class="ibox">
    <div class="ibox-content product-box">
      <div class="product-imitation vehicle-inventory-item">
        <a href='{{ url("dashboard/detail/" ~ vehicle.id) }}' title='vehicle detail'>
        <img src="{{ vehicle.image }}" width="100%" alt="" />
        <span class="product-price-discount"
          >${{ vehicle.salesPrice ? number_format(vehicle.salesPrice,2) : number_format(vehicle.retailPrice,2) }}</span
        >
      </a>
      </div>
      <div class="product-desc">
        <small class="text-muted">{{ vehicle.type }}</small>
        {{ link_to("dashboard/detail/" ~ vehicle.id ,vehicle.name ,"class": "product-name")}}
        <div>
          <img
            src="//gcbimages.storage.googleapis.com/vidbtn/video_btn_red.png"
            alt="Button for Video"
            title="Button for Video"
            style="cursor: pointer"
          />
        </div>
        <div class="small m-t-xs">
          <div class="row">
            <div class="col">Condition:</div>
            <div class="col">{{ vehicle.condition }}</div>
          </div>

          <div class="row">
            <div class="col">Retail Price:</div>
            <div class="col">${{ number_format(vehicle.retailPrice,2) }}</div>
          </div>
          {% if vehicle.salesPrice %}
          <div class="row">
            <div class="col">Savings Up To:</div>
            <div class="col">
              ${{number_format( vehicle.retailPrice - vehicle.salesPrice,2)  }}
            </div>
          </div>
          {% endif %}
          <div class="row">
            <div class="col">Sales Price:</div>
            <div class="col">${{ number_format(vehicle.salesPrice,2)  }}</div>
          </div>

          <div class="row">
            <div class="col">Stock #:</div>
            <div class="col">{{ vehicle.stock }}</div>
          </div>

          <div class="row">
            <div class="col">Mileage:</div>
            <div class="col">{{ vehicle.mileage }}</div>
          </div>
        </div>
      </div>
    </div>
  </div>
</div>
