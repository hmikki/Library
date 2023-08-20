<?php

namespace App\Models;

use App\Helpers\Functions;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\BelongsTo;

/**
 * @property mixed id
 * @property mixed name
 * @property mixed description
 * @property mixed image
 * @property boolean is_active
 */
class Collage extends Model
{
    protected $table = 'collages';
    protected $fillable = ['name','description', 'image','is_active'];

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
