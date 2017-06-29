# Collaborating with Security and Trust (EMEA) Webinar

## Why collaborate?
-   People work better/products end up better with open sourcing
-   Companies ship faster with higher quality, and they end up with happier devs
-   Without open sourcing/ when collaboration and security are separate:
    -   Might not have documented conversation about why a specific change was made
    -   The dev who made the change may not remember
    -   Most likely have to write all the code from scratch
-   Collaboration and security and trust:
    -   Can reuse existing code
    -   Pull requests/approvals lead to good workflow/practices
        -   Also having this review with multiple sets of eyes => catch errors, allow comments and contributions

### Virtuous Circle of Collaboration
![](https://cl.ly/0s3m2Z2Y390x/Screen%20Shot%202017-06-29%20at%209.18.23%20AM.png)
-   Happier devs don't have to wait as long for results and **ship quality code faster**
-   More likely to catch bugs before deployment; catching in development stage = less expensive

### Security and collaboration
-   Two-factor authentication
    -   In the beginning, everyone who is part of the project needs to sign in with this
-   [Verified commits](https://github.com/blog/2144-gpg-signature-verification)
    -   When developers commit, they will verify that they authored the change
    ![](https://cl.ly/202X0c0I2F21/Screen%20Shot%202017-06-29%20at%209.27.30%20AM.png)
-   [Hooks](https://git-scm.com/book/gr/v2/Customizing-Git-Git-Hooks)
    -   Checks in the git workflow process. Companies can customize their policies for commits/commit messages or pushes however they want, and GH will make sure all the developers adhere to them via the hooks
    -   example: (**pre-commit hook**) if something in the commit doesn't check out, GH can throw an error, reject the commit, notify the developer
-   Pull Requests
    -   What in your development process is unique? What would you like to validate?
    -   You can set a check for these requirements so nothing gets merged to production unless the pull request meets the business requirement (see the red x's/green checkmark next to commit)
    ![automated checks](https://cl.ly/0R0K06240J2j/Screen%20Shot%202017-06-29%20at%209.30.03%20AM.png)
    ![automated checks 2](https://cl.ly/1z1R1N2q2529/Screen%20Shot%202017-06-29%20at%209.33.26%20AM.png)
    -   This can help the collaborator who is responsible for merging
    -   Also minimizes human error
-   Collab part
    -   On GH you can require peer review (like on _this_ repo lol)
    ![](https://cl.ly/2H1f0s0Q0s0p/Screen%20Shot%202017-06-29%20at%209.31.42%20AM.png)
-   Merging
    -   Can filter who is allowed to merge code

### Community project
![](https://cl.ly/16192i2D1C3w/Screen%20Shot%202017-06-29%20at%209.34.40%20AM.png)
-   **Maintainers**: most familiar with the project, can merge
-   **Collaborators**: next rank, can submit pull requests
-   **Contributors**: need to fork, I believe
-   **Users**: anyone else. Have the most restrictions, maybe just has a read-only option
