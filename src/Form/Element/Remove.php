<?php
/**
 * Pi Engine (http://pialog.org)
 *
 * @link            http://code.pialog.org for the Pi Engine source repository
 * @copyright       Copyright (c) Pi Engine http://pialog.org
 * @license         http://pialog.org/license.txt BSD 3-Clause License
 */

/**
 * @author Hossein Azizabadi <azizabadi@faragostaresh.com>
 */
namespace Module\Subscription\Form\Element;

use Pi;
use Zend\Form\Element\Button as ZendButton;

class Remove extends ZendButton
{
    /**
     * @return array
     */
    public function getAttributes()
    {
        $this->Attributes = array(
            'class' => 'img-remove btn btn-danger btn-sm',
            'data-toggle' => 'button',
            'data-link' => $this->attributes['link'],
        );
        return $this->Attributes;
    }
}