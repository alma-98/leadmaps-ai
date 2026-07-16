#!/bin/bash

echo "🚀 Building LeadMaps AI UI..."

mkdir -p src/components
mkdir -p src/layouts
mkdir -p src/pages


npm install lucide-react react-router-dom


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

<aside className="sidebar">

<h2>🚀 LeadMaps AI</h2>


<Link to="/dashboard"><LayoutDashboard/> Dashboard</Link>

<Link to="/lead-finder"><Search/> Lead Finder</Link>

<Link to="/leads"><Users/> Lead Database</Link>

<Link to="/email-crm"><Mail/> Email CRM</Link>

<Link to="/campaign"><Send/> Campaign</Link>

<Link to="/templates"><Sparkles/> AI Templates</Link>

<Link to="/ai"><Bot/> AI Assistant</Link>

<Link to="/reports"><BarChart3/> Reports</Link>

<Link to="/settings"><Settings/> Settings</Link>


</aside>

)

}
JS



cat > src/layouts/DashboardLayout.jsx <<'JS'
import Sidebar from "../components/Sidebar";

export default function DashboardLayout({children}){

return (

<div className="layout">

<Sidebar/>

<main className="content">

{children}

</main>

</div>

)

}
JS



cat > src/components/Card.jsx <<'JS'
export default function Card({title,value}){

return (

<div className="card">

<p>{title}</p>

<h1>{value}</h1>

</div>

)

}
JS



cat > src/pages/Dashboard.jsx <<'JS'
import Card from "../components/Card";

export default function Dashboard(){

return (

<>

<h1>AI Lead Generation Dashboard</h1>

<p>Welcome to LeadMaps AI CRM</p>


<div className="cards">

<Card title="Total Leads" value="25,480"/>

<Card title="Email Found" value="18,920"/>

<Card title="Campaign" value="120"/>

<Card title="Open Rate" value="89%"/>

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
<td>PT Digital Indonesia</td>
<td>info@digital.id</td>
<td>Ready</td>
</tr>


<tr>
<td>ABC Property</td>
<td>sales@abc.com</td>
<td>Contact</td>
</tr>


</table>

</div>


</>

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

<p>
LeadMaps AI $page Module
</p>

</div>

</div>

)

}
JS

done



cat > src/pages/Landing.jsx <<'JS'
export default function Landing(){

return (

<div className="landing">

<h1>
LeadMaps AI
</h1>

<h2>
AI Lead Generation & Email CRM Platform
</h2>

<button>
Start Now
</button>

</div>

)

}
JS




cat > src/pages/Login.jsx <<'JS'
export default function Login(){

return (

<div className="login">

<h1>
Login LeadMaps AI
</h1>

<input placeholder="Email"/>

<input placeholder="Password"/>

<button>
Login
</button>

</div>

)

}
JS




cat > src/App.jsx <<'JS'
import {
BrowserRouter,
Routes,
Route
} from "react-router-dom";


import DashboardLayout from "./layouts/DashboardLayout";


import Landing from "./pages/Landing";
import Login from "./pages/Login";

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



function App(){


return (

<BrowserRouter>

<Routes>


<Route path="/" element={<Landing/>}/>

<Route path="/login" element={<Login/>}/>


<Route element={<DashboardLayout/>}>


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


export default App;
JS





cat > src/index.css <<'CSS'
*{
box-sizing:border-box;
font-family:Inter,Arial;
}


body{

margin:0;
background:#f8fafc;

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



.cards{

display:grid;
grid-template-columns:repeat(4,1fr);
gap:20px;
margin-top:30px;

}



.card{

background:white;
padding:25px;
border-radius:20px;
box-shadow:0 5px 20px #ddd;

}


.card h1{

font-size:35px;

}


.panel{

background:white;
padding:25px;
border-radius:20px;
margin-top:30px;

}


table{

width:100%;

}


td,th{

padding:15px;
border-bottom:1px solid #eee;

}



button{

background:#2563eb;
color:white;
border:0;
padding:12px 25px;
border-radius:10px;

}


input{

display:block;
padding:15px;
margin:10px;
border-radius:10px;
border:1px solid #ddd;

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



echo "✅ LeadMaps AI UI selesai"
