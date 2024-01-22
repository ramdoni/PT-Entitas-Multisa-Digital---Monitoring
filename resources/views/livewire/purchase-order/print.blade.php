<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>{{$data->quotation_number}}</title>
</head>
<body>
    <div>
        <table style="width: 100%;">
            <tr>
                <td style="width: 30%;">
                    @if($company->logo)
                        <img src="{{public_path('storage/'.$company->logo)}}" alt="" style="width: 150px;">
                    @endif
                </td>
                <td style="width: 70%;text-align:center;">
                    <div style="width: 80%;margin:auto;">
                        {{$company->name}}<br />
                        NPWP : {{$company->npwp}}<br />
                        {{$company->address}}
                    </div>
                </td>
            </tr>
        </table>
        <hr style="margin-bottom:3px;" />
        <hr style="margin-top:0;" />
        <table>
            <tr>
                <td>Purchase Order No</td>
                <td> : </td>
                <td>{{$data->po_number}}</td>
            </tr>
            <tr>
                <td>Date</td>
                <td> : </td>
                <td>{{$data->po_date}}</td>
            </tr>
        </table>
    </div>
</body>
</html>
