import {
Search,
MapPin,
Building2,
Globe,
Mail,
Save,
Download
} from "lucide-react";

import {useState} from "react";


export default function LeadFinder(){

const [keyword,setKeyword]=useState("");
const [location,setLocation]=useState("");
const [data,setData]=useState([]);



function search(){

setData([

{
company:"PT Maju Property",
category:"Property",
location:"Jakarta",
website:"majuproperty.com",
email:"info@majuproperty.com",
status:"Ready"
},

{
company:"Digital Agency Indonesia",
category:"IT Service",
location:"Jakarta",
website:"digitalagency.id",
email:"sales@digitalagency.id",
status:"Verified"
},

{
company:"Bengkel Auto Jaya",
category:"Automotive",
location:"Tangerang",
website:"autojaya.com",
email:"cs@autojaya.com",
status:"New"
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
Cari bisnis potensial dari Google Maps dan website
</p>

</div>




<div className="panel">


<h2>
Business Search
</h2>


<div className="finder">


<div>

<Search/>

<input
placeholder="Contoh: Bengkel Mobil"
value={keyword}
onChange={(e)=>setKeyword(e.target.value)}
/>

</div>


<div>

<MapPin/>

<input
placeholder="Jakarta"
value={location}
onChange={(e)=>setLocation(e.target.value)}
/>

</div>



<select>

<option>
Semua Kategori
</option>

<option>
Property
</option>

<option>
Restaurant
</option>

<option>
Automotive
</option>

<option>
IT
</option>

</select>



<button onClick={search}>

<Search/>

Find Leads

</button>



</div>


</div>







<div className="panel">


<div className="title-row">

<h2>
Lead Results
</h2>


<button>

<Download/>

Export

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
Status
</th>

<th>
Action
</th>


</tr>

</thead>


<tbody>


{
data.map((item,index)=>(

<tr key={index}>


<td>

<Building2/>

{item.company}

</td>


<td>
{item.category}
</td>


<td>

<Globe/>

{item.website}

</td>


<td>

<Mail/>

{item.email}

</td>


<td>

<span className="badge">

{item.status}

</span>

</td>


<td>

<button>

<Save/>

CRM

</button>

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
