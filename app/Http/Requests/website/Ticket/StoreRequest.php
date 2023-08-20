<?php

namespace App\Http\Requests\website\Ticket;

use App\Http\Requests\Api\ApiRequest;
use App\Http\Resources\Api\Ticket\TicketResource;
use App\Models\Ticket;
use App\Traits\ResponseTrait;
use Illuminate\Http\JsonResponse;
use Illuminate\Http\Request;

/**
 * @property mixed title
 * @property mixed message
 * @property mixed email
 * @property mixed name
 */
class StoreRequest extends Request
{
    public function authorize(): bool
    {
        return true;
    }
    public function rules(): array
    {
        return [
            'title'=>'required|string',
            'message'=>'required',
            'attachment'=>'sometimes|mimes:jpeg,jpg,png'
        ];
    }
    public function run(Request $request)
    {
        $Ticket =new  Ticket();

            $Ticket->setName($request->name);
            $Ticket->setEmail($request->email);
            $Ticket->setMobile($request->mobile);
            $Ticket->setTitle($request->title);
            $Ticket->setMessage($request->message);
            $Ticket->save();
            return redirect()->back();
    }
}
