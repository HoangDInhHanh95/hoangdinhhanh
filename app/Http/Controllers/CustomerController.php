<?php

namespace App\Http\Controllers;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Session;
use Illuminate\Support\Facades\Redirect;
use Illuminate\Http\Request;
use App\Models\insert_email;

class CustomerController extends Controller
{
    public function insert_email_customer(Request $request)
    {    
        $request->validate([
            'email_name' => 'required|unique:tbl_get_email|max:255',
        ]);

        $data = $request->all();
        $get_email = new insert_email();
        $get_email->email_name = $data['email_name'];
        $get_email->save();
        return redirect()->back();
    }

    public function list_emailcustomer()
    {
        $show_email = array();
        $show_email['email_customer'] = insert_email::orderBy('id','DESC')->paginate(12);
        return view('admincp.emailcustomer.emailcustomer',$show_email);
    }

    public function delete_email($id)
    {
        insert_email::where('id',$id)->delete();
        return redirect()->back()->with('status','Bạn đã  xóa thành công');
    }
}
