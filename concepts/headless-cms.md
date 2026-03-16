# WTF is Headless CMS?

A content management system that only handles content storage and delivery via an API, with no built-in frontend. You write and organize content in the CMS, then fetch it from any frontend you want. Unlike WordPress, the CMS does not control how content is displayed.

```
Traditional CMS:          Headless CMS:

┌──────────────┐          ┌──────────┐
│ CMS manages  │          │   CMS    │──API──► Website
│ content AND  │          │ (content │──API──► Mobile App
│ the website  │          │  only)   │──API──► Smart TV
└──────────────┘          └──────────┘
```

**Examples:** [Strapi](https://github.com/strapi/strapi), [Sanity](https://www.sanity.io), [Contentful](https://www.contentful.com)
