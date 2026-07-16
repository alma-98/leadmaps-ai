import {
Users,
Mail,
Send,
TrendingUp,
Sparkles
} from "lucide-react";


export default function Dashboard(){

return (

<div>


<div className="hero">

<h1>
🚀 LeadMaps AI Dashboard
</h1>

<p>
AI Lead Generation & Email Automation Platform
</p>

</div>



<div className="stats">

<Card title="Total Leads" value="25,480" icon={<Users/>}/>

<Card title="Email Found" value="18,920" icon={<Mail/>}/>

<Card title="Campaign" value="120" icon={<Send/>}/>

<Card title="Conversion" value="89%" icon={<TrendingUp/>}/>


</div>



<div className="grid">


<div className="box">

<h2>
Lead Analytics
</h2>


<div className="chart">

<div></div>
<div></div>
<div></div>
<div></div>
<div></div>

</div>


</div>



<div className="box ai">

<Sparkles/>

<h2>
AI Assistant
</h2>

<p>
Generate email campaign otomatis.
</p>

<button>
Open AI
</button>

</div>


</div>




<div className="box">

<h2>
Recent Leads
</h2>


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


<tr>
<td>Digital Agency</td>
<td>sales@digital.id</td>
<td>New</td>
</tr>


</table>


</div>


</div>

)

}



function Card({title,value,icon}){

return (

<div className="stat">

{icon}

<h3>{title}</h3>

<h1>{value}</h1>

</div>

)

}
