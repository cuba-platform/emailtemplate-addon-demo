[![license](https://img.shields.io/badge/license-Apache%20License%202.0-blue.svg?style=flat)](http://www.apache.org/licenses/LICENSE-2.0)

# Overview
This is a demo project for CUBA [email template](https://github.com/cuba-platform/emailtemplate-addon) component.

The demo project implements a simple subscription management system.

# Data model
**Customer** - contains name, surname, email and list of subscriptions

**Subscription** - contains active flag, expiry date, link to the customer and subscription name.

# Implementation
The demo project implements customers and subscriptions browsers and editors.

The following email templates were created:

- *Subscription created* - will be sent when a subscription is created
- *Subscription updated* - will be sent when a subscription is updated
- *Subscription ended* - will be sent when subscription `active` flag is set to false
- *Subscription renewed* - will be sent when subscription `active` flag is set to true

All templates have the required `subscription` parameter and optional parameters.

Subscription notification will be sent through API via CUBA entity listeners.

Also, there is an ability to send emails from the *Subscription browser* by selecting a template from the drop-down list. If an email is sent manually, then the standard `Send Email` screen should be used from the `Email templates` component.
