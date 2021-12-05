@extends("inventory::master")
@section("content")
    <!-- Main content -->
    <section class="content data-body frontoffice-body">
        <!-- Default box -->
        <div class="card">
            <div class="card-header">
                <h2 class="card-title"> {!! $page_icon !!} &nbsp; {{ $title }} </h2>
                <div class="card-tools">
                    <button type="button" class="btn btn-tool" data-card-widget="collapse" title="Collapse">
                        <i class="fas fa-minus"></i>
                    </button>

                    <button type="button" class="btn btn-tool" >
                        <a href="{{url($bUrl)}}" class="btn btn-info btn-sm"><i class="mdi mdi-plus"></i> <i class="fa fa-arrow-left"></i> Back</a>
                    </button>
                </div>
            </div>
            <form method="post" action="{{url($bUrl.'/store')}}" enctype="multipart/form-data">
                @csrf
                <input type="hidden" value="{{getValue('id', $objData)}}" name="id">
            <div class="card-body" id="">
                <div class="col-md-10">
                    <div class="form-group row">
                        @php
                            $input_name = 'product_name';
                        @endphp
                        <label class="col-sm-3 col-form-label" for="{{$input_name}}">{{ucfirst(str_replace('_',' ',$input_name))}}<code>*</code></label>
                        <div class="col-sm-4">
                            <input name="{{$input_name}}" id="{{$input_name}}" type="text" class="form-control @error($input_name) is-invalid @enderror "value="{{ getValue($input_name, $objData) }}">
                            <span id="{{$input_name}}-error" class="error invalid-feedback">{{$errors->first($input_name)}}</span>
                        </div>
                        @php
                            $input_name = 'category_id';
                        @endphp
                        <label class="col-sm-2 col-form-label" for="{{$input_name}}">Category <code>*</code></label>
                        <div class="col-sm-3">
                            <select name="{{$input_name}}" id="{{$input_name}}" class="form-control select2 select2-hidden-accessible @error($input_name) is-invalid @enderror " style="width: 100%;" data-select2-id="1" tabindex="-1" aria-hidden="true">
                                <option value="">Select Category</option>
                            @if(!empty($categories))
                                @foreach($categories as $category)
                                <option value="{{ $category->id }}" {{ (getValue($input_name, $objData) == $category->id) ? 'selected': '' }}>{{ $category->name }}</option>
                                @endforeach
                            @endif
                            </select>
                            <span id="{{$input_name}}-error" class="error invalid-feedback">{{$errors->first($input_name)}}</span>
                        </div>
                    </div>

                    <div class="form-group row">
                        @php
                            $input_name = 'product_code';
                        @endphp
                        <label class="col-sm-3 col-form-label" for="{{$input_name}}">{{ucfirst(str_replace('_',' ',$input_name))}}<code>*</code></label>
                        <div class="col-sm-4">
                            <input name="{{$input_name}}" id="{{$input_name}}" type="text" class="form-control @error($input_name) is-invalid @enderror "value="{{ getValue($input_name, $objData) }}">
                            <span id="{{$input_name}}-error" class="error invalid-feedback">{{$errors->first($input_name)}}</span>
                        </div>
                        @php
                            $input_name = 'product_sku';
                        @endphp
                        <label class="col-sm-2 col-form-label" for="{{$input_name}}">{{ucfirst(str_replace('_',' ',$input_name))}} </label>
                        <div class="col-sm-3">
                            <input name="{{$input_name}}" id="{{$input_name}}" type="text" class="form-control @error($input_name) is-invalid @enderror "value="{{ getValue($input_name, $objData) }}">
                            <span id="{{$input_name}}-error" class="error invalid-feedback">{{$errors->first($input_name)}}</span>
                        </div>
                    </div>
                    <div class="form-group row">
                        @php
                            $input_name = 'product_unit';
                        @endphp
                        <label class="col-sm-3 col-form-label" for="{{$input_name}}">{{ucfirst(str_replace('_',' ',$input_name))}}</label>
                        <div class="col-sm-4">
                            <input name="{{$input_name}}" id="{{$input_name}}" type="text" class="form-control @error($input_name) is-invalid @enderror "value="{{ getValue($input_name, $objData) }}">
                            <span id="{{$input_name}}-error" class="error invalid-feedback">{{$errors->first($input_name)}}</span>
                        </div>
                        @php
                            $input_name = 'sell_unit';
                        @endphp
                        <label class="col-sm-2 col-form-label" for="{{$input_name}}">{{ucfirst(str_replace('_',' ',$input_name))}}<code>*</code></label>
                        <div class="col-sm-3">
                            <input name="{{$input_name}}" id="{{$input_name}}" type="text" class="form-control @error($input_name) is-invalid @enderror "value="{{ getValue($input_name, $objData) }}">
                            <span id="{{$input_name}}-error" class="error invalid-feedback">{{$errors->first($input_name)}}</span>
                        </div>
                    </div>
                    <div class="form-group row">
                        @php
                            $input_name = 'product_type';
                        @endphp
                        <label class="col-sm-3 col-form-label" for="{{$input_name}}">{{ucfirst(str_replace('_',' ',$input_name))}}</label>
                        <div class="col-sm-4">
                            <input name="{{$input_name}}" id="{{$input_name}}" type="text" class="form-control @error($input_name) is-invalid @enderror "value="{{ getValue($input_name, $objData) }}">
                            <span id="{{$input_name}}-error" class="error invalid-feedback">{{$errors->first($input_name)}}</span>
                        </div>
                        @php
                            $input_name = 'brand_id';
                        @endphp
                        <label class="col-sm-2 col-form-label" for="{{$input_name}}">{{ucfirst('brand')}}</label>
                        <div class="col-sm-3">
                            <input name="{{$input_name}}" id="{{$input_name}}" type="text" class="form-control @error($input_name) is-invalid @enderror "value="{{ getValue($input_name, $objData) }}">
                            <span id="{{$input_name}}-error" class="error invalid-feedback">{{$errors->first($input_name)}}</span>
                        </div>
                    </div>
                    <div class="form-group row">
                        @php
                            $input_name = 'pack_id';
                        @endphp
                        <label class="col-sm-3 col-form-label" for="{{$input_name}}">{{ucfirst('pack')}}</label>
                        <div class="col-sm-4">
                            <input name="{{$input_name}}" id="{{$input_name}}" type="text" class="form-control @error($input_name) is-invalid @enderror "value="{{ getValue($input_name, $objData) }}">
                            <span id="{{$input_name}}-error" class="error invalid-feedback">{{$errors->first($input_name)}}</span>
                        </div>
                        @php
                            $input_name = 'origin_id';
                        @endphp
                        <label class="col-sm-2 col-form-label" for="{{$input_name}}">{{ucfirst('origin')}}</label>
                        <div class="col-sm-3">
                            <input name="{{$input_name}}" id="{{$input_name}}" type="text" class="form-control @error($input_name) is-invalid @enderror " value="{{ getValue($input_name, $objData) }}">
                            <span id="{{$input_name}}-error" class="error invalid-feedback">{{$errors->first($input_name)}}</span>
                        </div>
                    </div>
                    <div class="form-group row">
                        @php
                            $input_name = 'expiry_date';
                            $date_format = str_replace(["Y",'d','m'],["YY",'DD','MM'],config('settings')['date_format']);
                            $date_format_inp = config('settings')['date_format'];
                           $expiry_date= getValue($input_name, $objData);
                           if (!empty($expiry_date)){
                               $expiry_date = userDateFormat($expiry_date);
                           }
                        @endphp
                        <label class="col-sm-3 col-form-label" for="{{$input_name}}">{{ucfirst(str_replace('_',' ',$input_name))}}</label>
                        <div class="col-sm-4">
                            <input name="{{$input_name}}" readonly autocomplete="off" placeholder="{{$date_format}}" id="{{$input_name}}" type="text" class="form-control @error($input_name) is-invalid @enderror  datepicker" value="{{ $expiry_date }}">
                            <span id="{{$input_name}}-error" class="error invalid-feedback">{{$errors->first($input_name)}}</span>
                        </div>
                        @php
                            $input_name = 'unit_price';
                        @endphp
                        <label class="col-sm-2 col-form-label" for="{{$input_name}}">{{ucfirst(str_replace('_',' ',$input_name))}}</label>
                        <div class="col-sm-3">
                            <input name="{{$input_name}}" id="{{$input_name}}" type="text" class="form-control @error($input_name) is-invalid @enderror " value="{{ getValue($input_name, $objData) }}">
                            <span id="{{$input_name}}-error" class="error invalid-feedback">{{$errors->first($input_name)}}</span>
                        </div>
                    </div>
                    <div class="form-group row">
                        @php
                            $input_name = 'discount_status';
                        @endphp
                        <label class="col-sm-3 col-form-label" for="{{$input_name}}">{{ucfirst(str_replace('_',' ',$input_name))}}<code>*</code></label>
                        <div class="col-sm-4">
                            <select name="{{$input_name}}" id="{{$input_name}}" class="form-control @error($input_name) is-invalid @enderror">
                                <option {{ (getValue($input_name, $objData) == 1) ? 'selected': '' }} value="1">Active</option>
                                <option {{ (getValue($input_name, $objData) === '0') ? 'selected': '' }} value="0">Inactive</option>
                            </select>
                        </div>
                        @php
                            $input_name = 'vat_status';
                        @endphp
                        <label class="col-sm-2 col-form-label" for="{{$input_name}}">{{ucfirst(str_replace('_',' ',$input_name))}}<code>*</code></label>
                        <div class="col-sm-3">
                            <select name="{{$input_name}}" id="{{$input_name}}" class="form-control @error($input_name) is-invalid @enderror">
                                <option {{ (getValue($input_name, $objData) == 1) ? 'selected': '' }} value="1">Active</option>
                                <option {{ (getValue($input_name, $objData) === '0') ? 'selected': '' }} value="0">Inactive</option>
                            </select>
                            <span id="{{$input_name}}-error" class="error invalid-feedback">{{$errors->first($input_name)}}</span>
                        </div>
                    </div>


                    <div class="form-group row">
                        @php
                            $input_name = 'status';
                        @endphp
                        <label class="col-sm-3 col-form-label" for="{{$input_name}}">Status <code>*</code></label>
                        <div class="col-sm-4">
                            <select name="{{$input_name}}" id="{{$input_name}}" class="form-control @error($input_name) is-invalid @enderror">
                                <option {{ (getValue($input_name, $objData) == 1) ? 'selected': '' }} value="1">Active</option>
                                <option {{ (getValue($input_name, $objData) === '0') ? 'selected': '' }} value="0">Inactive</option>
                            </select>
                            <span id="{{$input_name}}-error" class="error invalid-feedback">{{$errors->first($input_name)}}</span>
                        </div>

                    </div>
                </div>
            </div>
            <!-- /.card-body -->
            <div class="card-footer">
                <div class="offset-md-3">
                    @php
                        $spinner=  '<i class="fas fa-spinner fa-pulse"></i> Save';
                    @endphp
                    <button type="submit" onclick="this.disabled=true;this. innerHTML='{{$spinner}}';this.form.submit();" class="btn btn-primary">Save</button>&nbsp;&nbsp;
                    <a href="{{url($bUrl)}}"  class="btn btn-warning">Cancel</a>
                </div>
            </div>
            </form>
            <!-- /.card-footer-->
        </div>
        <!-- /.card -->
    </section>
    <!-- /.content -->

@endsection

