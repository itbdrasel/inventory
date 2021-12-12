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
                            $input_name = 'warehouse_id';
                        @endphp
                        <label class="col-sm-3 col-form-label" for="{{$input_name}}">{{ucfirst(str_replace(['_id', '_'],[' ',''],$input_name))}}<code>*</code></label>
                        <div class="col-sm-4">
                        <select name="{{$input_name}}" id="{{$input_name}}" class="form-control select2 select2-hidden-accessible @error($input_name) is-invalid @enderror " style="width: 100%;" data-select2-id="1" tabindex="-1" aria-hidden="true">
                            <option value="">Select Category</option>
                            @if(!empty($warehouses))
                                @foreach($warehouses as $warehouse)
                                    <option value="{{ $warehouse->id }}" {{ (getValue($input_name, $objData) == $warehouse->id) ? 'selected': '' }}>{{ $warehouse->name }}</option>
                                @endforeach
                            @endif
                        </select>
                        </div>
                        @php
                            $input_name = 'title';
                        @endphp
                        <label class="col-sm-2 col-form-label" for="{{$input_name}}">{{ucfirst(str_replace('_',' ',$input_name))}} </label>
                        <div class="col-sm-3">
                            <input name="{{$input_name}}" id="{{$input_name}}" type="text" class="form-control @error($input_name) is-invalid @enderror "value="{{ getValue($input_name, $objData) }}">
                            <span id="{{$input_name}}-error" class="error invalid-feedback">{{$errors->first($input_name)}}</span>
                        </div>
                    </div>
                    <style>
                        table td, table th {
                            vertical-align: middle !important;
                        }
                    </style>
                    <table class="table table-bordered">
                        <thead>
                            <tr>
                                <th>Product Name</th>
                                <th>Category</th>
                                <th class="text-center">Code</th>
                                <th class="text-center" width="30%">Qty</th>
                            </tr>
                        </thead>
                        <tbody>
                        @if (!empty($products))
                            @foreach($products as $product)
                            <tr>
                                <td>{{$product->product_name}}</td>
                                <td>{{$product->category->name}}</td>
                                <td class="text-center">{{$product->product_code}}</td>
                                <td>
                                    <input type="text" class="form-control onlyNumber" value="" name="qty[{{$product->id}}]">
                                </td>
                            </tr>
                            @endforeach
                        @endif
                        </tbody>
                    </table>










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

