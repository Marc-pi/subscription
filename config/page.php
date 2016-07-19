<?php
/**
 * Pi Engine (http://pialog.org)
 *
 * @link            http://code.pialog.org for the Pi Engine source repository
 * @copyright       Copyright (c) Pi Engine http://pialog.org
 * @license         http://pialog.org/license.txt New BSD License
 */

/**
 * @author Hossein Azizabadi <azizabadi@faragostaresh.com>
 */
return array(
    // Admin section
    'admin' => array(
        array(
            'label' => _a('People'),
            'controller' => 'people',
            'permission' => 'people',
        ),
        array(
            'label' => _a('Campaign'),
            'controller' => 'campaign',
            'permission' => 'campaign',
        ),
        array(
            'label' => _a('Tools'),
            'controller' => 'tools',
            'permission' => 'tools',
        ),
    ),
    // Front section
    'front' => array(
        array(
            'title' => _a('Index page'),
            'controller' => 'index',
            'permission' => 'public',
            'block' => 1,
        ),
    ),
);