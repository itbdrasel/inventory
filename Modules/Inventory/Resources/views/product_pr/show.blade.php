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

            <div class="card-body" id="">
                <div class="col-md-10">
                    <div class="form-group row">
                        @php
                            $input_name = 'warehouse_id';
                        @endphp
                        <label class="col-sm-2 col-form-label">{{ucfirst(str_replace(['_id', '_'],[' ',''],$input_name))}}</label>
                        <div class="col-sm-10">
                            <p>: {{$objData->warehouse->name}}</p>
                        </div>
                        @php
                            $input_name = 'title';
                            $order_status ='Request';
                            if ($objData->pr_status == 2){
                                $order_status ='Received';
                            }
                        @endphp
                        <label class="col-sm-2 col-form-label">{{ucfirst(str_replace('_',' ',$input_name))}} </label>
                        <div class="col-sm-10">
                            <p>: {{$objData->$input_name}}</p>
                        </div>
                        <label class="col-sm-2 col-form-label">Order Status </label>
                        <div class="col-sm-10">
                            <p>: {{$order_status}}</p>
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
                                <th class="text-center">Qty</th>
                                <th class="text-center">Status</th>
                            </tr>
                        </thead>
                        <tbody>
                        @if (!empty($objData->prProducts))
                            @foreach($objData->prProducts as $product)
                                @php
                                $status = 'Request';
                                if ($product->pr_status == 2){
                                    $status = 'Received';
                                }
                                @endphp
                            <tr>
                                <td>{{$product->product->product_name}}</td>
                                <td>{{$product->product->category->name}}</td>
                                <td class="text-center">{{$product->product->product_code}}</td>
                                <td class="text-center">{{$product->qty}}</td>
                                <td class="text-center">{{$status}}</td>
                            </tr>
                            @endforeach
                        @endif
                        </tbody>
                    </table>
                </div>
            </div>
            <!-- /.card-body -->
            <div class="card-footer">
                {{ $title }}
            </div>

            <!-- /.card-footer-->
        </div>
        <!-- /.card -->
    </section>
    <!-- /.content -->

@endsection

