<div class="row neutral-background-1">
  <div class="container neutral-background-1">
    <div class="row">
      <div class="col float-left">
        {{ link_to("dashboard", '
        <h4>Back to list</h4>
        ') }}
      </div>
    </div>
    <div class="row">
      <div class="col-7">
        <img src="{{ vehicle.image }}" width="100%" alt="" />
      </div>
      <div class="col-5">
        <div class="padded-container detail-inventory-pricing white-bg">
          <h2 class="mb-1 font-weight-bold">Pricing Details</h2>
          <ul class="pricing list-unstyled">
            <li class="clearfix">
              <h2 class="price msrp">${{ number_format(vehicle.retailPrice,2) }}</h2>
              <h3 id="msrp-header" class="pricing-label">Retail Price</h3>
            </li>
            <li class="clearfix subLine"></li>
            <li class="clearfix">
              <h3 class="price sale-price">${{ number_format(vehicle.salesPrice,2) }}</h3>
              <h2 class="pricing-label sale-price">Long Price</h2>
            </li>
          </ul>
          <div class="row padded-container">
            <div class="col d-flex justify-content-around">
              <button
                class="btn btn-primary payment-buddy mt-1"
                data-dealer-id="1"
                data-vehicle-id="7420"
                data-price=""
                title="Click to calculate you monthly payments"
              >
                Calculate Payments
              </button>

              <a href="/user/credit-app/v/7420"
                ><button class="btn btn-primary" type="button">
                  Apply for Credit!
                </button></a
              >
            </div>
          </div>
          <div class="row">
            <div class="col d-flex justify-content-around mt-1">
              <button class="btn btn-primary" type="button">Get ePrice!</button>

              <button
                title="We have a concierge service that will deliver any vehicle to you within 100 miles of the dealership for you to test drive at no cost."
                type="button"
                class="btn btn-primary mt-1"
              >
                Concierge
              </button>
              <a
                href="/gs-vehicle/valueYourTrade"
                class="btn btn-primary mt-1"
                data-bb-processed="true"
                >Value Your Trade</a
              >
            </div>
          </div>

          <div class="row">
            <div class="col d-flex justify-content-around pt-2">
              <a href="/gs-vehicle/preApproval" class="btn btn-primary"
                >Get Pre-approved Now</a
              >
            </div>
          </div>

          <div class="row">
            <div class="col mt-2 text-center">
              <a
                href="http://www.carfax.com/cfm/ccc_DisplayHistoryRpt.cfm?partner=WDB_0&amp;vin=LRBFZNR45PD024590"
                target="_blank"
              >
                <img
                  class="mt-1"
                  src="https://longofathens.com/global-images/carfax.png"
                  width="155"
                  height="42"
                  alt=""
                />
              </a>
            </div>
          </div>

          <small>*Not all buyers will qualify. See dealer for details</small>
        </div>
      </div>
    </div>
    <div class="row">
      <div class="col-7">
        {{ partial('dashboard/detailComponent/options') }}
      </div>
      <div class="col-5">
        {{ partial('dashboard/detailComponent/information',['vehicle':vehicle]) }}
      </div>
    </div>
  </div>
</div>
