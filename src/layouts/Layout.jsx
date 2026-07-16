import Sidebar from "../components/Sidebar";
import {Outlet} from "react-router-dom";


export default function Layout(){

return (

<div className="layout">

<Sidebar/>

<main className="main">

<Outlet/>

</main>

</div>

)

}
