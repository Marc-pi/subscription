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
    // Front section
    'front' => array(
        'public' => array(
            'title' => _a('Global public resource'),
            'access' => array(
                'guest',
                'member',
            ),
        ),
    ),
    // Admin section
    'admin' => array(
        'people' => array(
            'title' => _a('People'),
            'access' => array(),
        ),
        'campaign' => array(
            'title' => _a('Campaign'),
            'access' => array(),
        ),
        'tools' => array(
            'title' => _a('Tools'),
            'access' => array(),
        ),
    ),
);