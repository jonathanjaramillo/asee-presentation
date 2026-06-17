import { defineAppSetup } from '@slidev/types'

// Workaround for a Slidev 52.x routing bug under a sub-path base
// (e.g. GitHub project pages served from /asee-presentation/).
//
// getSlidePath() prepends import.meta.env.BASE_URL to the target path, and
// router.push() then prepends the router's history base again. The result is a
// doubled path like `/asee-presentation/asee-presentation/2` that matches no
// route and renders Slidev's 404 page when clicking next/prev. Initial load and
// direct deep links are unaffected, so only programmatic navigation breaks.
//
// Fix: strip the duplicated leading base from navigation targets before they
// reach the router. Vue Router re-adds the base itself when writing the URL.
export default defineAppSetup(({ router }) => {
  const base = import.meta.env.BASE_URL
  if (!base || base === '/')
    return

  // base always ends with '/'; slice(base.length - 1) keeps a single leading '/'
  const strip = (path: string) =>
    path.startsWith(base) ? path.slice(base.length - 1) : path

  for (const method of ['push', 'replace'] as const) {
    const original = router[method].bind(router)
    router[method] = ((to: any) => {
      if (typeof to === 'string')
        to = strip(to)
      else if (to && typeof to.path === 'string')
        to = { ...to, path: strip(to.path) }
      return original(to)
    }) as typeof router[typeof method]
  }
})
