import { DishesComponent } from "~/comps/DishesComponent";
import type IDish from "~/interfaces/IDish";
// import { db } from "~/server/db";

export default async function Dishes() {
  // const dishes: Array<IDish> = await db.query.dishes.findMany();
  const dishes: IDish[] = [];

  return (
    <>
      <DishesComponent dishes={dishes} />
    </>
  );
}
