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
