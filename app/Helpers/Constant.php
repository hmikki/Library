<?php


namespace App\Helpers;


class Constant
{
    const NOTIFICATION_TYPE = [
        'General'=>1,
    ];
    const VERIFICATION_TYPE = [
        'Email'=>1,
        'Mobile'=>2
    ];
    const VERIFICATION_TYPE_RULES = '1,2';

    const FORGET_TYPE = [
        'Email'=>1,
        'Mobile'=>2
    ];
    const FORGET_TYPE_RULES = '1,2';
    const MEDIA_TYPE = [
        'Product'=>1,
        'video'=>2,
        'Attribute'=>3,
    ];
    const TICKETS_STATUS = [
        'Open'=>1,
        'Closed'=>2
    ];
    const SETTING_TYPE = [
        'Page'=>1,
        'Notification'=>2,
        'Values'=>3,
    ];
    const USER_TYPE=[
        'Customer'=>1,
        'Order'=>2
    ];
    const USER_TYPE_RULES = '1,2';
    const ORDER_STATUSES = [
        'New' => 1,
        'Canceled' => 2,
        'InProgress' => 3,
        'Rejected' => 4,
        'Accepted' => 5,
        'InDelivery' => 6,
        'Received' => 7,
        'Reviewed' => 8,
    ];
    const COMPLETED_ORDER_STATUSES = [self::ORDER_STATUSES['Rejected'],self::ORDER_STATUSES['Canceled'],self::ORDER_STATUSES['Received']];
    const ORDER_STATUSES_RULES = '1,2,3,4,5,6,7,8';

    const PAYMENT_METHOD = [
        'BankTransfer'=>1,
        'Cash'=>2,
    ];
    const PAYMENT_METHOD_RULES = '1,2';
    const TRANSACTION_STATUS = [
        'Pending'=>1,
        'Paid'=>2,
    ];
    const TRANSACTION_TYPES = [
        'Deposit'=>1,
        'Withdraw'=>2,
        'Holding'=>3,
    ];
    const QUALITY = [
        'HIGH' => 2,
        'MID' => 1,
        'LOW' => 0,
    ];
    const QUALITY_RULES = '0,1,2';

    const SENDER_TYPE = [
        'User'=>1,
        'Admin'=>2,
    ];
}
