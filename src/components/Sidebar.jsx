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
