import {
Search,
MapPin,
Building2,
Globe,
Mail,
Save,
Download,
Eye,
ScanSearch
} from "lucide-react";

import {useState} from "react";


export default function LeadFinder(){

const [results,setResults]=useState([]);


function searchLead(){

setResults([

{
company:"ABC Property",
category:"Property",
website:"abcproperty.com",
email:"info@abcproperty.com",
location:"Jakarta"
},

{
company:"Digital Agency Indonesia",
category:"IT",
website:"digital.id",
email:"sales@digital.id",
location:"Bandung"
},

{
company:"Auto Service",
category:"Automotive",
website:"autoservice.com",
email:"cs@autoservice.com",
location:"Tangerang"
}

]);

}



return (

<div>


<div className="hero">

<h1>
🔎 Lead Finder
</h1>

<p>
Find business leads and collect email database
</p>

</div>




<div className="panel">


<h2>
Business Search
</h2>



<div className="search-box">


<div className="search-input">

<Search/>

<input
placeholder="Contoh: Bengkel Mobil"
/>

</div>




<select>

<option>
📍 Semua Lokasi
</option>

<option>
Jakarta
</option>

<option>
Bandung
</option>

<option>
Tangerang
</option>

</select>




<select>

<option>
🏢 Semua Kategori
</option>

<option>
Property
</option>

<option>
Automotive
</option>

<option>
Restaurant
</option>

<option>
IT Service
</option>


</select>




<select>

<option>
Jumlah Lead
</option>

<option>
100
</option>

<option>
500
</option>

<option>
1000
</option>


</select>




<button onClick={searchLead}>

<Search/>

Find Leads

</button>



</div>


</div>







<div className="panel">


<div className="table-header">

<div>

<h2>
Lead Results
</h2>

<p>
Total ditemukan: {results.length}
</p>

</div>


<button>

<Download/>

Export CSV

</button>


</div>





<table>


<thead>

<tr>

<th>
Business
</th>

<th>
Category
</th>

<th>
Website
</th>

<th>
Email
</th>

<th>
Action
</th>


</tr>

</thead>



<tbody>


{
results.map((lead,index)=>(

<tr key={index}>


<td>

<Building2/>

{lead.company}

<br/>

<small>
{lead.location}
</small>

</td>



<td>

<span className="category">

{lead.category}

</span>

</td>



<td>

<Globe/>

{lead.website}

</td>



<td>

<Mail/>

{lead.email}

</td>



<td>


<div className="actions">


<button className="view">

<Eye/>

</button>


<button className="scan">

<ScanSearch/>

</button>


<button className="save">

<Save/>

</button>


</div>


</td>


</tr>


))
}


</tbody>


</table>


</div>



</div>


)

}
