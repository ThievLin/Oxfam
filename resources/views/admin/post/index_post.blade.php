@extends('admin.layout.master')
@section('content')
  <div class="row">
        <div class="col-md-12">

      <h2><strong>Post</strong></h2>
         @include('errors.message_error')
    </div>
  </div>
  <hr/>
  <div class="row">
    <div class="col-md-12">
    <a href="{{url('create_post')}}" class="btn btn-primary create">
                Create Post</a>
      <div class="panel panel-default">
        <div class="panel-heading">
                     List Posts
                </div><br>
               
                <div class="panel-body">        
                  <div class="table-responsive">
                  <form method="post"enctype='multipart/form-data'>
                  @csrf
                  
                  <button formaction="{{url('multiple_delete_post')}}" type="submit" class="all_delete Delete" style="background:;color:red;margin-bottom:5px;">Delete all selected</button>
               
                    <table class="table table-striped table-bordered table-hover" id="dataTables-example">
    
                          <thead>
                              <tr>                           
                              <th>
                                <input type="checkbox" class="selectall check_me_all"> All
                              </th>
                                <th>Title</th>
                                <th>Category</th>
                                <th>Status</th>
                                <th>Action</th>
                              </tr>
                          </thead>
                          <tbody class="item_list">
                            @if(count($post) > 0 )
                              @foreach($post as $p)
                              <tr>  
                                <td>
                                  <input type="checkbox" class="selectbox check_me" name="ids[]" value="{{$p->id}}">
                                </td>
                                <td>{{ $p->title }}</td>
                                <td>@if(count($p->cate)>0)
                                      {{ $p->cate->first()->name }}
                                  @else
                                      NULL
                                  @endif

                                </td>
                                <td>
                                  @if($p->status == 0)
                                    Not Active
                                  @else
                                    <span>Active</span>
                                  @endif
                                </td>
                                <td>
                                  <a href="{{ url('edit/'.$p->id.'/post') }}" class="btn btn-primary"><i class="fa fa-edit "></i></a>
                                  <a href="{{ url('delete/'.$p->id.'/post') }}" class="btn btn-danger"><i class="fa fa-ban"></i></a>
                                </td>
                              </tr>
                            @endforeach
                          @endif
                          </tbody>
                      </table>
                    </form>  
                  </div>
              </div>
          </div>
    </div>
  </div>
<script src="{{url('js/multiple_checkbox.js')}}"></script>

@endsection
