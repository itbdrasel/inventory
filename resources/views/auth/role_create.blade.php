@extends("master")
@section("content")

<!-- Main content -->
<section class="container">

	<div class="row">

	  <div class="col-10">

		<div class="card">
			<div class="card-header">
				<h3 class="card-title">  <i class="fa fa-book"></i> {{$title}}</h3>
				<div class="card-tools">
					<button type="button" class="btn btn-tool" data-card-widget="collapse" title="Collapse">
						<i class="fas fa-minus"></i>
					</button>
					<button type="button" class="btn btn-tool">
						<a href="{{url($pageUrl)}}" class="btn btn-info btn-sm"><i class="mdi mdi-plus"></i> <i class="fa fa-arrow-left"></i> Back</a>
					</button>
				</div>
			</div>

            <div class="card-body">


			 <form method="post" action="{{url('author/role-store')}}" >
                    @csrf

					{!! validation_errors($errors) !!}



                 <div class="form-group row">
                     <label class="col-sm-2 col-form-label"> Role Name <code>*</code></label>

                     <div class="col-sm-5">
                         <input type="text" value="{{old('role_name')}}" name="role_name"    class="form-control">
                     </div>


                 </div>
                 <div class="form-group row">
                     <label class="col-sm-2 col-form-label"> Role Slug <code>*</code></label>
                     <div class="col-sm-5">
                         <input type="text" value="{{old('role_slug')}}" name="role_slug"  class="form-control">
                     </div>
                 </div>

                 <div class="form-group row">
                     <label class="col-sm-2 col-form-label"> Redirect Url <code>*</code></label>
                     <div class="col-sm-5">
                         <input type="text" value="{{old('redirect_url')}}" name="redirect_url" class="form-control">
                     </div>
                 </div>
                 <div class="form-group row">
                     <label class="col-sm-2 col-form-label"> Module </label>
                     <div class="col-sm-5">
                         <select class="form-control text-capitalize" name="module_code">
                             <option value="">Select Module</option>
                             @if(!empty($modules))
                                 @foreach($modules as $module)
                                     <option {{($module->module_code == old('module_code'))?'selected':''}} value="{{$module->module_code}}">{{$module->name}}</option>
                                 @endforeach
                             @endif
                         </select>
                     </div>
                 </div>



				 <!-- /.card-body -->
					<div class="card-footer">
						<div class="offset-md-2 col-sm-9">
							<button type="submit" class="btn btn-primary">Save</button>&nbsp;&nbsp;
							<a href="{{url($pageUrl)}}"  class="btn btn-warning">Cancel</a>
						</div>
					</div>
					<!-- /.card-footer-->

	  			</form>


			</div>
		</div><!--/card-->

	</div>
 </div>
</section>

    @endsection
