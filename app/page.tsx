import Link from "next/link"

import { siteConfig } from "@/config/site"
import { buttonVariants } from "@/components/ui/button"

export default function IndexPage() {
  return (
    <section className="container grid items-center gap-6 pb-8 pt-6 md:py-10">
      <div className="flex max-w-[980px] flex-col items-start gap-2">
        <h1 className="text-5xl font-bold">
          <span>
            Com
            <span style={{ textDecoration: "underline" }}>
              f<span style={{ color: "red" }}>l</span>y
            </span>
          </span>
          : Seamlessly Power Your <br className="hidden sm:inline" /> ComfyUI
          Workflows with <br className="hidden sm:inline" /> Cloud-Based GPU
          Resources
        </h1>
        <p className="max-w-[700px] text-lg text-muted-foreground">
          ComfyUI meets cloud, fly through workflows unbound
        </p>
      </div>
      <div className="flex gap-4">
        <Link
          href={siteConfig.links.docs}
          target="_blank"
          rel="noreferrer"
          className={buttonVariants()}
        >
          Documentation
        </Link>
        <Link
          target="_blank"
          rel="noreferrer"
          href={siteConfig.links.github}
          className={buttonVariants({ variant: "outline" })}
        >
          GitHub
        </Link>
      </div>
    </section>
  )
}
