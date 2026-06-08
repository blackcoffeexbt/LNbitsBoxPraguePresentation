## LNbitsBox: Self-Hosted Lightning, Ready to Build On
## Slide 1 - Intro who I am

## Slide 2 - What Is LNbitsBox?
- LNbitsBox is a self-hosted Lightning appliance.
- It is an SD image and hardware that boots a fully functional LNbits instance, with everything wired together for a smooth first-run experience.
- Everything already wired together:
  - First-run setup wizard
  - LNbits with Phoenixd, Ark(ade) or Spark Lightning funding sources
  - Remote access via Tor and clearnet URLs
  - Admin control panel
  - OTA updates
  - Manual and rolling encrypted backup and recovery
  - Local HTTPS with installable CA

## Slide 3 - Why?
- Because sovereign self-hosting Lightning can be easy.
- LNbitsBox gives you a fully self-contained Lightning appliance that is easy to set up, use, and maintain.
- Use cases:
  - Run your own LNbits instance at home
  - Put it in a shop, classroom, hackerspace, or workshop
  - Build a merchant, Lightning, or project box without depending on a cloud account for the core experience
- Core value:
  - Plug and play!
  - Easy remote access via clearnet and Tor
  - Admin panel for backups, updates and device monitoring

## Slide 4 - Why NixOS?
- Because hardware for money should be reproducible.
- NixOS makes the appliance declarative:
  - Services
  - Ports
  - Files
  - Packages
  - Boot behavior
  - Update flow
- Why it matters:
  - Same config builds the same system image
  - Easier OTA updates via immutable system generations
  - Rollback-friendly when updates go wrong
  - Services are explicit: LNbits, funding sources, Caddy, Tor, admin app
  - Great fit for appliances: define the state and ship it
- Visual flow: flake.nix -> SD image -> Raspberry Pi -> reproducible LNbitsBox.

## Speaker cue
"With NixOS, the product is not just the app. The product is the whole machine state."

## Slide 5 - Demo
- Demo sequence:
  1. Configure the box
  2. Show the control panel. Step through set up with Phoenixd
  3. Set up remote clearnet access
  4. Show LNbits running with a funded wallet - make a test payment

## Slide 6 - LNbitsBox.com