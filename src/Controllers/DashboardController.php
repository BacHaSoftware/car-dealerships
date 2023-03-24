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

namespace Invo\Controllers;

use Invo\Constants\Status;
use Invo\Models\Vehicles;
use Phalcon\Mvc\Model\Criteria;
use Phalcon\Paginator\Adapter\Model as Paginator;
use Invo\Forms\VehiclesForm;

/**
 * DashboardController
 *
 * Manage CRUD operations for Vehicles
 */
class DashboardController extends ControllerBase
{
    public function initialize()
    {
        parent::initialize();

        $this->tag->title()
                  ->set('Manage your vehicles')
        ;
    }

    /**
     * Shows the index action
     */
    public function indexAction(): void
    {
        $this->view->form = new VehiclesForm();
        $parameters = [];
        if ($this->request->isPost()) {
            $query = Criteria::fromInput(
                $this->di,
                Vehicles::class,
                $this->request->getPost()
            );
            $parameters =  $query->getParams();
        }
       
        $paginator = new Paginator([
            'model'  => Vehicles::class,
            'parameters'=> is_array($parameters) ? $parameters :[],
            'limit' => 10,
            'page'  => $this->request->getQuery('page', 'int', 1),
        ]);

        $this->view->page = $paginator->paginate();
    }

     /**
     * Detail a Vehicle based on its id
     *
     * @param int $id
     */
    public function detailAction($id): void
    {
        $vehicle = Vehicles::findFirstById($id);
        if (!$vehicle) {
            $this->flash->error('Vehicle was not found');

            $this->dispatcher->forward([
                'controller' => 'dashboard',
                'action'     => 'index',
            ]);

            return;
        }
        $this->view->vehicle = $vehicle;
    }

}
