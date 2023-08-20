<?php

use App\Helpers\Constant;

return [

    'Employee'=>[
        'crud_names' => 'Employees',
        'crud_name' => 'Employee',
        'crud_the_name' => 'The Employee',
        'name' => 'Name',
        'email' => 'E-Mail',
        'active' => 'Status',
        'image' => 'Personal Image',
    ],
    'User'=>[
        'crud_names' => 'Users',
        'crud_name' => 'User',
        'crud_the_name' => 'The User',
        'name' => 'Name',
        'email' => 'E-Mail',
        'mobile' => 'Mobile',
        'avatar' => 'Avatar',
        'type' => 'Type',
        'balance' => 'Balance',
        'address' => 'Address',
        'app_locale' => 'App Locale',
        'active' => 'Status',
        'created_at' => 'Created At',
        'Types'=>[
            ''.Constant::USER_TYPE['Customer']=>'Customer',
            ''.Constant::USER_TYPE['Order']=>'Order',
        ],
        'Links'=>[
            'active_mobile_email'=>'Active Mobile And Email'
        ]
    ],
    'Setting'=>[
        'crud_names' => 'Settings',
        'crud_name' => 'Setting',
        'crud_the_name' => 'The Setting',
        'key' => 'Key',
        'name' => 'Name En',
        'name_ar' => 'Name Ar',
        'value' => 'Value',
        'value_ar' => 'Value Ar',
        'pages'=>'Pages',
        'notifications'=>'Notifications',
        'other'=>'Other Settings'
    ],
    'Faq'=>[
        'crud_names' => 'FAQ',
        'crud_name' => 'Faq',
        'crud_the_name' => 'The Faq',
        'question' => 'Question En',
        'question_ar' => 'Question Ar',
        'faq_category_id' => 'Faq Category',
        'answer' => 'Answer En',
        'answer_ar' => 'Answer Ar',
        'active' => 'Status',
    ],
    'Log'=>[
        'crud_names' => 'Logs',
        'crud_name' => 'Log',
        'crud_the_name' => 'The Log',
        'employee_id' => 'Actor',
        'ref_id' => 'Reference',
        'ip' => 'IP',
        'created_at' => 'Date',
        'type' => 'Type',
        'Types'=>[
            ''.\App\Models\Log::$Type['Login']=>'Login',
            ''.\App\Models\Log::$Type['Logout']=>'Logout',
        ]
    ],
    'Ticket'=>[
        'crud_names' => 'Tickets',
        'crud_name' => 'Ticket',
        'crud_the_name' => 'The Ticket',
        'id' => '#',
        'user_id' => 'User',
        'name' => 'Name',
        'email' => 'Email',
        'mobile' => 'Mobile',
        'title' => 'Title',
        'message' => 'Message',
        'status' => 'Status',
        'Statuses'=>[
            ''.\App\Helpers\Constant::TICKETS_STATUS['Open']=>'Opened',
            ''.\App\Helpers\Constant::TICKETS_STATUS['Closed']=>'Closed',
        ],
        'created_at'=>'Created At',
    ],
    'Permission'=>[
        'crud_names' => 'Permissions',
        'crud_name' => 'Permission',
        'crud_the_name' => 'The Permission',
        'id' => '#',
        'name' => 'Name En',
        'name_ar' => 'Name Ar',
    ],
    'Role'=>[
        'crud_names' => 'Roles',
        'crud_name' => 'Role',
        'crud_the_name' => 'The Role',
        'id' => '#',
        'name' => 'Name En',
        'name_ar' => 'Name Ar',
        'permissions' => 'Permissions',
    ],
//    'Country'=>[
//        'crud_names' => 'Countries',
//        'crud_name' => 'Country',
//        'crud_the_name' => 'The Country',
//        'name' => 'Name En',
//        'name_ar' => 'Name Ar',
//        'country_code' => 'Country Code',
//        'flag' => 'Country Flag',
//        'coin_id' => 'Coin Id',
//        'active' => 'Status',
//        'tax'=> 'tax',
//        'delivery_cost' => 'delivery cost',
//    ],
//    'City'=>[
//        'crud_names' => 'Cities',
//        'crud_name' => 'City',
//        'crud_the_name' => 'The City',
//        'name' => 'Name En',
//        'name_ar' => 'Name Ar',
//        'country_id' => 'Country',
//        'active' => 'Status',
//    ],
//    'SplashScreen'=>[
//        'crud_names' => 'Splash Screens',
//        'crud_name' => 'Splash Screen',
//        'crud_the_name' => 'The Splash Screen',
//        'title' => 'Title',
//        'description' => 'Description',
//        'title_ar' => 'Title Ar',
//        'description_ar' => 'Description Ar',
//        'image' => 'Image',
//        'order' => 'Order',
//        'active' => 'Status',
//    ],
//    'Advertisement'=>[
//        'crud_names' => 'Advertisements',
//        'crud_name' => 'Advertisement',
//        'crud_the_name' => 'The Advertisement',
//        'name' => 'Name',
//        'name_ar' => 'Name Ar',
//        'image' => 'Image',
//        'popup' => 'PopUp',
//        'active' => 'Status',
//    ],
    'Posts'=>[
        'crud_names' => 'Posts',
        'crud_name' => 'Post',
        'crud_the_name' => 'The Post',
        'title' => 'Title En',
        'title_ar' => 'Title Ar',
        'description' => 'Description En',
        'description_ar' => 'Description Ar',
        'color' => 'Color',
        'active' => 'Status',
        'image' => 'Image',
    ],
    'Services'=>[
        'crud_names' => 'Services',
        'crud_name' => 'Services',
        'crud_the_name' => 'The Services',
        'title' => 'Title En',
        'title_ar' => 'Title Ar',
        'description' => 'Description En',
        'description_ar' => 'Description Ar',
        'active' => 'Status',
        'image' => 'Image',
    ],
];
