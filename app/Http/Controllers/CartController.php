<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Session;

class CartController extends Controller
{
    public function index()
    {
        $cart = Session::get('cart', []);
        $total = collect($cart)->sum(function ($item) {
            return $item['price'] * $item['qty'];
        });

        return view('cart', compact('cart', 'total'));
    }

    public function add(Request $request)
    {
        $data = $request->validate([
            'country' => 'required|string',
            'company_id' => 'required|integer',
            'report_id' => 'required|integer',
            'report_name' => 'required|string',
            'price' => 'required|numeric',
            'qty' => 'sometimes|integer|min:1'
        ]);

        $qty = $data['qty'] ?? 1;

        $cart = Session::get('cart', []);

        // Unique key to allow mixed countries; keep company+report+country composite
        $key = "{$data['country']}:{$data['company_id']}:{$data['report_id']}";

        if (isset($cart[$key])) {
            $cart[$key]['qty'] += $qty;
        } else {
            $cart[$key] = [
                'country' => $data['country'],
                'company_id' => $data['company_id'],
                'report_id' => $data['report_id'],
                'report_name' => $data['report_name'],
                'price' => (float)$data['price'],
                'qty' => $qty
            ];
        }

        Session::put('cart', $cart);

        return back()->with('success', 'Added to cart');
    }

    public function remove(Request $request)
    {
        $key = $request->input('key');
        $cart = Session::get('cart', []);
        if (isset($cart[$key])) {
            unset($cart[$key]);
            Session::put('cart', $cart);
        }
        return back();
    }
}
