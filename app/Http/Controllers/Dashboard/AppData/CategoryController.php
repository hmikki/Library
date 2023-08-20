<?php

namespace App\Http\Controllers\Dashboard\AppData;

use App\Http\Controllers\Dashboard\Controller;
use App\Models\Brand;
use App\Models\Category;
use App\Models\Collage;
use App\Models\Country;
use App\Traits\AhmedPanelTrait;

class CategoryController extends Controller
{
    use AhmedPanelTrait;

    public function setup()
    {
        $this->setRedirect('dashboard/app_data/categories');
        $this->setEntity(new Category());
        $this->setTable('categories');
        $this->setLang('Categories');
        $this->setColumns([
            'collage_id'=> [
                'name'=>'collage_id',
                'type'=>'custom_relation',
                'relation'=>[
                    'data'=> Collage::all(),
                    'custom'=>function($Object){
                        return ($Object)?$Object->name:'-';
                    },
                    'entity'=>'collage'
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
            'name'=> [
                'name'=>'name',
                'type'=>'text',
                'is_required'=>true
            ],
            'description'=> [
                'name'=>'description',
                'type'=>'text',
                'is_required'=>true
            ],
            'image'=> [
                'name'=>'image',
                'type'=>'image',
                'is_required'=>true
            ],
            'collage_id'=> [
                'name'=>'collage_id',
                'type'=>'custom_relation',
                'relation'=>[
                    'data'=> Collage::all(),
                    'custom'=>function($Object){
                        return ($Object)?$Object->name:'-';
                    },
                    'entity'=>'collage'
                ],
                'is_required'=>true
            ],
            'is_active'=> [
                'name'=>'is_active',
                'type'=>'active',
                'is_required'=>true
            ],
        ]);
        $this->SetLinks([
            'edit',
            'delete',
        ]);
    }
}
