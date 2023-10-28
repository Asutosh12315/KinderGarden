
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>

<x-app-layout>
    <x-slot name="header">
        <h2 class="font-semibold text-xl text-gray-800 leading-tight">
        {{ __('Children Info') }}
        </h2>
       
    </x-slot>

    <div class="py-12">

    @if ($errors->any())
    <div class="alert alert-danger">
        <ul>
            @foreach ($errors->all() as $error)
                <li>{{ $error }}</li>
            @endforeach
        </ul>
    </div>
    @else
        @if (session()->has('success'))
        <div class="alert alert-success">
            @if(is_array(session('success')))
                <ul>
                    @foreach (session('success') as $message)
                        <li>{{ $message }}</li>
                    @endforeach
                </ul>
            @else
                {{ session('success') }}
            @endif
        </div>
        @endif
    @endif 
            </div>                 
        <div class="max-w-7xl mx-auto sm:px-6 lg:px-8">
            <div class="bg-white overflow-hidden shadow-xl sm:rounded-lg">
            <form class="m-3 pt-3" method="POST" action="{{route('addChildrenInfo')}}" enctype='multipart/form-data'>
                @csrf 
                
                <div class="container">
                    <div class="row">
                        <div class="col-sm-6">
                                <div class="mb-3">
                                    <label for="childrenName" class="form-label">Children name</label>
                                    <input type="text" class="form-control @error('name')
                                is-invalid
                            @enderror" name="name" id="childrenName">
                                    <div class="text-danger">@error('name'){{$message}}@enderror</div>
                                </div>  
                        </div>
                        <div class="col-sm-6">
                                <div class="mb-3">
                                    <label for="dob" class="form-label">Date of birth</label>
                                    <input type="date" name="dob" class="form-control @error('dob')
                                is-invalid
                            @enderror" name="dob" id="dob">
                                    <div class="text-danger">@error('dob'){{$message}}@enderror</div>
                                </div>  
                        </div>
                   
                       
                    </div>
                    <div class="row">
                       
                        <div class="col-sm">
                                <div class="mb-3">
                                    <label for="address" class="form-label">Address</label>
                                    <textarea name="address" class="form-control @error('address')
                                is-invalid
                            @enderror" id="address" cols="30" rows="5"></textarea>
                                   
                                    <div class="text-danger">@error('address'){{$message}}@enderror</div>
                                </div>  
                        </div>
                       
                    </div>
                    <div class="row">
                        <div class="col-sm-6">
                                <div class="mb-3">
                                <select class="form-select @error('class')
                                is-invalid
                            @enderror" name="class" aria-label="Default select example">
                                    <option selected> Select Class</option>
                                    <option value="I">I</option>
                                    <option value="II">II</option>
                                    <option value="III">III</option>
                                    <option value="IV">IV</option>
                                    <option value="V">V</option>
                                    <option value="VI">VI</option>
                                    <option value="VII">VII</option>
                                    <option value="VIII">VIII</option>
                                    <option value="IX">IX</option>
                                    <option value="X">X</option>
                                    <option value="XI">XI</option>
                                    <option value="XII">XII</option>
                                    


                                </select>
                                </div>  
                                <div class="text-danger">@error('class'){{$message}}@enderror</div>
                        </div>   
                        <div class="col-sm-6">
                                <div class="mb-3">
                                    <div class="mb-3">
                                        <label for="formFile" class="form-label"></label>
                                        <input class="form-control @error('photo')
                            @enderror" name="photo" type="file" id="formFile" accept="image/png, image/jpg, image/jpeg">
                                    </div>
                                    <div class="text-danger">@error('photo'){{$message}}@enderror</div>
                                </div>  
                        </div>          
                                                       
                        
                    </div>
                    <div class="row">
                        <div class="col-sm-4">
                                <div class="mb-3">
                                <select class="form-select" name="country_id" id="country-dropdown" aria-label="Default select example">
                                    <option selected> Select Country</option>
                                    @foreach($allCountry as $c)
                                        <option value="{{$c->id}}">{{$c->country_name}}</option>
                                    @endforeach
                                
                                </select>
                                </div>  
                        </div>    
                        <div class="col-sm-4">
                                <div class="mb-3">
                                    <select class="form-select"  name="state_id" id="state-dropdown"  aria-label="Default select example">
                                       
                          
                                    </select>
                                </div>  
                        </div>      
                        <div class="col-sm-4">
                                <div class="mb-3">
                                    <select class="form-select" id="city-dropdown"  name="city_id" aria-label="Default select example">
                                       
                             
                                    </select>
                                </div>  
                        </div>                    
                       
                    </div>
                    <div class="row">
                        <div class="col-sm-12">
                                <div class="mb-3">
                                    <label for="zipcode" class="form-label">Zip Code</label>
                                    <input type="text"" class="form-control @error('zipcode')
                                is-invalid
                            @enderror" name="zipcode" id="zipcode">
                                    <div class="text-danger">@error('zipcode'){{$message}}@enderror</div>
                                </div> 
                        </div>  
                                         
                       
                    </div>
                    <div class="row">
                    <div class="col-md-1"></div>
                    <div class="col-md-12">
                        <div class="form-group">
                        <!-- <form name="add_name" id="add_name"> -->
                            <table class="table table-bordered table-hover" id="dynamic_field">
                            <tr>
                                <td><input type="text" name="person_name[]" placeholder="Person name" class="form-control name_list" /></td>
                                <td><input type="text" name="contact_no[]" placeholder="Person contact number" class="form-control name_email"/></td>

                                <td>
                                    <select class="form-select" id="relation"  name="relation[]" aria-label="Default select example">
                                        
                                    <option selected>Select Relation</option>
                                    <option value="father">Father</option>
                                    <option value="mother">Mother</option>
                                    <option value="brother">Brother</option>
                                    <option value="sister">Sister</option>
                                    <option value="Grand father">Grandfather</option>
                                    <option value="Grand mother">Grandmother</option>



                                    </select>
                                </td>
                                <td><button type="button" name="add" id="add" class="btn btn-primary">Add More</button></td>  
                            </tr>
                            </table>
                            <!-- <input type="submit" class="btn btn-success" name="submit" id="submit" value="Submit"> -->
                        <!-- </form> -->
                        </div>
                    </div>
                    <div class="col-md-1"></div>
                </div>
                 <div class="row">
                    <div class="col-sm-12">
                        <div class="mb-3">
                                <input type="submit" class="btn btn-primary text-dark" value="Add Info">
                        </div>  
                    </div>   
                 </div>
                            
                </div>
               
               
            </form>
            
                
            </div>
        </div>
    </div>
  
 

