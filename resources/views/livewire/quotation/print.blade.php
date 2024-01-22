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
                <td style="width: 40%;">
                    @if($company->logo)
                        <img src="{{public_path('storage/'.$company->logo)}}" alt="" style="width: 150px;">
                    @endif
                </td>
                <td style="width: 60%;text-align:center;">
                    {{$company->name}}<br />
                    NPWP : {{$company->npwp}}<br />
                    {{$company->address}}
                </td>
            </tr>
        </table>
    </div>
</body>
</html>
