<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\ChildrenInfo;
use App\Models\ChildrenGuardianInfo;
use App\Models\Country;
use App\Models\State;
use App\Models\City;
use Image;
use Illuminate\Support\Carbon;



class ChildrenController extends Controller
{
    /**view add new children form */

    public function showNewChildrenForm()
    {
        $allCountry = Country::all();

        return view('child.add_children',compact('allCountry'));
    }

    public function addChildrenInfo(Request $request)
    {
        // return $request->relation;

        $this->validate($request,
            [
                'name'=>'required',

                'dob'=>'required',

                'address'=>'required',

                'city_id'=>'required',

                'state_id'=>'required',

                'country_id'=>'required',

                'person_name'=>'required',
              
                'contact_no' => 'required',

                'relation'=>'required',

                'zipcode'=>'required',                

                'photo' => ['required',

                'image',
                'mimes:jpg,png,jpeg','dimensions:min_width=100,min_height=100,max_width=100,max_height=100','max:100000'
                ],
               
            ]

          

        );

     

        $allGurdianData = [];
      

        $newChildrenInfo = new ChildrenInfo;

        $image=$request->file('photo');
        $name_generate='children-cover-photo'.hexdec(uniqid()).'.'.$image->getClientOriginalExtension();
        Image::make($image)->resize(100,100)->save('frontend/cdn/children_photo/'.$name_generate);
        $last_img='frontend/cdn/children_photo/'.$name_generate;

        $newChildrenInfo->name=$request->name;
        $newChildrenInfo->dob=$request->dob;
        $newChildrenInfo->city=$request->city_id;
        $newChildrenInfo->state=$request->state_id;
        $newChildrenInfo->country=$request->country_id;
        $newChildrenInfo->class=$request->class;
        $newChildrenInfo->address=$request->address;
        $newChildrenInfo->zipcode=$request->zipcode;

        $newChildrenInfo->photo=$last_img;
        $result= $newChildrenInfo->save();
        $children_id = $newChildrenInfo->id;

        

        $countryName = Country::where('id',$request->country_id)->get();
        $stateName = State::where('id',$request->state_id)->get();
        $cityName = City::where('id',$request->city_id)->get();

            $guardianInfo = new ChildrenGuardianInfo;
            $guardianInfo->person_name=json_encode($request->person_name);
            $guardianInfo->relation=json_encode($request->relation);
            $guardianInfo->contact_no=json_encode($request->contact_no);
            $guardianInfo->children_id=$children_id;
            $guardianInfo->save();
            $lastId[]= $guardianInfo->id;    

      
        

        if ($result) {

            return redirect()->route('showNewChildrenForm')->withSuccess([

                'Information added successfully',

               'Name-'. $newChildrenInfo->name,
                
               'Date of birth-'. $newChildrenInfo->dob,

               'Class-'. $newChildrenInfo->class,

               'Country-' .$countryName[0]->country_name,

                'State-'.$stateName[0]->state_name,

                'City-'.$cityName[0]->city_name,

                'Address-'.$newChildrenInfo->address,

                'Zipcode-'.$newChildrenInfo->zipcode,



            ]);

            // return back()->withInput()->with('success','Information added'.' '.$newChildrenInfo->name.$newChildrenInfo->dob.$newChildrenInfo->class.$newChildrenInfo->address.$newChildrenInfo->zipcode);
        }


    }

    public function fetchState(Request $request)
    {
        $data['states'] = State::where("country_id", $request->country_id)
                                ->get(["state_name", "id"]);
  
        return response()->json($data);
    }
    /**
     * Write code on Method
     *
     * @return response()
     */
    public function fetchCity(Request $request)
    {
        $data['cities'] = City::where("state_id", $request->state_id)
                                    ->get(["city_name", "id"]);
                                      
        return response()->json($data);
    }
}
