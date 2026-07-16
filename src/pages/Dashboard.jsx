export default function Dashboard(){

return(
<Page 
title="🚀 LeadMaps AI Dashboard"
items={[
["Total Leads","25,480"],
["Website Scanned","12,450"],
["Email Found","18,920"],
["Campaign","120"]
]}
/>
)

}

function Page({title,items}){

return(

<div>

<header className="hero">

<h1>{title}</h1>

<p>
AI Lead Generation & Email Automation Platform
</p>

</header>


<div className="cards">

{items.map((x,i)=>(

<div className="card" key={i}>

<h3>{x[0]}</h3>

<h1>{x[1]}</h1>

</div>

))}

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
