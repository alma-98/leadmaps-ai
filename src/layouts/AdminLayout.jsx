import { Link } from "react-router-dom";
import "./AdminLayout.css";

export default function AdminLayout({children}){

return(

<div className="layout">

<div className="sidebar">

<h2>LeadMaps AI</h2>

<Link to="/dashboard">Dashboard</Link>
<Link to="/leads">Lead Finder</Link>
<Link to="/extractor">Email Extractor</Link>
<Link to="/crm">CRM</Link>
<Link to="/email">Email Broadcast</Link>
<Link to="/sms">SMS Broadcast</Link>
<Link to="/reports">Reports</Link>
<Link to="/settings">Settings</Link>

</div>

<div className="content">

<div className="navbar">

<h3>Investment Technology Indonesia</h3>

</div>

<div className="page">

{children}

</div>

</div>

</div>

);

}
