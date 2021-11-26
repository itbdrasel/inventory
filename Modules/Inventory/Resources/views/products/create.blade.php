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
                        <label class="col-sm-3 col-form-label" for="name">Name<code>*</code></label>
                        <div class="col-sm-4">
                            <input name="name" id="name" type="text" class="form-control @error('name') is-invalid @enderror "value="{{ getValue('name', $objData) }}">
                            <span id="name-error" class="error invalid-feedback">{{$errors->first('name')}}</span>
                        </div>

                        <label class="col-sm-2 col-form-label" for="parent">Parent</label>
                        <div class="col-sm-3">
                            <select name="parent" id="parent" class="form-control select2 select2-hidden-accessible @error('parent') is-invalid @enderror " style="width: 100%;" data-select2-id="1" tabindex="-1" aria-hidden="true">
                                <option value="0">Root</option>
                            @if(!empty($parents))
                                @foreach($parents as $parent)
                                <option value="{{ $parent->id }}" {{ (getValue('parent', $objData) == $parent->id) ? 'selected': '' }}>{{ $parent->name }}</option>
                                @endforeach
                            @endif
                            </select>
                            <span id="parent-error" class="error invalid-feedback">{{$errors->first('parent')}}</span>
                        </div>
                    </div>

                    <div class="form-group row">
                        <label class="col-sm-3 col-form-label" for="status">Status <code>*</code></label>
                        <div class="col-sm-4">
                            <select name="status" id="status" class="form-control @error('status') is-invalid @enderror">
                                <option {{ (getValue('status', $objData) == 1) ? 'selected': '' }} value="1">Active</option>
                                <option {{ (getValue('status', $objData) === '0') ? 'selected': '' }} value="0">Inactive</option>
                            </select>
                            <span id="status-error" class="error invalid-feedback">{{$errors->first('status')}}</span>
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

