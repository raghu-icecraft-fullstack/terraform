# Terraform v0.13 Beta Guide

Hello! This temporary repository contains some hopefully-helpful resources for
people participating in the Terraform v0.13 beta testing process. It highlights
the major changes coming in Terraform v0.13 and includes some configuration
examples you might use as a starting point for testing. Please play with the
examples and try to adapt them to patterns you are using in your real
infrastructure!

> **We do not recommend using beta releases in production**. While we have
> performed some internal alpha testing prior to this release, the betas will
> be the first exposure of some of this code to use-cases the Terraform team
> didn't anticipate during that internal testing, and so there may well be bugs
> lurking which we'll aim to address during the beta period.

The information in this repository is likely to be removed or become stale after
the v0.13 beta period concludes, so we don't recommend using this repository
as an ongoing reference resource. If you are reading this after v0.13 final is
released, please refer to
[the main Terraform documentation](https://www.terraform.io/docs/cli-index.html)
for up-to-date information.

---

# Terraform v0.13 Highlights

While we do welcome feedback of any sort during the beta process, our
development efforts during this period will be focused mainly on fixing issues
related to the main feature development themes for this release and so issues
that pre-existed in Terraform v0.12 or earlier are likely to be deferred to a
later time.

The main new features and significant changes in this release are:

* [`for_each` and `count` for modules](./module-repetition)
* [`depends_on` for modules](./module-depends)
* [Automatic installation of third-party providers](./provider-sources)
* [Custom validation rules for module variables](./variable-validation)

