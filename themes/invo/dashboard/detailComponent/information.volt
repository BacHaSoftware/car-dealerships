<div class="padded-container">
    <ul class="list-unstyled vehicle-snapshot">
        <li>
            <span class="snapshot-data">
                {{ vehicle.mpgCity }} MPG
                <span>City</span>
            </span>
            <span class="snapshot-data">
                {{ vehicle.mpgHwy }} MPG
                <span>Hwy</span>
            </span>
            <i class="fas fa-gas-pump fa-3x snapshot-icon"></i>
        </li>

        <li>
            <span class="snapshot-data">
                {{ vehicle.engine }} <span>{{ vehicle.transmissions }} </span>
                <span>{{ vehicle.drivetrain }}</span>
            </span>
            <i class="fas fa-tachometer-alt fa-3x snapshot-icon"></i>
        </li>
        <li>
            <span class="snapshot-data">
                Exterior Color: {{ vehicle.exteriorColor }}
                <span>Interior Color: {{ vehicle.interiorColor }}</span>
            </span>
            <i class="fas fa-palette fa-3x snapshot-icon"></i>
        </li>
        <li>
            <span class="snapshot-data">
                <span>Condition: {{ vehicle.condition }}</span>
                <span>Mileage: {{ vehicle.mileage }}</span>
                <span>Stock #: {{ vehicle.stock }}</span>
                <span>VIN: {{ vehicle.vin }}</span>
                <span style="color: #da4f49">Dealer Lot:{{ vehicle.dealerLot }}</span>
            </span>
            <i class="fas fa-clipboard-list fa-3x snapshot-icon"></i>
        </li>
    </ul>
</div>