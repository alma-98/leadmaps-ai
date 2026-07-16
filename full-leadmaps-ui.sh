#!/bin/bash

echo "🚀 Creating LeadMaps AI Complete SaaS UI"


mkdir -p src/components src/pages



cat > src/components/Button.jsx <<'JS'
export default function Button({children,type=""}){

return(
<button className={"btn "+type}>
{children}
</button>
)

}
JS



cat > src/components/Card.jsx <<'JS'
export default function Card({title,value}){

return(

<div className="card">

<h4>{title}</h4>

<h1>{value}</h1>

</div>

)

}
JS



cat > src/pages/Dashboard.jsx <<'JS'
import Card from "../components/Card";

export default function Dashboard(){

return(

<div>

<div className="hero">

<h1>🚀 LeadMaps AI Dashboard</h1>

<p>
AI Lead Generation & Email Automation
</p>

</div>


<div className="cards">

<Card title="Total Leads" value="25,480"/>
<Card title="Website Scan" value="12,450"/>
<Card title="Email Found" value="18,920"/>
<Card title="Campaign" value="120"/>

</div>


<div className="panel">

<h2>Recent Leads</h2>

<table>

<tr>
<th>Company</th>
<th>Email</th>
<th>Status</th>
</tr>

<tr>
<td>ABC Property</td>
<td>info@abc.com</td>
<td>Ready</td>
</tr>

</table>

</div>


</div>

)

}
JS




cat > src/pages/LeadFinder.jsx <<'JS'
export default function LeadFinder(){

return(

<div>

<div className="hero">

<h1>🔎 Lead Finder</h1>

<p>Google Maps Business Search</p>

</div>


<div className="panel">


<div className="filter">


<input placeholder="Keyword bisnis"/>

<select>
<option>Lokasi</option>
<option>Jakarta</option>
<option>Bandung</option>
</select>


<select>
<option>Kategori</option>
<option>Property</option>
<option>Automotive</option>
</select>


<select>
<option>Jumlah Lead</option>
<option>100</option>
<option>1000</option>
</select>


<button>
Find Leads
</button>


</div>


</div>



<div className="panel">


<h2>Lead Results</h2>


<table>

<tr>
<th>Business</th>
<th>Website</th>
<th>Email</th>
<th>Action</th>
</tr>


<tr>
<td>ABC Property</td>
<td>abc.com</td>
<td>info@abc.com</td>

<td>
<button>Scan</button>
<button>CRM</button>
</td>

</tr>


</table>


</div>


</div>

)

}
JS




create_page(){

cat > src/pages/$1.jsx <<JS

export default function $1(){

return(

<div>

<div className="hero">

<h1>$2</h1>

<p>LeadMaps AI Management</p>

</div>


<div className="panel">


<div className="filter">

<input placeholder="Search"/>


<select>
<option>All Category</option>
</select>


<button>
Search
</button>

</div>



<table>

<tr>
<th>Name</th>
<th>Email</th>
<th>Status</th>
<th>Action</th>
</tr>


<tr>

<td>Sample Data</td>

<td>email@example.com</td>

<td>Active</td>


<td>

<button>View</button>

<button>Edit</button>

</td>


</tr>


</table>


</div>


</div>

)

}

JS

}


create_page Leads "👥 Lead CRM"
create_page EmailCRM "📧 Email CRM"
create_page Campaign "🚀 Email Campaign"
create_page Templates "✍ AI Templates"
create_page AI "🤖 AI Assistant"
create_page Reports "📈 Reports"
create_page Settings "⚙ Settings"



cat > src/index.css <<'CSS'

*{
box-sizing:border-box;
font-family:Inter,Arial;
}


body{

margin:0;
background:#f1f5f9;

}


.content{

padding:35px;

}



.hero{

background:linear-gradient(135deg,#2563eb,#7c3aed);
color:white;
padding:35px;
border-radius:25px;

}



.cards{

display:grid;
grid-template-columns:repeat(4,1fr);
gap:20px;
margin-top:25px;

}



.card,
.panel{

background:white;
padding:25px;
border-radius:20px;
margin-top:25px;

box-shadow:0 10px 30px rgba(0,0,0,.05);

}



.card h1{

font-size:36px;

}



.filter{

display:flex;
gap:15px;

}



input,
select{

padding:15px;
border-radius:12px;
border:1px solid #ddd;

}


button,
.btn{

background:#2563eb;
color:white;
border:0;
padding:12px 20px;
border-radius:12px;
cursor:pointer;

}


table{

width:100%;
border-collapse:collapse;

}


td,th{

padding:15px;
border-bottom:1px solid #eee;

}



@media(max-width:900px){

.cards{

grid-template-columns:1fr;

}


.filter{

flex-direction:column;

}

}

CSS


npm run build

git add .

git commit -m "Complete LeadMaps AI all pages UI"

git push

firebase deploy --only hosting:main


echo "DONE https://leadmaps-ai.web.app"

