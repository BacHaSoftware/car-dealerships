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

namespace Invo\Forms;

use Phalcon\Filter\Validation\Validator\Numericality;
use Phalcon\Filter\Validation\Validator\PresenceOf;
use Phalcon\Forms\Element\Hidden;
use Phalcon\Forms\Element\Select;
use Phalcon\Forms\Element\Text;
use Phalcon\Forms\Form;

class VehiclesForm extends Form
{
    /**
     * Initialize the Vehicles form
     *
     * @param null  $entity
     * @param array $options
     */
    public function initialize($entity = null, array $options = [])
    {
        if (!isset($options['edit'])) {
            $this->add((new Text('id'))->setLabel('Id'));
        } else {
            $this->add(new Hidden('id'));
        }

        /**
         * Name text field
         */
        $name = new Text('name');
        $name->setLabel('Name');
        $name->setFilters(['striptags', 'string']);
        $name->addValidators([
            new PresenceOf(['message' => 'Name is required']),
        ]);

        $this->add($name);

       

        /**
         * Price text field
         */
        $price = new Text('retailPrice');
        $price->setLabel('Retail Price');
        $price->setFilters(['float']);
        $price->addValidators([
            new PresenceOf(['message' => 'Retail Price is required']),
            new Numericality(['message' => 'Retail Price is required']),
        ]);

        $this->add($price);
    }
}
