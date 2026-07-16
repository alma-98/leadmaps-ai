import {
Globe,
Mail,
CheckCircle,
Database,
Search,
Upload,
Send,
Sparkles
} from "lucide-react";


export default function Dashboard(){

return (

<div className="dashboard">


<div className="hero">

<div>

<h1>
🚀 LeadMaps AI Email Scraper
</h1>

<p>
Automatic Website Scanner & Email CRM
</p>

</div>


<button>
Upgrade Pro
</button>


</div>



<div className="cards">


<Card
icon={<Globe/>}
title="Website Scanned"
value="12,450"
/>


<Card
icon={<Mail/>}
title="Email Found"
value="8,920"
/>


<Card
icon={<CheckCircle/>}
title="Valid Email"
value="7,650"
/>


<Card
icon={<Database/>}
title="CRM Leads"
value="15,240"
/>


</div>





<div className="search-scraper">


<h2>
Website Email Scraper
</h2>


<div className="form">


<input
placeholder="Masukkan website contoh: bisnis.com"
/>


<button>
<Search/>
Scan Website
</button>


</div>


<p>
AI akan mencari email publik dari halaman website.
</p>


</div>





<div className="grid">


<div className="panel">


<h2>
Recent Scraping Result
</h2>


<table>

<thead>

<tr>

<th>
Website
</th>

<th>
Email
</th>

<th>
Status
</th>

</tr>

</thead>


<tbody>


<tr>

<td>
propertyabc.com
</td>

<td>
sales@propertyabc.com
</td>

<td>
Verified
</td>


</tr>


<tr>

<td>
digitalagency.id
</td>

<td>
info@digitalagency.id
</td>

<td>
Verified
</td>

</tr>


</tbody>


</table>


</div>





<div className="panel ai">


<Sparkles/>

<h2>
AI Email Assistant
</h2>


<p>
Generate email campaign dari hasil scraping.
</p>


<button>
Create Campaign
</button>


</div>



</div>






<div className="quick">


<h2>
Quick Action
</h2>


<div className="quick-grid">


<Action
icon={<Search/>}
text="Scrape Website"
/>


<Action
icon={<Upload/>}
text="Import CSV"
/>


<Action
icon={<Send/>}
text="Broadcast Email"
/>



</div>


</div>


</div>

)

}



function Card({icon,title,value}){

return (

<div className="card">

{icon}

<h3>
{title}
</h3>

<h1>
{value}
</h1>


</div>

)

}



function Action({icon,text}){

return (

<div className="action">

{icon}

{text}

</div>

)

}
