<?php

namespace App\Http\Requests\Admin\AppContent\post;

//use App\Models\Media;
use App\Helpers\Functions;
use App\Mail\PostMail;
use App\Models\ModelPermission;
use App\Models\ModelRole;
use App\Models\RolePermission;
use App\Models\User;
use Illuminate\Foundation\Http\FormRequest;
use Illuminate\Support\Facades\Mail;
use Illuminate\Support\Facades\Request;

class StoreRequest extends FormRequest
{

    /**
     * Determine if the user is authorized to make this request.
     *
     * @return bool
     */
    public function authorize()
    {
        return true;
    }
    /**
     * Get the validation rules that apply to the request.
     *
     * @return array
     */
    public function rules()
    {
        return [];
    }

    public function preset($crud)
    {
        $Object = $crud->getEntity();
        foreach ($crud->getFilters() as $filter){
            if ($filter['type'] == 'where'){
                $Object->{$filter['name']} = $filter['value'];
            }
            elseif ($filter['type'] == 'whereNull'){
                $Object->{$filter['name']} = null;
            }
            elseif ($filter['type'] == 'whereNotNull'){
                $Object->{$filter['name']} = null;
            }
        }
        foreach ($crud->getFields() as $field) {
            if ($field['type'] == 'image' || $field['type'] == 'file' ){
                if($this->hasFile($field['name'])){
                    $attribute_name = $field['name'];
                    $destination_path = "storage/media/";
                    $attribute_value = $field['name'];
                    // if a new file is uploaded, store it on disk and its filename in the database
                    if ($this->hasFile($attribute_name)) {
                        $file = $this->file($attribute_name);
                        if ($file->isValid()) {
                            $file_name = md5($file->getClientOriginalName().time()).'.'.$file->getClientOriginalExtension();
                            $file->move($destination_path, $file_name);
                            $attribute_value =  $destination_path.$file_name;
                        }
                    }
                    $Object->{$field['name']} = $attribute_value;
                }
            }
            elseif ($field['type'] == 'multi_checkbox'){
                $MultiCheckboxField[] = $field;
            }
            elseif ($field['type'] == 'images'){
                $ImagesField[] = $field;
            }else {
                if ($this->filled($field['name'])) {
                    $Object->{$field['name']} = $this->{$field['name']};
                }
            }
        }
        $users = User::where('active', true)->get();
        foreach ($users as $user){
            Mail::to($user)->send(new PostMail(((app()->getLocale() == 'ar')?$Object->title_ar: $Object->title),((app()->getLocale() == 'ar')?$Object->description_ar: $Object->description)));
        }
        $Object->save();
        $Object->refresh();
        if(isset($MultiCheckboxField)){
            foreach ($MultiCheckboxField as $MField){
                if ($this->filled($MField['name'])){
                    foreach ($this->{$MField['name']} as $MValue){
                        $Model = $MField['custom']['RelationModel']['Model'];
                        $Model->{$MField['custom']['RelationModel']['ref_id']} = $MValue;
                        $Model->{$MField['custom']['RelationModel']['id']} = $Object->getId();
                        $Model->save();
                    }
                }
            }
        }
//        if(isset($ImagesField)){
//            foreach ($ImagesField as $IField){
//                foreach ($this->file($IField['name']) as $IValue){
//                    $Model = new Media();
//                    $Model->setFile($IValue);
//                    $Model->setMediaType($IField['media_type']);
//                    $Model->setRefId($Object->id);
//                    $Model->save();
//                }
//            }
//        }
        if($crud->getLang() == 'Dashboard'){
            if($this->filled('roles')) {
                foreach ($this->roles as $role_id) {
                    $RolePermission = new ModelRole();
                    $RolePermission->setModelId($Object->getId());
                    $RolePermission->setRoleId($role_id);
                    $RolePermission->save();
                    foreach (RolePermission::where('role_id', $role_id)->get() as $Permission) {
                        $RolePermission = new ModelPermission();
                        $RolePermission->setModelId($Object->getId());
                        $RolePermission->setPermissionId($Permission->getPermissionId());
                        $RolePermission->save();
                    }
                }
            }
        }
        if($crud->getLang() == 'Dashboard' || $crud->getLang() == 'Role'){
            if($this->filled('permissions'))
            {
                if ($crud->getLang() == 'Dashboard'){
                    foreach ($this->permissions as $permission_id){
                        $RolePermission = new ModelPermission();
                        $RolePermission->setModelId($Object->getId());
                        $RolePermission->setPermissionId($permission_id);
                        $RolePermission->save();
                    }
                }
                if ($crud->getLang() == 'Role'){
                    foreach ($this->permissions as $permission_id){
                        $RolePermission = new RolePermission();
                        $RolePermission->setRoleId($Object->getId());
                        $RolePermission->setPermissionId($permission_id);
                        $RolePermission->save();
                    }
                }
            }
        }
        return redirect($crud->getRedirect())->with('status', __('dashboard.messages.saved_successfully'));
    }
}
