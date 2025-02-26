import { redirect } from "next/navigation";
import { HomepageComponent } from "~/comps/HomepageComponent";

import { getUser } from "~/server/queries/user";


export default async function HomePage() {
  const user = await getUser();
  console.log("User: ", user?.id);


  if(!user) redirect("/auth/login")
  
  // const menus = await getMenusInRange(new Date(), new Date())
 
  return (
    <HomepageComponent user={user} />
  );

}
