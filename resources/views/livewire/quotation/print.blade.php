<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>{{$data->quotation_number}}</title>
    <style>
        * {
            font-size:13px;
            font-family: Arial, Helvetica, sans-serif;
        }
        .text-left{
            text-align: left;
        }
        .text-right{
            text-align: right;
        }
        .text-center{
            text-align: center;
        }
        table {
            border-collapse: separate;
            border-spacing: 1px;
        }
        table.table-material {
            border: 1px solid;
        }
        table.table-material tr th {
            border-right:1px solid #000;
            padding-top:5px;
            padding-bottom:5px;
            background-color: #eee;
            padding-left: 5px;
            padding-right: 5px;
        }
        table.table-material tr td {
            border-right:1px solid;
            border-top:1px solid;
            padding-top:5px;
            padding-bottom:5px;
            padding-left:10px;
        }
        /* table.table-material tr th:last-child{
            border-right: 0;
        } */
    </style>
</head>
<body>
    <div>
        @if($company->logo)
            <img src="{{public_path('storage/'.$company->logo)}}" alt="" style="width: 150px;">
        @endif
        <div style="width: 300px;margin-top:10px;margin-bottom: 10px;">
            {{$company->name}}<br />
            NPWP : {{$company->npwp}}<br />
            {{$company->address}}
        </div>
        <div style="float:left; width: 50%;">
            <table>
                <tr>
                    <th class="text-left" style="width: 150px">DATE</th>
                    <td style="width: 30%;">{{date('d-M-Y',strtotime($data->quotation_date))}}</td>
                </tr>
                <tr>
                    <th class="text-left">Quotation #</th>
                    <td>{{$data->quotation_number}}</td>
                </tr>
            </table>
        </div>

        <div style="float:left; width: 50%;">
            <table style="width: 100%;">
                <tr>
                    <td class="text-right"><i>Quotation valid until</i></td>
                    <td> <i>:</i> </td>
                    <td class="text-right"><i>{{date('d-M-Y',strtotime($data->valid_until))}}</i> </td>
                </tr>
                <tr>
                    <td class="text-right"><i>Prepared by</i></td>
                    <td> <i>:</i> </td>
                    <td class="text-right"> <i>{{$data->submitter->name}}</i> </td>
                </tr>
                <tr>
                    <td class="text-right"><i>Revision Date</i></td>
                    <td> <i>:</i> </td>
                    <td class="text-right"> <i>{{$data->revision_date ? date('d-M-Y',strtotime($data->revision_date)) : ''}}</i> </td>
                </tr>
            </table>
        </div>
        <div style="clear:both;"></div>
        <p style="width: 300px;">
            <strong>Quotation For:<br/>
                @if($data->customer_pic)
                    {{$data->customer_pic->name}} -
                    {{$data->customer_pic->position}}<br />
                @endif
            </strong>
            {{$data->customer->name}}<br />
            {{$data->customer->address}}
        </p>
        <table style="width:100%;" class="table-material">
            <thead>
                <tr>
                    <th class="text-center">QTY</th>
                    <th>UNIT</th>
                    <th>DESCRIPTION</th>
                    <th class="text-right">UNIT PRICE</th>
                    <th class="text-right">DISC</th>
                    <th class="text-right">AMOUNT</th>
                </tr>
            </thead>
            <tbody>
                @foreach($materials as $k=>$item)
                    <tr>
                        <td class="text-center">{{$item->qty}}</td>
                        <td>{{get_uom($item->material_detail['uom_id'])}}</td>
                        <td>{{$item->material_detail['name']}}</td>
                        <td class="text-right">{{format_idr($item->price)}}</td>
                        <td></td>
                        <td class="text-right">{{format_idr($item->total)}}</td>
                    </tr>
                @endforeach
            </tbody>
        </table>
        @if(count($data->system_requirement)>0)
            <p>
                <strong>System Requirements</strong><br />
                <ol>
                    @foreach($data->system_requirement as $item)
                        <li>{!! $item !!}</li>
                    @endforeach
                </ol>
            </p>
        @endif
        
        @if(count($data->term_and_conditions)>0)
            <p>
                <strong>Term & Conditions</strong><br />
                <ol>
                    @foreach($data->term_and_conditions as $item)
                        <li>{!! $item !!}</li>
                    @endforeach
                </ol>
            </p>
        @endif
        <br>
        <table style="width: 100%;">
            <tr>
                <th>
                    <p>
                        Accepted<br />
                        <br />
                        <br />
                        <br />
                        <br />
                        (
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        )<br />
                        Authorized Person
                    </p>
                </th>
                <th>
                    <p>
                        Proposed by
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                        (
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        )<br />
                    </p>
                </th>
            </tr>
        </table>
    </div>
</body>
</html>
