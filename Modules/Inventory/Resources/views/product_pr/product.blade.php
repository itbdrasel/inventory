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
            <form method="post" action="{{url($bUrl.'/product/store')}}" enctype="multipart/form-data">
                @csrf
                <input type="hidden" value="{{getValue('id', $objData)}}" name="id">
            <div class="card-body" id="">
                <div class="col-md-10">
                    <div class="form-group row">
                        @php
                            $input_name = 'warehouse_id';
                        @endphp
                        <input type="hidden" name="warehouse_id" value="{{$objData->warehouse_id}}">
                        <label class="col-sm-2 col-form-label">{{ucfirst(str_replace(['_id', '_'],[' ',''],$input_name))}}</label>
                        <div class="col-sm-10">
                            <p>: {{$objData->warehouse->name}}</p>
                        </div>
                        @php
                            $input_name = 'title';
                            $order_status = [1=>'Request',2=>'Received',3=>'Cancel'];
                        @endphp
                        <label class="col-sm-2 col-form-label">{{ucfirst(str_replace('_',' ',$input_name))}} </label>
                        <div class="col-sm-10">
                            <p>: {{$objData->$input_name}}</p>
                        </div>
                        <label class="col-sm-2 col-form-label">Order Status </label>
                        <div class="col-sm-4">
                            <select name="order_status" class="form-control  @error('order_status') is-invalid @enderror ">
                                @foreach($order_status as $key=>$value)
                                <option value="{{ $key }}" {{ ($key == $objData->pr_status) ? 'selected': '' }}>{{$value}}</option>
                                @endforeach
                            </select>
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
                                <th class="text-center"  width="20%">Qty</th>
                                <th class="text-center" width="25%">Status</th>
                            </tr>
                        </thead>
                        <tbody>
                        @if (!empty($objData->prProducts))
                            @foreach($objData->prProducts as $product)
                            <tr>
                                <td>{{$product->product->product_name}}</td>
                                <td>{{$product->product->category->name}}</td>
                                <td class="text-center">{{$product->product->product_code}}</td>
                                <td class="text-center">
                                    <input type="text" class="form-control onlyNumber" value="{{$product->qty}}" name="qty[{{$product->id}}]">
                                    <input type="hidden" class="onlyNumber" value="{{$product->qty}}" name="qty_hidden[{{$product->id}}]">
                                    <input type="hidden" class="onlyNumber" value="{{$product->pr_status}}" name="status[{{$product->id}}]">
                                    <input type="hidden" class="onlyNumber" value="{{$product->product_id}}" name="product_id[{{$product->id}}]">
                                </td>
                                <td class="text-center">
                                    <select name="product_status[{{$product->id}}]" class="form-control  @error($input_name) is-invalid @enderror ">
                                        @foreach($order_status as $key=>$value)
                                            <option value="{{ $key }}" {{ ($key == $product->pr_status) ? 'selected': '' }}>{{$value}}</option>
                                        @endforeach
                                    </select>
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
                <div class="offset-md-2">
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

