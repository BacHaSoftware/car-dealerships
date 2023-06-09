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

namespace Invo\Providers;

use Phalcon\Di\DiInterface;
use Phalcon\Di\ServiceProviderInterface;
use Phalcon\Flash\Direct as FlashDirect;

/**
 * Register the flash service with custom CSS classes
 */
class FlashProvider implements ServiceProviderInterface
{
    public function register(DiInterface $di): void
    {
        $di->setShared('flash', function () {
            $flash = new FlashDirect();
            $flash->setImplicitFlush(false);
            $flash->setCssClasses([
                'error'   => 'alert alert-danger',
                'success' => 'alert alert-success',
                'notice'  => 'alert alert-info',
                'warning' => 'alert alert-warning'
            ]);

            return $flash;
        });
    }
}
