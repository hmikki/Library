<?php

namespace App\Http\Controllers\Dashboard\AppContent;

use App\Http\Controllers\Dashboard\Controller;
use App\Models\Attachment;
use App\Models\Book;
use App\Models\Brand;
use App\Models\Category;
use App\Models\Collage;
use App\Models\Country;
use App\Models\User;
use App\Traits\AhmedPanelTrait;

class AttachmentController extends Controller
{
    use AhmedPanelTrait;

    public function setup()
    {
        $this->setRedirect('dashboard/app_content/attachments');
        $this->setEntity(new Attachment());
        $this->setTable('attachments');
        $this->setLang('Attachments');
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
            'name'=> [
                'name'=>'name',
                'type'=>'text',
                'is_searchable'=>true,
                'order'=>true
            ],
            'type'=> [
                'name'=>'type',
                'type'=>'select',
                'data'=>[
                    1=>'فيديو',
                    2=>'مستند',
                    3=>'برنامج',
                ],
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
            'file'=> [
                'name'=>'file',
                'type'=>'image',
                'is_required'=>true,
                'is_required_update'=>false
            ],
            'type'=> [
                'name'=>'type',
                'type'=>'select',
                'data'=>[
                    1=>'فيديو',
                    2=>'مستند',
                    3=>'برنامج'
                ],
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
