#!/bin/bash

echo "🚀 Creating LeadMaps AI Clean Foundation"

npm install react-router-dom lucide-react


cat > src/App.jsx <<'JS'
import {
BrowserRouter,
Routes,
Route
} from "react-router-dom";

import DashboardLayout from "./layouts/DashboardLayout";

import Dashboard from "./pages/Dashboard";
import LeadFinder from "./pages/LeadFinder";
import LeadCRM from "./pages/LeadCRM";
import EmailCRM from "./pages/EmailCRM";
import Campaign from "./pages/Campaign";
import Templates from "./pages/Templates";
import AIAssistant from "./pages/AIAssistant";
import Reports from "./pages/Reports";
import Settings from "./pages/Settings";

import "./index.css";


export default function App(){

return(

<BrowserRouter>

<Routes>

<Route element={<DashboardLayout/>}>

<Route path="/" element={<Dashboard/>}/>
<Route path="/dashboard" element={<Dashboard/>}/>
<Route path="/lead-finder" element={<LeadFinder/>}/>
<Route path="/lead-crm" element={<LeadCRM/>}/>
<Route path="/email-crm" element={<EmailCRM/>}/>
<Route path="/campaign" element={<Campaign/>}/>
<Route path="/templates" element={<Templates/>}/>
<Route path="/ai-assistant" element={<AIAssistant/>}/>
<Route path="/reports" element={<Reports/>}/>
<Route path="/settings" element={<Settings/>}/>

</Route>

</Routes>

</BrowserRouter>

)

}
JS



cat > src/layouts/DashboardLayout.jsx <<'JS'
import {Outlet} from "react-router-dom";
import Sidebar from "../components/Sidebar";
import Header from "../components/Header";


export default function DashboardLayout(){

return(

<div className="app">

<Sidebar/>

<div className="main">

<Header/>

<Outlet/>

</div>

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
FileText,
Bot,
BarChart,
Settings
} from "lucide-react";


export default function Sidebar(){

const menu=[

["/dashboard","Dashboard",LayoutDashboard],
["/lead-finder","Lead Finder",Search],
["/lead-crm","Lead CRM",Users],
["/email-crm","Email CRM",Mail],
["/campaign","Campaign",Send],
["/templates","Templates",FileText],
["/ai-assistant","AI Assistant",Bot],
["/reports","Reports",BarChart],
["/settings","Settings",Settings]

];


return(

<aside className="sidebar">

<h2>
🚀 LeadMaps AI
</h2>


{menu.map(([url,name,Icon])=>(

<Link key={url} to={url}>

<Icon size={18}/>

{name}

</Link>

))}

</aside>

)

}
JS



cat > src/components/Header.jsx <<'JS'
export default function Header(){

return(

<header className="header">

<h2>
Email Intelligence Platform
</h2>


<div>
Alma
</div>

</header>

)

}
JS



cat > src/pages/Page.jsx <<'JS'
export default function Page({title}){

return(

<div className="page">

<div className="hero">

<h1>{title}</h1>

<p>
LeadMaps AI Module
</p>

</div>


<div className="card">

<h2>
Coming Soon
</h2>

<p>
UI module ready.
</p>

</div>


</div>

)

}
JS



cat > src/pages/Dashboard.jsx <<'JS'
import Page from "./Page";

export default function Dashboard(){

return <Page title="🚀 Dashboard"/>

}
JS


for item in LeadFinder LeadCRM EmailCRM Campaign Templates AIAssistant Reports Settings
do

cat > src/pages/$item.jsx <<JS
import Page from "./Page";

export default function $item(){

return <Page title="$item"/>

}
JS

done



cat > src/index.css <<'CSS'
*{
box-sizing:border-box;
font-family:Inter,Arial;
}


body{

margin:0;
background:#f8fafc;

}


.app{

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

margin-bottom:35px;

}



.sidebar a{

display:flex;
gap:12px;
align-items:center;
padding:14px;
color:#cbd5e1;
text-decoration:none;
border-radius:12px;
margin-bottom:8px;

}


.sidebar a:hover{

background:#2563eb;
color:white;

}



.main{

flex:1;
padding:25px;

}



.header{

background:white;
padding:20px 30px;
border-radius:18px;
display:flex;
justify-content:space-between;

}



.page{

margin-top:25px;

}



.hero{

background:linear-gradient(135deg,#2563eb,#7c3aed);
color:white;
padding:35px;
border-radius:25px;

}



.card{

background:white;
padding:30px;
border-radius:20px;
margin-top:25px;

}



@media(max-width:900px){

.sidebar{

display:none;

}

}

CSS


echo "✅ Foundation selesai"

