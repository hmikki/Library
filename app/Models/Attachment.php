<?php

namespace App\Models;

use App\Helpers\Functions;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\BelongsTo;

class Attachment extends Model
{

    protected $table = 'attachments';
    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $fillable = [ 'name', 'category_id', 'description', 'file','type','is_active'];

    public function category():BelongsTo
    {
        return $this->belongsTo(Category::class);
    }

    /**
     * @return mixed
     */
    public function getFile()
    {
        return asset($this->file);
    }

    /**
     * @param mixed $file
     */
    public function setFile($file): void
    {
        $this->file = Functions::StoreImageModel($file, 'Attachments');
    }
}
