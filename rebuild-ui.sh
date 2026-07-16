#!/bin/bash

echo "🚀 Rebuild LeadMaps AI UI"

rm -rf src/components
rm -rf src/layouts
rm -rf src/pages

mkdir -p src/components
mkdir -p src/layouts
mkdir -p src/pages


npm install react-router-dom lucide-react



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

return (

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



cat > src/layouts/Layout.jsx <<'JS'
import Sidebar from "../components/Sidebar";
import {Outlet} from "react-router-dom";


export default function Layout(){

return (

<div className="layout">

<Sidebar/>

<main className="main">

<Outlet/>

</main>

</div>

)

}
JS



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

return (

<div className="sidebar">

<h2>
🚀 LeadMaps AI
</h2>


<Link to="/dashboard"><LayoutDashboard/> Dashboard</Link>

<Link to="/lead-finder"><Search/> Lead Finder</Link>

<Link to="/leads"><Users/> Lead CRM</Link>

<Link to="/email-crm"><Mail/> Email CRM</Link>

<Link to="/campaign"><Send/> Campaign</Link>

<Link to="/templates"><Sparkles/> Templates</Link>

<Link to="/ai"><Bot/> AI Assistant</Link>

<Link to="/reports"><BarChart3/> Reports</Link>

<Link to="/settings"><Settings/> Settings</Link>


</div>

)

}
JS



cat > src/pages/Dashboard.jsx <<'JS'
export default function Dashboard(){

return (

<div>

<h1>🚀 LeadMaps AI Dashboard</h1>

<p>AI Lead Generation & Email CRM Platform</p>


<div className="cards">

<Card t="Total Leads" v="25,480"/>

<Card t="Email Found" v="18,920"/>

<Card t="Campaign" v="120"/>

<Card t="Open Rate" v="89%"/>


</div>


<div className="panel">

<h2>Lead Growth Analytics</h2>

<div className="chart">
████████████████
</div>


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
<td>New</td>
</tr>


</table>

</div>


</div>

)

}


function Card({t,v}){

return (

<div className="card">

<p>{t}</p>

<h1>{v}</h1>

</div>

)

}
JS




for page in LeadFinder Leads EmailCRM Campaign Templates AI Reports Settings
do

cat > src/pages/$page.jsx <<JS
export default function $page(){

return (

<div>

<h1>$page</h1>


<div className="panel">

<h2>LeadMaps AI $page Module</h2>

<p>
Halaman siap dikembangkan.
</p>

</div>


</div>

)

}
JS

done



cat > src/index.css <<'CSS'
*{
box-sizing:border-box;
font-family:Arial;
}


body{
margin:0;
background:#f1f5f9;
}


.layout{
display:flex;
min-height:100vh;
}


.sidebar{

width:260px;
background:#0f172a;
color:white;
padding:25px;

}


.sidebar h2{

margin-bottom:40px;

}


.sidebar a{

display:flex;
gap:12px;
align-items:center;
padding:14px;
margin:8px 0;
color:white;
text-decoration:none;
border-radius:12px;

}


.sidebar a:hover{

background:#2563eb;

}



.main{

flex:1;
padding:35px;

}



.cards{

display:grid;
grid-template-columns:repeat(4,1fr);
gap:20px;

}


.card,.panel{

background:white;
padding:25px;
border-radius:20px;
margin-top:25px;

}


.card h1{

font-size:35px;

}


.chart{

height:180px;
background:#2563eb;
color:white;
padding:40px;
border-radius:15px;

}


table{

width:100%;

}


td,th{

padding:15px;

}

CSS


echo "✅ UI selesai dibuat"
