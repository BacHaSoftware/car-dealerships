<?php

/**
 * This file is part of the Invo.
 *
 * (c) Phalcon Team <team@phalcon.io>
 *
 * For the full copyright and license information, please view
 * the LICENSE file that was distributed with this source code.
 */

declare(strict_types=1);

namespace Invo\Models;

use Phalcon\Mvc\Model;

class Vehicles extends Model
{
    /**
     * @var integer
     */
    public $id;

    /**
     * @var string
     */
    public $name;

    /**
     * @var string
     */
    public $type;

    /**
     * @var string
     */
    public $condition;

    /**
     * @var float
     */
    public $retailPrice;
    /**
     * @var float
     */
    public $salesPrice;

    /**
     * @var integer
     */
    public $stock;
     /**
     * @var integer
     */
    public $mileage;
     /**
     * @var integer
     */
    public $mpgCity;
     /**
     * @var integer
     */
    public $mpgHwy;
     /**
     * @var string
     */
    public $engine;
     /**
     * @var string
     */
    public $transmissions; 
    /**
    * @var string
    */
    public $drivetrain; 
    /**
    * @var string
    */
    public $image; 
    /**
    * @var string
    */
    public $exteriorColor;  
    /**
    * @var string
    */
    public $interiorColor; 
    /**
    * @var string
    */
    public $vin;
    /**
    * @var string
    */
    public $dealerLot;
}