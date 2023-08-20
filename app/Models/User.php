<?php

namespace App\Models;

use App\Helpers\Functions;
use Illuminate\Database\Eloquent\Builder;
use Illuminate\Database\Eloquent\Relations\BelongsTo;
use Illuminate\Database\Eloquent\Relations\HasMany;
use Illuminate\Foundation\Auth\User as Authenticatable;
use Illuminate\Notifications\Notifiable;
use Illuminate\Support\Facades\Hash;
use Laravel\Passport\HasApiTokens;

/**
 * @property mixed id
 * @property mixed email
 * @property mixed password
 * @property mixed email_verified_at
 * @property mixed mobile_verified_at
 * @property boolean active
 */
class User extends Authenticatable
{
    use Notifiable,HasApiTokens;

    protected $fillable = ['email','password','email_verified_at','mobile_verified_at','active',];

    protected $hidden = ['password', 'remember_token'];

    protected $casts = ['email_verified_at' => 'datetime','mobile_verified_at' => 'datetime'];

    protected static function boot()
    {
        parent::boot();
        static::addGlobalScope('order', function (Builder $builder) {
            $builder->orderBy('created_at', 'desc');
        });
        static::deleting(function($Object) {
            foreach ($Object->notifications as $notification) {
                $notification->delete();
            };
        });
    }

    /**
     * @return bool
     */
    public function isActive(): bool
    {
        return $this->active;
    }

    /**
     * @param bool $active
     */
    public function setActive(bool $active): void
    {
        $this->active = $active;
    }

}