</x-app-layout>


<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
    <script>
        $(document).ready(function () {
  
            /*------------------------------------------
            --------------------------------------------
            Country Dropdown Change Event
            --------------------------------------------
            --------------------------------------------*/
            $('#country-dropdown').on('change', function () {
                var idCountry = this.value;
                $("#state-dropdown").html('');
                $.ajax({
                    url: "{{url('fetch-states')}}",
                    type: "POST",
                    data: {
                        country_id: idCountry,
                        _token: '{{csrf_token()}}'
                    },
                    dataType: 'json',
                    success: function (result) {
                        $('#state-dropdown').html('<option value="">-- Select State --</option>');
                        $.each(result.states, function (key, value) {
                            $("#state-dropdown").append('<option value="' + value
                                .id + '">' + value.state_name + '</option>');
                        });
                        $('#city-dropdown').html('<option value="">-- Select City --</option>');
                    }
                });
            });
  
            /*------------------------------------------
            --------------------------------------------
            State Dropdown Change Event
            --------------------------------------------
            --------------------------------------------*/
            $('#state-dropdown').on('change', function () {
                var idState = this.value;
                $("#city-dropdown").html('');
                $.ajax({
                    url: "{{url('fetch-cities')}}",
                    type: "POST",
                    data: {
                        state_id: idState,
                        _token: '{{csrf_token()}}'
                    },
                    dataType: 'json',
                    success: function (res) {
                        $('#city-dropdown').html('<option value="">-- Select City --</option>');
                        $.each(res.cities, function (key, value) {
                            $("#city-dropdown").append('<option value="' + value
                                .id + '">' + value.city_name + '</option>');
                        });
                    }
                });
            });
  
        });
    </script>
 <script>
    $(document).ready(function(){
   
   var i = 1;
     var length;
     //var addamount = 0;
    var addamount = 700;
 
   $("#add").click(function(){
     
      <!-- var rowIndex = $('#dynamic_field').find('tr').length;	 -->
      <!-- console.log('rowIndex: ' + rowIndex); -->
      <!-- console.log('amount: ' + addamount); -->
      <!-- var currentAmont = rowIndex * 700; -->
      <!-- console.log('current amount: ' + currentAmont); -->
      <!-- addamount += currentAmont; -->
      
      addamount += 700;
      console.log('amount: ' + addamount);
      for (i = i; i <=5; i++) {
       
        $('#dynamic_field').append('<tr id="row'+i+'"><td><input type="text" name="person_name[]" placeholder="Person Name" class="form-control name_list"/></td><td><input type="text" name="contact_no[]" placeholder="Person contact number" class="form-control name_email"/></td><td><select class="form-select" id="relation"  name="relation[]" aria-label="Default select example"><option selected>Select Relation</option><option value="father">Father</option><option value="mother">Mother</option><option value="brother">Brother</option><option value="sister">Sister</option><option value="garndfather">Garndfather</option><option value="garndmother">Garndmother</option><td><button type="button" name="remove" id="'+i+'" class="btn btn-danger btn_remove">X</button></td></tr>');  
        
      }    
      
        
       
     });
 
 $(document).on('click', '.btn_remove', function(){  
     addamount -= 700;
     console.log('amount: ' + addamount);
     
     <!-- var rowIndex = $('#dynamic_field').find('tr').length;	 -->
      <!-- addamount -= (700 * rowIndex); -->
      <!-- console.log(addamount); -->
      
       var button_id = $(this).attr("id");     
       $('#row'+button_id+'').remove();  
     });
     
 
 
     $("#submit").on('click',function(event){
     var formdata = $("#add_name").serialize();
       console.log(formdata);
       
       event.preventDefault()
       
       $.ajax({
         url   :"action.php",
         type  :"POST",
         data  :formdata,
         cache :false,
         success:function(result){
           alert(result);
           $("#add_name")[0].reset();
         }
       });
       
     });
   });
 </script>