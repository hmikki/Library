<?php

namespace App\Models;

use App\Helpers\Functions;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\BelongsTo;

class Book extends Model
{

    protected $table = 'books';
    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $fillable = [ 'user_id','name', 'category_id', 'description', 'download_link', 'open_link', 'image','is_active'];

    public function category():BelongsTo
    {
        return $this->belongsTo(Category::class);
    }
    public function user():BelongsTo
    {
        return $this->belongsTo(User::class);
    }

    /**
     * @return mixed
     */
    public function getImage()
    {
        return asset($this->image);
    }

    /**
     * @param mixed $image
     */
    public function setImage($image): void
    {
        $this->image = Functions::StoreImageModel($image, 'Books');
    }
}
