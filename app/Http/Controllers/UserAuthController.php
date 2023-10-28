<?php

namespace App\Http\Controllers;
use App\Models\User;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Validator;
use Laravel\Sanctum\PersonalAccessToken;
use Illuminate\Support\Facades\Mail;
use App\Mail\OtpVerification;
use Illuminate\Http\Request;

class UserAuthController extends Controller
{
     //Register api

     public function register(Request $request)
     {
         $validator = Validator::make($request->all(), [
 
             'name'     => ['required', 'string', 'max:255'],
             'email'     => ['required', 'string'],
             'password' => ['required', 'string', 'min:8'],
            
 
 
         ]);       
         
         
 
         if ($validator->fails()) {
             
             $response=[
 
                 'success'=>false,
                 'message'=>$validator->errors()->first(),
             ];
 
             return response()->json($response);
         } 
         
         $user = new User;
         $user->name=$request->name;
         $user->email=$request->email;    
         $user->password=Hash::make($request->password);                
         $result = $user->save();
         $userId = $user->id;
         
 
         if($result)          
         {
            
             return response()->json([
 
                 'success'=> true,                
                 'message'=>'Great!,You are now registered',
             ]);
         }
 
     }

    // Login api

    public function login(Request $request)
    {
        $validator = Validator::make($request->all(), [

           
            'email'     => ['required', 'string'],
            'password' => ['required', 'string'],


        ]);  

        $User = User::where('email',$request->email)->first();

        // return $User;

        if ($validator->fails()) {
            
            $response=[

                'success'=>false,
                'message'=>$validator->errors()->first(),
                
            ];

            return response()->json($response);
        } 


        if ($User && Hash::check($request->password,$User->password)) {
            
            $userId = $User->id;

            
            /** generating token */
            $success['token']=$User->createToken($User->name)->plainTextToken;            
            $success['token_type']='Bearer';
            $success['name']=$User->name;
            $success['email']=$User->email;
      
            $response=[

                'success'=>true,
                'status'=>$success,
                'message'=>'Great,you are now logged in',
            ];

            return response()->json($response);

        }else {
            
            $response=[

                'success'=>false,
                'message'=>'Sry the credentails do not match with our records',
            ];


            return response()->json($response);
        }

        
    }

    //logout api

    public function logout(Request $request)
    {
        // Getting user by token
        $User = auth('sanctum')->user();         

       
        if($User) {           

        // Revoking  this user with token 
        $status = auth('sanctum')->user()->currentAccessToken()->delete();       
        
       

            $response=[

                'success'=>true,
                'message'=>'You are now logged out',
            ];


            return response()->json($response);
            
        }else {

            $response=[

                'success'=>true,
                'message'=>'failed, unauthorized',
            ];


            return response()->json($response);
        }
    }

    
}
