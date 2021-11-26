
@extends("master")
@section("content")
    <!-- Main content -->

    <section class="content">
        <form method="post" action="{{url($bUrl.'/store')}}" enctype="multipart/form-data" >
            @csrf
        <!-- Default box -->
        <div class="card">
            <div class="card-header">
                <h2 class="card-title"> {!! $page_icon !!} &nbsp; {{ $title }} </h2>
                <div class="card-tools">
                    <button type="button" class="btn btn-tool" data-card-widget="collapse" title="Collapse">
                        <i class="fas fa-minus"></i>
                    </button>
                </div>
            </div>

            <div class="card-body" id="">
                <div class="col-md-10">
                    {!! validation_errors($errors) !!}

                    <div class="col-sm-8">
                        <div class="form-group row">
                            <label  class="col-sm-3 col-form-label">App Name <code>*</code></label>
                            <div class="col-sm-8">
                                <input type="text" value="{{config('settings')['appName']}}" name="app_name"class="form-control">
                            </div>
                        </div>
                    </div>
                    <div class="col-sm-8">
                        <div class="form-group row">
                            <label  class="col-sm-3 col-form-label">App Title <code>*</code></label>
                            <div class="col-sm-8">
                                <input type="text" value="{{config('settings')['appTitle']}}" name="app_title" class="form-control">
                            </div>
                        </div>
                    </div>
                    <div class="col-sm-8">
                        <div class="form-group row">
                            <label  class="col-sm-3 col-form-label">App URL <code>*</code></label>
                            <div class="col-sm-8">
                                <input type="text" value="{{config('settings')['url']}}" name="app_url" class="form-control">
                            </div>
                        </div>
                    </div>
                    <div class="col-sm-8">
                        <div class="form-group row">
                            <label  class="col-sm-3 col-form-label">E-mail <code>*</code></label>
                            <div class="col-sm-8">
                                <input type="text" value="{{config('settings')['email']}}" name="email" class="form-control">
                            </div>
                        </div>
                    </div>
                    <div class="col-sm-8">
                        <div class="form-group row">
                            <label  class="col-sm-3 col-form-label">App Address <code>*</code></label>
                            <div class="col-sm-8">
                                <textarea class="form-control" rows="3" name="app_address" >{{config('settings')['appAddress']}}</textarea>
                            </div>
                        </div>
                    </div>
                    <div class="col-sm-8">
                        <div class="form-group row">
                            <label  class="col-sm-3 col-form-label">Contact <code>*</code></label>
                            <div class="col-sm-8">
                                <input type="text" value="{{config('settings')['contact']}}" name="contact" class="form-control">
                            </div>
                        </div>
                    </div>
                    <div class="col-sm-8">
                        <div class="form-group row">
                            <label  class="col-sm-3 col-form-label">Currency Symbol <code>*</code></label>
                            <div class="col-sm-8">
                                <select class="form-control"  name="currency_symbol">
                                    <option {{config('settings')['c_symbol']=='BDT'?'selected':''}} value="BDT">BDT</option>
                                    <option {{config('settings')['c_symbol']=='TK'?'selected':''}} value="TK">TK</option>
                                    <option {{config('settings')['c_symbol']=='USD'?'selected':''}} value="USD">USD</option>
                                </select>
                            </div>
                        </div>
                    </div>
                    <div class="col-sm-8">
                        <div class="form-group row">
                            <label  class="col-sm-3 col-form-label">Currency Order <code>*</code></label>
                            <div class="col-sm-8">
                                <select class="form-control"  name="currency_order">
                                    <option {{config('settings')['c_order']=='left'?'selected':''}} value="left">left</option>
                                    <option {{config('settings')['c_order']=='right'?'selected':''}} value="right">right</option>
                                </select>
                            </div>
                        </div>
                    </div>
                    <div class="col-sm-8">
                        <div class="form-group row">
                            <label  class="col-sm-3 col-form-label">Date Format <code>*</code></label>
                            <div class="col-sm-8">
                                @php
                                    $year = date('Y')-1;
                                @endphp
                                <select class="form-control"  name="date_format">
                                    <option {{config('settings')['date_format']=='d-m-Y'?'selected':''}} value="d-m-Y">30-12-{{$year}} (d-m-Y)</option>
                                    <option {{config('settings')['date_format']=='Y-m-d'?'selected':''}} value="Y-m-d">{{$year}}-12-30 (Y-m-d)</option>
                                    <option {{config('settings')['date_format']=='d/m/Y'?'selected':''}} value="d/m/Y">30/12/{{$year}} (d/m/Y)</option>
                                    <option {{config('settings')['date_format']=='Y/m/d'?'selected':''}} value="Y/m/d">{{$year}}/12/30 (Y/m/d)</option>
                                </select>
                            </div>
                        </div>
                    </div>
                    <div class="col-sm-8">
                        <div class="form-group row">
                            <label  class="col-sm-3 col-form-label">USD Rate <code>*</code></label>
                            <div class="col-sm-8">
                                <input type="text" value="{{config('settings')['usd_rate']}}" name="usd_rate" class="form-control">
                            </div>
                        </div>
                    </div>


                    <div class="col-sm-8">
                        <div class="form-group row">
                            <label  class="col-sm-3 col-form-label">App Logo</label>
                            <div class="col-sm-2">
                              <img class="img-thumbnail" height="75" src="{{config('settings')['logo']}}" />
                            </div>
                            <div class="col-sm-4">
                                <a id="action" style="margin-top: 25px" data-toggle="modal" class="btn btn-primary" data-target="#windowmodal" href="{{url($bUrl.'/logo/')}}"> Upload Logo</a>
                            </div>
                        </div>
                    </div>




            </div>
            <!-- /.card-body -->
            <div class="card-footer">
                <div class="offset-md-1 col-sm-8">
                    <button type="submit" class="btn btn-primary">Save</button>&nbsp;&nbsp;
                    <a href="{{url($bUrl)}}"  class="btn btn-warning">Cancel</a>
                </div>
            </div>
            <!-- /.card-footer-->
        </div>
        <!-- /.card -->
        </form>
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

