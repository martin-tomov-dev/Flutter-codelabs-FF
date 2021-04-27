# Introduction

State management is an important topic in mobile development.
In Flutter, InheritedWidget makes the process of building
the state management system easier. In this workshop,
you will learn how to handle your app state by using InheritedWidget.




# An Overview

This workshop includes a series of steps to convert an app without
any state management to a fully centralized state management system.

You will be started with a demo Google store app. To see how the app looks,
click the `Run` button in the top right corner of the IDE.

Try to scroll through different google products and add/remove products from
the cart. The small cart icon on the right of the app bar changes based on number
of the products in the cart. You can also perform search queries by clicking the
search icon in the app bar and type `"nest"` to filter nest products.

There are two components that require stateful objects:

1. The cart icon needs to store how many items is in the cart.
2. The product list widget needs to store which item is already in cart, and
what the search query is.

Currently, this app stores duplicated information in these two components and needs to
constantly sync the states between them. Let's see how we can improve this app!
