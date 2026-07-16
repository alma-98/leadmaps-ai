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
