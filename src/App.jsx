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
