#!/bin/bash

echo "🚀 Building Complete LeadMaps AI UI"

mkdir -p src/components src/layouts src/pages


npm install react-router-dom lucide-react


cat > src/layouts/Layout.jsx <<'JS'
import Sidebar from "../components/Sidebar";
import {Outlet} from "react-router-dom";

export default function Layout(){

return(
<div className="app">
<Sidebar/>
<main className="content">
<Outlet/>
</main>
</div>
)

}
JS


cat > src/components/Sidebar.jsx <<'JS'
import {Link} from "react-router-dom";
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


export default function Sidebar(){

const menu=[
["/dashboard","Dashboard",LayoutDashboard],
["/lead-finder","Lead Finder",Search],
["/leads","Lead CRM",Users],
["/email-crm","Email CRM",Mail],
["/campaign","Campaign",Send],
["/templates","Templates",Sparkles],
["/ai","AI Assistant",Bot],
["/reports","Reports",BarChart3],
["/settings","Settings",Settings]
];


return(

<aside className="sidebar">

<h2>🚀 LeadMaps AI</h2>


{menu.map(([url,name,Icon])=>(

<Link to={url} key={url}>

<Icon size={20}/>

{name}

</Link>

))}


</aside>

)

}
JS



cat > src/App.jsx <<'JS'
import {
BrowserRouter,
Routes,
Route
} from "react-router-dom";

import Layout from "./layouts/Layout";

import Dashboard from "./pages/Dashboard";
import LeadFinder from "./pages/LeadFinder";
import Leads from "./pages/Leads";
import EmailCRM from "./pages/EmailCRM";
import Campaign from "./pages/Campaign";
import Templates from "./pages/Templates";
import AI from "./pages/AI";
import Reports from "./pages/Reports";
import Settings from "./pages/Settings";

import "./index.css";


export default function App(){

return(

<BrowserRouter>

<Routes>

<Route element={<Layout/>}>

<Route path="/" element={<Dashboard/>}/>

<Route path="/dashboard" element={<Dashboard/>}/>

<Route path="/lead-finder" element={<LeadFinder/>}/>

<Route path="/leads" element={<Leads/>}/>

<Route path="/email-crm" element={<EmailCRM/>}/>

<Route path="/campaign" element={<Campaign/>}/>

<Route path="/templates" element={<Templates/>}/>

<Route path="/ai" element={<AI/>}/>

<Route path="/reports" element={<Reports/>}/>

<Route path="/settings" element={<Settings/>}/>

</Route>

</Routes>

</BrowserRouter>

)

}
JS



cat > src/pages/Dashboard.jsx <<'JS'
export default function Dashboard(){

return(
<Page 
title="🚀 LeadMaps AI Dashboard"
items={[
["Total Leads","25,480"],
["Website Scanned","12,450"],
["Email Found","18,920"],
["Campaign","120"]
]}
/>
)

}

function Page({title,items}){

return(

<div>

<header className="hero">

<h1>{title}</h1>

<p>
AI Lead Generation & Email Automation Platform
</p>

</header>


<div className="cards">

{items.map((x,i)=>(

<div className="card" key={i}>

<h3>{x[0]}</h3>

<h1>{x[1]}</h1>

</div>

))}

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



create_page(){

cat > src/pages/$1.jsx <<JS
export default function $1(){

return(

<div>

<header className="hero">

<h1>$2</h1>

<p>
LeadMaps AI Module
</p>

</header>


<div className="panel">

<h2>$2</h2>

<p>
Feature page ready.
</p>

</div>


</div>

)

}
JS

}


create_page LeadFinder "🔎 Google Maps Lead Finder"
create_page Leads "👥 Lead CRM Database"
create_page EmailCRM "📧 Email CRM Database"
create_page Campaign "🚀 Email Campaign"
create_page Templates "✍ AI Email Templates"
create_page AI "🤖 AI Assistant"
create_page Reports "📊 Analytics Reports"
create_page Settings "⚙ System Settings"



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


.sidebar h2{

margin-bottom:40px;

}


.sidebar a{

display:flex;
gap:15px;
align-items:center;
padding:15px;
margin:8px 0;
color:#cbd5e1;
text-decoration:none;
border-radius:12px;

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

}



.cards{

display:grid;
grid-template-columns:repeat(4,1fr);
gap:20px;
margin-top:25px;

}


.card,.panel{

background:white;
padding:25px;
border-radius:20px;
margin-top:25px;

}


.card h1{

font-size:36px;

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

.sidebar{

display:none;

}

}

CSS



npm run build


git add .

git commit -m "Complete LeadMaps AI UI Dashboard CRM Email Platform"

git push


firebase deploy --only hosting:main


echo "================================"
echo "DONE"
echo "https://leadmaps-ai.web.app"
echo "================================"

