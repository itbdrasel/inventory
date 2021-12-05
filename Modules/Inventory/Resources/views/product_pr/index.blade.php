@push('css')
    <style>
        input.form-control.float-left.search_input{
            width: 250px;
        }
        ul.pagination{
            float: right;
        }
    </style>
@endpush
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
                        <a href="{{url($bUrl.'/create')}}" class="btn bg-gradient-info btn-sm custom_btn"><i class="mdi mdi-plus"></i> <i class="fa fa-plus-circle"></i> Add New </a>
                    </button>
                </div>
            </div>

            <div class="card-body" id="">
                <div class="col-md-10">
                    <form action="{{url($bUrl)}}" method="get"  class="form-inline">
                        <div class="form-row">
                            <div class="col">
                                <input type="text" name="filter" value="{{ $filter ?? '' }}" placeholder="Filter by name..." class="form-control float-left search_input"/>
                            </div>
                            <div class="col">
                                <input  type="submit" class="btn btn-primary" value="Filter"/>
                                &nbsp;<a class="btn btn-default" href="{{ url($bUrl) }}"> Reset </a>
                            </div>
                        </div>
                    </form>

                    <div class="col">

                        @if( !empty( Request::query() ) )

                            @if( array_key_exists( 'filter', Request::query() ) || array_key_exists( 'location', Request::query() ) )

                                Showing results for

                                @if(!empty($filter) )
                                    '{{ $filter }}'
                                @endif
                            @endif

                        @endif

                    </div>


                </div>


                <div class="col-12">

                <div class="col-md-12 mt-4">

                    <div class="row">
                        <div class="col-md-12">

                            <table class="table table-bordered">
                                <thead>
                                @php
                                    $total_row=8;
                                @endphp
                                <tr>
                                    <th class="text-center">SL</th>
                                    <th class="sort text-left" data-row="name" id="name" >Name</th>
                                    <th class="text-center">Code</th>
                                    <th class="text-center">Category</th>
                                    <th class="text-center">Quantity</th>
                                    <th class="text-center">Price</th>
                                    <th class="text-center">Status</th>
                                    <th class="text-center">Manage</th>
                                </tr>
                                </thead>
                                <tbody>
                                @if ($allData->count() > 0)

                                    @php
                                        $c = 1;
                                    @endphp

                                    @foreach ($allData as $data)
                                        @php

                                            $status = '<i class="fa fa-times-circle" aria-hidden="true" style="color:red; font-size:19px"></i>';
                                            if ($data->status ==1) {
                                                $status = '<i class="fa fa-check-circle" aria-hidden="true" style="color:green;font-size:19px"></i>';
                                            }
                                        @endphp
                                        <tr>
                                            <td class="text-center">{{ $c+$serial }}</td>
                                            <td> <a href="{{url($bUrl.'/'.$data->id.'/edit')}}">{{ $data->product_name }} </a></td>
                                            <td class="text-center">{{$data->product_code}}</td>
                                            <td class="text-center">{{$data->category->name??''}}</td>
                                            <td class="text-center">{{$data->quantity}}</td>
                                            <td class="text-center">{{$data->unit_price}}</td>
                                            <td class="text-center">{!! $status !!}</td>
                                            <td class="text-center">
                                                <div class="btn-group">
                                                    <button type="button" class="btn btn-outline-info">
                                                        <a href="{{url($bUrl.'/'.$data->id.'/edit')}}"><i class="fa fa-edit"></i> </a>
                                                    </button>
                                                    <button type="button" class="btn btn-outline-info">
                                                        <a  id="action" data-toggle="modal" data-target="#windowmodal" href="{{url($bUrl.'/delete/'.$data->id)}}"><i class="fa fa-trash"></i> </a>
                                                    </button>

                                                </div>
                                            </td>
                                        </tr>

                                        @php
                                            $c++;
                                        @endphp

                                    @endforeach

                                @else
                                    <tr> <td colspan="{{$total_row}}">There is nothing found.</td> </tr>

                                @endif
                                </tbody>
                            </table>
                        </div>

                        @include('layouts.per_page')

                        <div class="col-md-9">
                            <div class="pagination_table">
                                {!! $allData->render() !!}
                            </div>
                        </div>


                    </div><!-- /row -->


                </div>
                </div>
            </div>
            <!-- /.card-body -->
            <div class="card-footer">
                {{$title}}
            </div>
            <!-- /.card-footer-->
        </div>
        <!-- /.card -->
    </section>
    <!-- /.content -->



    <!-- Modal -->
    <div class="modal fade" id="windowmodal" tabindex="-1" role="dialog" aria-labelledby="windowmodal" aria-hidden="true">
        <div class="modal-dialog modal-lg"  role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="windowmodal">&nbsp;</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    <div class="spinner-border"></div>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                </div>
            </div>
        </div>
    </div>
@endsection
@push('js')
    <script>
        $(document).ready(function(){
            $('#per_page').on('change', function() {

                $.ajax({
                    type:'POST',
                    url:'{{ url($bUrl) }}',
                    data: $( this ).serialize(),
                    headers: {'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')},
                    success: function(data){
                        window.location.href = '{{ url($bUrl) }}';
                    }
                });


            });

        });
    </script>
@endpush
