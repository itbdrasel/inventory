@extends('master')
@section('content')
    <section class="content">
        <div class="container-fluid">
            <div class="row">
                <div class="col-12">
                    <h3 class="mb-3">{{$appTitle}}</h3>
                    <div class="row">

                        <div class="c-panel-boxs" style="margin: 15px;">
                            <a href="{{url('author/base_setting')}}" class="c-panel-box" style="background-color: #6d3400 !important; ">
                                <img src="{{asset('uploads/icons/system.svg')}}">
                                <h3 >Base Setting</h3>
                            </a>
                        </div>
                    </div>

                </div>
            </div>
        </div>
    </section>
@endsection
@push('css')
    <style>
        p.from_error{
            position: absolute;
            bottom: -12px;
            left: 13px;
            color: red;
            font-size: 15px;
            background-color: #fff;
            padding: 0 5px;
        }
        .custom_control{
            margin-top: 37px;
        }
        img.img_search{
            height: 130px;
            width: 130px;
            margin-top: 14px;
        }
        .btn-app{
            font-size: 15px;
            height: 130px;
            width: 155px;
            padding: 15px;
            color: #138496;
            background: linear-gradient(140deg, rgba(231,231,231,1) 0%, rgba(231,231,231,1) 50%, rgba(241,241,241,1) 50%, rgba(241,241,241,1) 100%);
        }
        .btn-app>.fa, .btn-app>.fab, .btn-app>.fad, .btn-app>.fal, .btn-app>.far, .btn-app>.fas, .btn-app>.ion, .btn-app>.svg-inline--fa{
            font-size: 50px;
            color: #138496;
        }
        th.text-center.sorting {
            width: 200px;
        }


        .label_show{
            background-color: #e7eeff;
            width: 100%;
            padding: .375rem .75rem;
        }

        .show_form{
            border-radius: 5px !important;
            background-color: #f9fbff !important;
        }


        /*Room Status admin panel design*/
        .hotel-name button{
            border: 0;
            outline: 0;
            border-radius: 0;
            padding: 0px 10px;
            margin-top: 10px;
        }
        #table td, .table th{
            padding: 5px!important;
        }
        #table th{
            font-size: 12px!important;
        }
        .room-summary-table{
            border: 1px solid #ddd;
            padding: 10px;
            /*color: #fff!important;*/
        }
        .room-summary-table hr{
            padding: 0;
            margin: 0;
        }
        .status{
            display: inline-block;
            height: 15px;
            width: 20px;
            margin-left: 5px;
        }
        .room-status p{
            margin-right: 15px;
            display: flex;
            align-items: center;
            margin-bottom: 10px;
        }

        /*image form*/
        .img-holder{
            height: auto;
            width: 100px;
            display: flex;
        }
        .img-holder img{
            width: 100%;
            height: auto;
            border: 1px solid skyblue;
            padding: 7px;
            margin-right: 10px;
        }


        /*============== Control panel page design ==========*/
        .c-panel-boxs{
            display: flex;
            flex-wrap: wrap;
            gap: 20px;
        }
        a.c-panel-box{
            text-decoration: none;
            height: 180px;
            width: 180px;
            padding: 20px;
            background: #1687A7;
            box-shadow: 0 2px 15px #ddd;
            text-align: center;
            display: flex;
            flex-direction: column;
            justify-content: center;
            font-weight: bold;
            transition: .3s;
        }
        a.c-panel-box:hover{
            color: #1E3048;
            box-shadow: none;
        }
        .c-panel-box img{
            width: 60px;
            margin: 0 auto;
        }
        .c-panel-box h3{
            font-size: 20px;
            margin-top: 10px;
            /*color: #1E3048;*/
            color: #fff;
        }


        /*======== Dashboard Index page ========= */
        .dashboard-small-box{
            background: #fff;
            box-shadow: 0 2px 15px #ddd;
            padding: 15px 20px;
        }
        .dashboard-small-box .icon span i{
            font-size: 45px;
        }
        .dashboard-small-box-bottom{
            border-top: 1px solid #ddd;
        }
        .heading p{
            color: gray;
        }
        .dashboard-small-box-bottom a{
            text-decoration: none;
            color: gray;
            display: inline-block;
            margin-top: 5px;
            font-size: 14px;
        }
        .dashboard-small-box-bottom a i{
            color: #000;
        }

        /*========== Chart 1 =============*/
        .fullscreen{
            position: fixed;
            top: 0;
            left: 0;
            bottom: 0;
            right: 0;
            width: 100%;
            /*height: 100vh;*/
            overflow: auto;
            z-index: 9999;
        }

        /*======== Transaction history ==========*/
        .media span i{
            padding: 7px;
            border-radius: 50%;
        }
        .bg-success-faded i{
            background: #eaf7ed;
        }
        .bg-info-faded i{
            background: #e3f5f8;
        }
        .bg-warning-faded i{
            background: #fff9ec;
        }
        .bg-secondary-faded i{
            background: #edeeef;
        }
    </style>
@endpush
