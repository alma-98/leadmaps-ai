import Card from "../components/Card";

export default function Dashboard(){

return(

<div>

<div className="hero">

<h1>🚀 LeadMaps AI Dashboard</h1>

<p>
AI Lead Generation & Email Automation
</p>

</div>


<div className="cards">

<Card title="Total Leads" value="25,480"/>
<Card title="Website Scan" value="12,450"/>
<Card title="Email Found" value="18,920"/>
<Card title="Campaign" value="120"/>

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
<td>Ready</td>
</tr>

</table>

</div>


</div>

)

}
