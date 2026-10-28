# BMC Service Network image audit

Updated 2026-10-28. Applies to public site on master, not the separate Growth exposure PR.

## Coverage
- Manually inspected the primary <img> tag on all 54 registered service landing pages and the additional images on the restaurant-equipment, facility-maintenance, provider, homepage, and service directory surfaces.
- All 54 registry keys have explicit service-search photo assignments in `portfolio/assets/service-finder.js`. No registered category relies on the default unrelated handyman photo.
- Automated coverage check: `python portfolio/automation/check-service-image-coverage.py`, enforced in BMC Portfolio CI.
- The old desert highway image was removed from tree service, property services, landscaping, septic, homepage tree category, and secondary tree thumbnails.
- Restaurant equipment now uses seven distinct commercially oriented kitchen photos; restaurant-related service pages and search cards use commercial kitchen imagery.
- Photos are illustrative stock images, not examples of a BMC provider's actual jobs. Do not imply endorsement or that a particular provider performed the pictured work.

## Generator source of truth
Ten customer storefronts plus facility maintenance are configured in `portfolio/data/storefront-overrides.json`. Always edit this file and regenerate/check pages via `portfolio/automation/generate-storefronts.py`; do not edit generated pages alone.

## Outstanding visual QA
Image URL assignment and descriptive source checks are **not** a pixel-by-pixel production rendering test. Follow-up browser QA must confirm cropping, resolution, accessibility text, broken-image fallback, and readability on desktop/mobile, especially on externally served images. Some categories use a picture of the relevant equipment or problem rather than an actual worker:
- Garage door: doors, not a service technician
- Epoxy floor: finished concrete, not coating being applied
- Duct and vent: ventilation equipment, not cleaning activity
- Pet waste: dog and yard, not cleanup in progress
- Commercial pest: protective spraying, not proven pest treatment
- Restaurant hood, grease, ice machine: commercial-kitchen context without exact repair activity

These are honest visual gaps, not claims of complete service-level imagery perfection. Replace with higher-quality properly licensed job photos when found; do not borrow portfolio shots from competing businesses without their permission.

## Quality rule
For every service image: subject is clearly related to the exact job or equipment, no unrelated scenery/highway/office filler, no false claim that stock shows BMC's own workers, no stretched/distorted crops, accurate alt text, and avoid repeating the same picture across unrelated categories.
