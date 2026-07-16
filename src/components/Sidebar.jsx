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
