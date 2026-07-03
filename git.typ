= Git <git>

You will probably use Git or related services at some point in the programme, 
but not sure by how when I write this. Anyway, it would be great to know Git as 
96% of professional developers use Git, even though you are going to let AI 
agents to manage your repositories.

Git is a *distributed version control system* created by Linus Torvalds (yes, 
the guy who made Linux kernel). In short, it means that using with Git, you can 
switch between different changes easily, contribute to the project with others
parallelly and get notified about conflicts automatically.

Before you start, please ensure that Git is installed. Sometimes Git has been 
shipped by default, but if it is not the case, you can always check
#link("https://git-scm.com/install/")[The Git Install Page] for details. 

== Forges

Git is just a software to perform tasks, so installing Git won't do anything 
basically, as it need a place to handle everything. 

Well, in fact, you can #link("https://git-scm.com/book/en/v2/Git-on-the-Server-Setting-Up-the-Server")[set up Git on your own server]
(or Futurum) if you want, but for many reasons people use some web platforms 
for developing and sharing computer applications, and such platforms are called
*forges*. 

There are many forges online. The well-known #link("github.com")[GitHub] is one 
of them, but enterprises might prefer to use their own #link("gitlab.com")[GitLab], 
and due to the bad reputation of Microsoft #footnote("In case you don't know, Microsoft acquired GitHub in 2018"), 
many people now turn to #link("https://codeberg.org/")[Codeberg] or 
#link("https://sr.ht/")[sourcehut] to update or publish their projects. 

You can choose whatever you want, as the fundamentals should be the same, but I
will use GitHub for example here, because I don't think we will use other 
services other than it for a while.

Also, as mentioned berfore, a forge is a *web-based* platform, so almost 
everything regarding the platform, including issues, pull requests, CI/CD, and 
so on is done online, or the GitHub App if you like it. 

=== New repository
A *repository* (or *repo* for short) needs to be created at first. GitHub has 
given a pretty complete instruction when you create a new repo. I made a private
repo, which means that the repo is hidden for anyone else. 

#grid(
  columns: (35.3%, auto),
  column-gutter: 4pt,
  figure(
    image("figs/gh_new.png"),
    caption: [Creating a repo],
  ),
  figure(
    image("figs/gh_init.png"),
    caption: [Initialising a repo],
  )
)

The only thing is that, you might have noticed that the push asked me for a 
password. *The password is NOT the one you use for logging in*. You can either 
#link("https://docs.github.com/en/authentication/connecting-to-github-with-ssh")[setting
 up a SSH key for GitHub] to bypass it, or go to `Setting > Developer Settings > Personal access tokens > tokens (classic)` 
to generate a token for the password.


=== Fork 

If you want to contribute to other's project, or want to change something for
personal purposes, you can fork the repo to 'make it yours 
#footnote("Well, it is not yours due to the licence. It just means you can make changes on your fork without touching the original work. You need to credit the author if you use their works.")'. 

#figure(
  image("figs/gh_fork.png", width: 50%),
  caption: [Click the 'Fork' button to fork],
)

Private repo cannot be found by search, so you need to be added to the repo 
first to gain access, then fork it. The forked repo will also remain private.

#grid(
  columns: (auto, auto),
  column-gutter: 4pt,
  align: center,
  figure(
    image("figs/gh_add_people.png"),
    caption: [Add people to a private repo],
  ),
  figure(
    image("figs/gh_newfork.png"),
    caption: [Creating a new fork]
  )
)

=== Issues 

As its name suggested, you will raise issues when you have questions. It might 
not be so useful in courses, as you can ask your teammates face to face whenever 
you want. However, if you are using FOSS softwares and running into problems,
this is the place you should ask questions. 

// fig: a typical issue page

=== Pull requests 

Assuming you have a group project on GitHub, which means you probably forked it
to work on yourself (unless you are the owner of the repo), and you fixed a bug
or something. Now you probably need to do a *pull requests* to allow your 
changes get merged. 

Being the main feature of collaboration, before your work eventually gets 
accepted, you all are going to discuss and review changes, particually, you may
need to explain your changes, and reviewers may need to make comments on your
changes, or even give some optimisation by themselves. 

In real practice, it is normal to have your pull requests rejected, but don't
be too upset about it, as the owner will give you feedback for you too learn.

== Git commands

As previous sessions, it is impossible and impractical to cover every command
in this instruction, but I will try to cover those common as much as possible.

Let's start with the basic workflow. You either Initialise your own repo, or 
make a fork of other repo. 
