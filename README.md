[![license](https://img.shields.io/badge/license-Apache%20License%202.0-blue.svg?style=flat)](http://www.apache.org/licenses/LICENSE-2.0)

#Overview
This is demo project for CUBA email template component.

Demo project will implement simple subscriptions management system.

#Data model
**Customer** - contains name, surname, email and list of subscriptions

**Subscription** - contains active flag, expiry date, link to customer and subscription name.

#Implementation
Demo project implements customers and subscriptions browsers and editors.

Following email templates were created:

- *Subscription created* - will be sent when subscription was created
- *Subscription updated* - will be sent when subscription was updated
- *Subscription ended* - when subscription `active` flag will be set to false
- *Subscription renewed* - when subscription `active` flag will be set to true

All templates have required `subscription` parameter and optional paramters.

Subscription notification will be sent through API via CUBA entity listeners.

Also there is ability to send these emails from subscription browser by selecting template from drop down list. If email will be sent manually then a standard `Send email` screen should be used from the `Email templates` component.