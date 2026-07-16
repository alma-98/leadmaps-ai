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
