export default function LeadFinder(){

return(

<div>

<div className="hero">

<h1>🔎 Lead Finder</h1>

<p>Google Maps Business Search</p>

</div>


<div className="panel">


<div className="filter">


<input placeholder="Keyword bisnis"/>

<select>
<option>Lokasi</option>
<option>Jakarta</option>
<option>Bandung</option>
</select>


<select>
<option>Kategori</option>
<option>Property</option>
<option>Automotive</option>
</select>


<select>
<option>Jumlah Lead</option>
<option>100</option>
<option>1000</option>
</select>


<button>
Find Leads
</button>


</div>


</div>



<div className="panel">


<h2>Lead Results</h2>


<table>

<tr>
<th>Business</th>
<th>Website</th>
<th>Email</th>
<th>Action</th>
</tr>


<tr>
<td>ABC Property</td>
<td>abc.com</td>
<td>info@abc.com</td>

<td>
<button>Scan</button>
<button>CRM</button>
</td>

</tr>


</table>


</div>


</div>

)

}
