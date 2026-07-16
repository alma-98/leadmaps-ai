#!/bin/bash

echo "🚀 Installing LeadMaps AI Premium UI"


mkdir -p src/components src/layouts src/pages


cat > src/components/Sidebar.jsx <<'JS'
import {
LayoutDashboard,
Search,
Users,
Mail,
Send,
Sparkles,
Bot,
BarChart3,
Settings
} from "lucide-react";

import {Link} from "react-router-dom";


export default function Sidebar(){

const menus=[
["/dashboard","Dashboard",LayoutDashboard],
["/lead-finder","Lead Finder",Search],
["/leads","Lead CRM",Users],
["/email-crm","Email CRM",Mail],
["/campaign","Campaign",Send],
["/templates","Templates",Sparkles],
["/ai","AI Assistant",Bot],
["/reports","Reports",BarChart3],
["/settings","Settings",Settings],
];


return (

<aside className="sidebar">

<div className="brand">
🚀 LeadMaps AI
</div>


{menus.map(([url,name,Icon])=>(

<Link key={url} to={url}>

<Icon size={20}/>

{name}

</Link>

))}


</aside>

)

}
JS



cat > src/layouts/Layout.jsx <<'JS'
import Sidebar from "../components/Sidebar";
import {Outlet} from "react-router-dom";


export default function Layout(){

return (

<div className="app">

<Sidebar/>

<div className="content">

<Outlet/>

</div>


</div>

)

}
JS



cat > src/pages/Dashboard.jsx <<'JS'
import {
Users,
Mail,
Send,
TrendingUp,
Sparkles
} from "lucide-react";


export default function Dashboard(){

return (

<div>


<div className="hero">

<h1>
🚀 LeadMaps AI Dashboard
</h1>

<p>
AI Lead Generation & Email Automation Platform
</p>

</div>



<div className="stats">

<Card title="Total Leads" value="25,480" icon={<Users/>}/>

<Card title="Email Found" value="18,920" icon={<Mail/>}/>

<Card title="Campaign" value="120" icon={<Send/>}/>

<Card title="Conversion" value="89%" icon={<TrendingUp/>}/>


</div>



<div className="grid">


<div className="box">

<h2>
Lead Analytics
</h2>


<div className="chart">

<div></div>
<div></div>
<div></div>
<div></div>
<div></div>

</div>


</div>



<div className="box ai">

<Sparkles/>

<h2>
AI Assistant
</h2>

<p>
Generate email campaign otomatis.
</p>

<button>
Open AI
</button>

</div>


</div>




<div className="box">

<h2>
Recent Leads
</h2>


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


<tr>
<td>Digital Agency</td>
<td>sales@digital.id</td>
<td>New</td>
</tr>


</table>


</div>


</div>

)

}



function Card({title,value,icon}){

return (

<div className="stat">

{icon}

<h3>{title}</h3>

<h1>{value}</h1>

</div>

)

}
JS




create_page(){

NAME=$1
TITLE=$2


cat > src/pages/$NAME.jsx <<JS

export default function $NAME(){

return (

<div>


<div className="hero">

<h1>
$TITLE
</h1>

<p>
LeadMaps AI Professional Module
</p>

</div>



<div className="box">


<h2>
$TITLE
</h2>


<p>
Manage your leads and automation here.
</p>



<div className="feature">

Active System

</div>


</div>


</div>

)

}

JS

}



create_page LeadFinder "🔎 Lead Finder"
create_page Leads "👥 Lead CRM"
create_page EmailCRM "📧 Email CRM"
create_page Campaign "🚀 Email Campaign"
create_page Templates "✍ AI Templates"
create_page AI "🤖 AI Assistant"
create_page Reports "📊 Reports"
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


.app{

display:flex;
min-height:100vh;

}



.sidebar{

width:270px;
background:#0f172a;
padding:25px;
color:white;

}



.brand{

font-size:24px;
font-weight:800;
margin-bottom:40px;

}



.sidebar a{

display:flex;
gap:15px;
align-items:center;
padding:15px;
margin-bottom:10px;
border-radius:14px;
color:#cbd5e1;
text-decoration:none;

}


.sidebar a:hover{

background:#2563eb;
color:white;

}



.content{

flex:1;
padding:35px;

}



.hero{

background:linear-gradient(135deg,#2563eb,#7c3aed);
color:white;
padding:35px;
border-radius:25px;
margin-bottom:30px;

}



.stats{

display:grid;
grid-template-columns:repeat(4,1fr);
gap:20px;

}



.stat,
.box{

background:white;
border-radius:25px;
padding:30px;
box-shadow:0 10px 30px rgba(0,0,0,.05);

}



.stat svg{

color:#2563eb;

}



.stat h1{

font-size:36px;

}



.grid{

display:grid;
grid-template-columns:2fr 1fr;
gap:25px;
margin-top:30px;

}



.chart{

height:220px;
display:flex;
align-items:end;
gap:20px;

}


.chart div{

width:45px;
height:100px;
background:#2563eb;
border-radius:12px;

}


.chart div:nth-child(2){

height:170px;

}


.chart div:nth-child(3){

height:130px;

}


.chart div:nth-child(4){

height:200px;

}



.ai{

background:#111827;
color:white;

}



table{

width:100%;
border-collapse:collapse;

}


td,th{

padding:15px;
border-bottom:1px solid #eee;

}



.feature{

margin-top:20px;
background:#eff6ff;
padding:30px;
border-radius:20px;

}


button{

background:#2563eb;
color:white;
border:0;
padding:12px 25px;
border-radius:12px;

}



@media(max-width:900px){

.stats,
.grid{

grid-template-columns:1fr;

}


.sidebar{

display:none;

}

}

CSS



echo "✅ Premium UI Finished"

