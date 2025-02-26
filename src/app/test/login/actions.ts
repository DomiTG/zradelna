"use server";

import { redirect } from "next/navigation";
import { createClient } from "~/lib/supabase/server";
import { LogInWithAzure } from "~/server/queries/user";

// ADD FORM VALIDATION

export async function login(formData: FormData) {
  const supabase = await createClient();
  const { data, error } = await supabase.auth.signInWithPassword({
    email: formData.get("email") as string,
    password: formData.get("password") as string,
  });

  console.log("[AUTH]: Login user ", data.user?.id);

  if (error) redirect("/error");
  console.log("[AUTH][ERROR]: ", error);

  redirect("/");
}

// ADD FORM VALIDATION

export async function signInWithMicrosoft() {
  await LogInWithAzure();
}
