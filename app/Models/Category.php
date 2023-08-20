<?php

namespace App\Models;

use App\Helpers\Functions;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\BelongsTo;

/**
 * @property mixed id
 * @property mixed name
 * @property mixed collage_id
 * @property mixed description
 * @property mixed image
 * @property boolean is_active
 */
class Category extends Model
{
    protected $table = 'categories';
    protected $fillable = ['name','collage_id','description', 'image','is_active'];

    public function collage(): BelongsTo
    {
        return $this->belongsTo(Collage::class);
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
        $this->image = Functions::StoreImageModel($image, 'Collages');
    }
    /**
     * @return bool
     */
    public function isActive(): bool
    {
        return $this->is_active;
    }

    /**
     * @param bool $active
     */
    public function setActive(bool $active): void
    {
        $this->is_active = $active;
    }
}
