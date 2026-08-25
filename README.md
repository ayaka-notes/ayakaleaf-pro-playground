<h1 align="center">
  <br>
  <a href="https://overleaf-pro.ayaka.space"><img src="https://raw.githubusercontent.com/ayaka-notes/ayakaleaf-pro/server-pro/doc/logo.png" alt="Ayakaleaf Pro" width="300"></a>
</h1>

<h4 align="center">A one-click GitHub Codespaces playground for Ayakaleaf Pro <br/>(open source, free to use, self-hostable).</h4>

<p align="center">
  <a href="https://overleaf-pro.ayaka.space">Documents</a> •
  <a href="https://github.com/ayaka-notes/ayakaleaf-pro">Ayakaleaf Pro</a> •
  <a href="https://github.com/orgs/ayaka-notes/packages/container/package/overleaf-pro">Docker Image</a> •
  <a href="https://github.com/ayaka-notes/texlive-full">TeXLive</a> •
  <a href="https://overleaf-pro.ayaka.space/dev">Developer</a> •
  <a href="#authors">Authors</a> •
  <a href="#license">License</a>
</p>

<img src="https://raw.githubusercontent.com/ayaka-notes/ayakaleaf-pro/server-pro/doc/screenshot-pro.png" alt="A screenshot of a project being edited in Ayakaleaf Pro Edition">
<p align="center">
  Figure 1: A screenshot of a project being edited in Ayakaleaf Pro Edition.
</p>

## Ayakaleaf Pro Playground

Launch a fully configured Ayakaleaf Pro demo in your browser with minimal setup.
Everything runs inside a GitHub Codespace, so there is nothing to install locally
and nothing left behind when you are done.

## Quick Start

[![Open in GitHub Codespaces](https://github.com/codespaces/badge.svg)](https://codespaces.new/ayaka-notes/ayakaleaf-pro-playground)

Open this repository in a Codespace, then run:

```bash
./init.sh
```

The script builds the Pandoc converter image, clones the
[ayaka-notes/Toolkit](https://github.com/ayaka-notes/toolkit/), applies the
bundled configuration and brings the stack up.

## What is Configured

- [x] Sandboxed LaTeX compilation with TeXLive **Basic** (2026-2024)
- [x] Pandoc Import/Export (Features in SaaS Platform)
- [x] Python Script Runner (Features in SaaS Platform)
- [x] Git-Bridge Support (Features in Server Pro)
- [x] Advanced Reference Search (Features in SaaS Platform)
- [x] Admin Panel (Global Users/Projects management)
- [x] Track Changes (With Review and Comment Panel)
- [x] Full Project History(With Restore and Download)
- [x] Symbol Palette (Features in Server Pro/SaaS Platform)

GitHub Sync, LDAP, OAuth, SSO, Zotero Integration, and other features are not configured in this playground. You can refer to the [Ayakaleaf Pro documentation](https://ayakaleaf-pro.ayaka.space/on-premises/configuration/overleaf-toolkit) for more details on how to configure these features in your own deployment.

## Installation

This repository is a demo playground. For a real deployment, see the detailed
instructions on the [Documents](https://ayakaleaf-pro.ayaka.space/on-premises/configuration/overleaf-toolkit) page.

