<?php

namespace App\Http\Controllers\Dashboard\AppContent;

use App\Http\Controllers\Dashboard\Controller;
use App\Models\Book;
use App\Models\Brand;
use App\Models\Category;
use App\Models\Collage;
use App\Models\Country;
use App\Models\User;
use App\Traits\AhmedPanelTrait;

class BookController extends Controller
{
    use AhmedPanelTrait;

    public function setup()
    {
        $this->setRedirect('dashboard/app_content/books');
        $this->setEntity(new Book());
        $this->setTable('books');
        $this->setLang('Books');
        $this->setColumns([
            'category_id'=> [
                'name'=>'category_id',
                'type'=>'custom_relation',
                'relation'=>[
                    'data'=> Category::all(),
                    'custom'=>function($Object){
                        return ($Object)?$Object->name:'-';
                    },
                    'entity'=>'category'
                ],
                'is_searchable'=>true,
                'order'=>true
            ],
            'user_id'=> [
                'name'=>'user_id',
                'type'=>'custom_relation',
                'relation'=>[
                    'data'=> User::all(),
                    'custom'=>function($Object){
                        return ($Object)?$Object->name:'-';
                    },
                    'entity'=>'user'
                ],
                'is_searchable'=>true,
                'order'=>true
            ],
            'name'=> [
                'name'=>'name',
                'type'=>'text',
                'is_searchable'=>true,
                'order'=>true
            ],
            'image'=> [
                'name'=>'image',
                'type'=>'image',
                'is_searchable'=>true,
                'order'=>true
            ],
            'is_active'=> [
                'name'=>'is_active',
                'type'=>'active',
                'is_searchable'=>true,
                'order'=>true
            ],
        ]);
        $this->setFields([
            'category_id'=> [
                'name'=>'category_id',
                'type'=>'custom_relation',
                'relation'=>[
                    'data'=> Category::all(),
                    'custom'=>function($Object){
                        return ($Object)?$Object->name:'-';
                    },
                    'entity'=>'category'
                ],
                'is_required'=>true,
                'is_required_update'=>false
            ],
            'user_id'=> [
                'name'=>'user_id',
                'type'=>'custom_relation',
                'relation'=>[
                    'data'=> User::all(),
                    'custom'=>function($Object){
                        return ($Object)?$Object->name:'-';
                    },
                    'entity'=>'user'
                ],
                'is_required'=>false,
                'is_required_update'=>false
            ],
            'name'=> [
                'name'=>'name',
                'type'=>'text',
                'is_required'=>true,
                'is_required_update'=>false
            ],
            'description'=> [
                'name'=>'description',
                'type'=>'text',
                'is_required'=>true,
                'is_required_update'=>false
            ],
            'open_link'=> [
                'name'=>'open_link',
                'type'=>'text',
                'is_required'=>true,
                'is_required_update'=>false
            ],
            'download_link'=> [
                'name'=>'download_link',
                'type'=>'text',
                'is_required'=>true,
                'is_required_update'=>false
            ],
            'image'=> [
                'name'=>'image',
                'type'=>'image',
                'is_required'=>true,
                'is_required_update'=>false
            ],
            'is_active'=> [
                'name'=>'is_active',
                'type'=>'active',
                'is_required'=>true,
                'is_required_update'=>false
            ],
        ]);
        $this->SetLinks([
            'edit',
            'delete',
        ]);
    }
}
