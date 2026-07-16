#!/bin/bash

echo "🚀 Creating LeadMaps AI Premium Dashboard"


cat > src/pages/Dashboard.jsx <<'JS'
import {
Users,
Globe,
Mail,
Send,
TrendingUp,
Search,
Upload,
Sparkles,
Database
} from "lucide-react";


export default function Dashboard(){

return (

<div className="dashboard">


<section className="welcome">

<div>

<h1>
🚀 Welcome Alma 👋
</h1>

<p>
LeadMaps AI - AI Lead Generation & Email Automation Platform
</p>

</div>


<div className="top-action">

<button>
Scan Website
</button>

<button>
Find Leads
</button>

</div>


</section>





<section className="stats">


<Stat
icon={<Users/>}
title="Total Leads"
value="25,480"
desc="+12% bulan ini"
/>


<Stat
icon={<Globe/>}
title="Website Scanned"
value="12,450"
desc="AI Scanner Active"
/>


<Stat
icon={<Mail/>}
title="Email Found"
value="18,920"
desc="15,640 Valid"
/>


<Stat
icon={<Send/>}
title="Campaign Sent"
value="120"
desc="89% Open Rate"
/>


</section>





<div className="dashboard-grid">



<div className="panel">

<h2>
📈 Lead Growth
</h2>


<div className="chart">

<span></span>
<span></span>
<span></span>
<span></span>
<span></span>
<span></span>

</div>


</div>





<div className="panel scanner">

<h2>
🌐 Website Scanner
</h2>


<div className="status">

🟢 Running

</div>


<p>
Queue Website:
<b> 250</b>
</p>


<p>
Completed:
<b> 1,240</b>
</p>


<p>
Email Found:
<b> 860</b>
</p>


</div>




</div>







<div className="dashboard-grid">



<div className="panel">


<h2>
👥 Recent Leads
</h2>


<table>

<thead>

<tr>
<th>Company</th>
<th>Email</th>
<th>Status</th>
</tr>

</thead>


<tbody>


<tr>
<td>ABC Property</td>
<td>info@abc.com</td>
<td>New</td>
</tr>


<tr>
<td>Digital Agency</td>
<td>sales@digital.id</td>
<td>Contacted</td>
</tr>


<tr>
<td>Bengkel Auto</td>
<td>cs@auto.com</td>
<td>Ready</td>
</tr>


</tbody>


</table>


</div>






<div className="panel">


<h2>
📧 Campaign Performance
</h2>


<div className="metric">

Sent
<strong>
5000
</strong>

</div>


<div className="metric">

Opened
<strong>
3200
</strong>

</div>


<div className="metric">

Reply
<strong>
120
</strong>

</div>



</div>




</div>









<div className="panel ai-panel">


<Sparkles size={35}/>


<h2>
🤖 AI Recommendation
</h2>


<p>

Anda memiliki 250 lead kategori Property
yang siap dibuatkan campaign.

</p>


<button>
Create Email Campaign
</button>


</div>








<div className="panel">


<h2>
CRM Pipeline
</h2>



<div className="pipeline">


<div>
New Lead
<b>540</b>
</div>


<div>
Contacted
<b>320</b>
</div>


<div>
Interested
<b>120</b>
</div>


<div>
Customer
<b>45</b>
</div>


</div>


</div>







<div className="quick">


<h2>
Quick Action
</h2>


<div className="quick-grid">


<Action icon={<Search/>} text="Find Leads"/>

<Action icon={<Database/>} text="Open CRM"/>

<Action icon={<Upload/>} text="Import CSV"/>


</div>


</div>



</div>

)

}




function Stat({icon,title,value,desc}){

return (

<div className="stat-card">

{icon}

<h3>
{title}
</h3>


<h1>
{value}
</h1>


<p>
{desc}
</p>


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

JS




cat >> src/index.css <<'CSS'


.dashboard{

width:100%;

}



.welcome{

background:linear-gradient(
135deg,
#2563eb,
#7c3aed
);

color:white;

padding:35px;

border-radius:25px;

display:flex;

justify-content:space-between;

align-items:center;

}



.top-action{

display:flex;

gap:15px;

}




.stats{

display:grid;

grid-template-columns:repeat(4,1fr);

gap:20px;

margin-top:25px;

}



.stat-card{

background:white;

padding:25px;

border-radius:22px;

box-shadow:0 10px 30px rgba(0,0,0,.06);

}



.stat-card svg{

color:#2563eb;

}



.stat-card h1{

font-size:35px;

}




.dashboard-grid{

display:grid;

grid-template-columns:2fr 1fr;

gap:25px;

margin-top:25px;

}



.panel{

background:white;

padding:30px;

border-radius:25px;

box-shadow:0 10px 30px rgba(0,0,0,.05);

}




.chart{

height:220px;

display:flex;

align-items:end;

gap:20px;

}



.chart span{

width:40px;

height:90px;

background:#2563eb;

border-radius:10px;

}



.chart span:nth-child(2){

height:150px;

}


.chart span:nth-child(3){

height:120px;

}


.chart span:nth-child(4){

height:190px;

}


.chart span:nth-child(5){

height:160px;

}


.chart span:nth-child(6){

height:210px;

}




.status{

background:#dcfce7;

color:#166534;

padding:10px;

border-radius:10px;

}



.metric{

display:flex;

justify-content:space-between;

padding:15px;

background:#f8fafc;

margin:10px 0;

border-radius:10px;

}




.ai-panel{

background:#111827;

color:white;

}



.pipeline{

display:grid;

grid-template-columns:repeat(4,1fr);

gap:15px;

}



.pipeline div{

background:#eff6ff;

padding:25px;

border-radius:15px;

}



.pipeline b{

display:block;

font-size:30px;

}



.quick-grid{

display:grid;

grid-template-columns:repeat(3,1fr);

gap:20px;

}



.action{

background:white;

padding:25px;

border-radius:20px;

display:flex;

gap:15px;

align-items:center;

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

.stats,
.dashboard-grid,
.pipeline,
.quick-grid{

grid-template-columns:1fr;

}

}

CSS


echo "✅ Dashboard Premium Ready"

