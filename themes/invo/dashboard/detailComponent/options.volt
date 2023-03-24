{% set data = [
    "Preferred Equipment Group 1SL",
    "3.47 Final Drive Axle Ratio",
    "Wheels: 18\" Machined Aluminum w/Light Silver Met",
    "Front Bucket Seats",
    "Perforated Leather-Appointed Seat Trim",
    "Not Equipped w/Driver & Fr Passenger Heated Seats",
    "Radio: Buick Infotainment System AM/FM Stereo",
    "Horizontal Cargo Net (LPO)",
    "Not Equipped w/Rear Park Assist",
    "8-Way Power Driver Seat Adjuster",
    "Front Passenger 8-Way Power Seat Adjuster",
    "Heated Driver & Front Passenger Seats",
    "Front Bin Center Console USB Ports",
    "Wireless Apple CarPlay/Wireless Android Auto",
    "IntelliBeam Headlamp Control w/Auto High Beam",
    "SiriusXM Radio",
    "Following Distance Indicator",
    "Forward Collision Alert",
    "Lane Keep Assist w/Lane Departure Warning",
    "Automatic Emergency Braking",
    "Front Pedestrian Braking",
    "7-Speaker Audio System Feature w/Amplifier",
    "USB Charging-Only Ports",
    "4-Wheel Disc Brakes",
    "Air Conditioning",
    "Electronic Stability Control",
    "Front Center Armrest",
    "Power Liftgate",
    "Spoiler",
    "ABS brakes",
    "Adjustable head restraints: driver and passenger w/tilt",
    "Alloy wheels",
    "Auto-dimming door mirrors",
    "Automatic temperature control",
    "Brake assist",
    "Bumpers: body-color",
    "Delay-off headlights",
    "Driver door bin",
    "Driver vanity mirror",
    "Dual front impact airbags",
    "Dual front side impact airbags",
    "Four wheel independent suspension",
    "Front anti-roll bar",
    "Front dual zone A/C",
    "Front reading lights",
    "Fully automatic headlights",
    "Heated door mirrors",
    "Heated front seats",
    "Heated steering wheel",
    "Illuminated entry",
    "Knee airbag",
    "Low tire pressure warning",
    "Memory seat",
    "Occupant sensing airbag",
    "Outside temperature display",
    "Overhead airbag",
    "Overhead console",
    "Panic alarm",
    "Passenger door bin",
    "Passenger vanity mirror",
    "Power door mirrors",
    "Power driver seat",
    "Power passenger seat",
    "Power steering",
    "Power windows",
    "Radio data system",
    "Rear anti-roll bar",
    "Rear reading lights",
    "Rear seat center armrest",
    "Rear window defroster",
    "Rear window wiper",
    "Remote keyless entry",
    "Roof rack: rails only",
    "Security system",
    "Speed control",
    "Split folding rear seat",
    "Steering wheel mounted audio controls",
    "Telescoping steering wheel",
    "Tilt steering wheel",
    "Traction control",
    "Trip computer",
    "Variably intermittent wipers",
    "Auto-dimming Rear-View mirror",
    "7 Speakers",
    "Compass",
    "AM/FM radio: SiriusXM",
    "Auto High-beam Headlights",
    "Emergency communication system: OnStar and Buick connected services capable",
    "Apple CarPlay/Android Auto",
    "Premium audio system: Buick Infotainment System"
] %}

<div
  class="primary-features vehicle-details-section-container padded-container d-print-none"
>
  <h1 class="category-header">
    <span> Options &amp; Features </span>
  </h1>
  <div class="row">
    <div class="col-12 white-bg padded-container">
      <table class="table white-bg table-bordered table-striped">
        <tbody>
            {% for item in data %}
          <tr>
            <td class="option-description">
              <h3>{{item}}</h3>
            </td>
          </tr>
          {% endfor %}
        </tbody>
      </table>
    </div>
  </div>
</div>
