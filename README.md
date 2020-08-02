# hexagonal-school
Simple application with hexagonal architecture. 

Domain :  All the business logic will be in the domain. It will have no dependency on any framework.
Infrastructure: Infrastructure contains all the dependency on spring, fluent-jdbc, etc.
Bootstrap: All the spring-boot configurations are in bootstrap which does the wiring of the application.


Working with Domain-Driven Design and the Hexagonal Architecture, usually means applying the Behavior-Driven Development methodology.

Many people have understood it and this technique is now widespread. Unfortunately, we often see that the functional tests used to describe the behavior of an application, are implemented as a http client hitting the endpoints.

The main drawback of this (anti-)pattern is the mix of the testing concerns. With this type of test, we have something that has the responsibility to verify:

1. the business logic of the application (functional tests)
2. the contract of the external API (contract tests)
3. the workflow offered to the consumer – or something similar to it (end to end tests)
4. sometimes the mapping between the domain objects and the adapters (unit tests / integration tests)
5. the integration of the different sub-components of the application such as controllers, domain services, repositories… (integration tests / component tests)
6. and most of the time without knowing it: the living documentation (contract testing)
A simple serialization problem will fail this type of test, and as a developer we will have to determine whether a regression has been made in the business logic or if there is a problem with the configuration of a framework.
What becomes a real hell when upgrading a structural framework such asSpring Boot after playing search-and-destroy with the compilation errors…

# BDDs should be in domain testing the actual business scenarios
