<?php

namespace App\Models;

use App\Helpers\Constant;
use App\Helpers\Functions;
use App\Models\User;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\BelongsTo;
use Illuminate\Database\Eloquent\Relations\HasMany;

/**
 * @property mixed id
 * @property mixed title
 * @property mixed title_ar
 * @property mixed description
 * @property mixed description_ar
 * @property mixed image
 * @property boolean active
 * @method Service find(int $id)
 */

class Service extends Model
{

    protected $table = 'services';
    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $fillable = ['title', 'title_ar', 'description' , 'description_ar', 'active'];

//    public function getImageAttribute($value): ?string
//    {
//        return ($value)?asset($value):null;
//    }
//    public function setImageAttribute($value)
//    {
//        $this->attributes['image'] = Functions::StoreImageModel($value,'users/image');
//    }

    /**
     * @return mixed
     */
    public function getId()
    {
        return $this->id;
    }

    /**
     * @param mixed $id
     */
    public function setId($id): void
    {
        $this->id = $id;
    }

    /**
     * @return mixed
     */
    public function getTitle()
    {
        return $this->title;
    }

    /**
     * @param mixed $title
     */
    public function setTitle($title): void
    {
        $this->title = $title;
    }

    /**
     * @return mixed
     */
    public function getTitleAr()
    {
        return $this->title_ar;
    }

    /**
     * @param mixed $title_ar
     */
    public function setTitleAr($title_ar): void
    {
        $this->title_ar = $title_ar;
    }

    /**
     * @return mixed
     */
    public function getDescription()
    {
        return $this->description;
    }

    /**
     * @param mixed $description
     */
    public function setDescription($description): void
    {
        $this->description = $description;
    }

    /**
     * @return mixed
     */
    public function getDescriptionAr()
    {
        return $this->description_ar;
    }

    /**
     * @param mixed $description_ar
     */
    public function setDescriptionAr($description_ar): void
    {
        $this->description_ar = $description_ar;
    }
    /**
     * @return bool
     */
    public function isActive() : bool
    {
        return $this->active;
    }

    /**
     * @param bool $active
     */
    public function setActive($active): void
    {
        $this->active = $active;
    }
}
