# Graal Containers

## Introduction

***Credits: @krisfoster https://github.com/krisfoster/graal-containers***

This repo will walk you through building containerised apps with GraalVM JDK and Native Image.

We will be using a Spring Boot application as our test-bed. This is a fairly simple app that
generates a nonsense verse, in the style of the poem Jabberwocky (by Lewis Carrol). To do this remarkable
feat it uses a Markov chain to model the text of the original poem and this model is then used to generate random text that appear to be like the original.

## Table of contents

1. [GraalVM Enterprise container images](./docs/01.md)
2. **App Native Executable:** Use GraalVM native-image to build the app native executable on local
    | GraalVM Enterprise | GraalVM Community |
    | --------------- | --------------- |
    | [Build app native executable](./docs/02-ee.md) | [Build app native executable](./docs/02-ce.md) |

3. **App JAR:** Use GraalVM JDK to build the app JAR on local
    | GraalVM Enterprise | GraalVM Community |
    | --------------- | --------------- |
    | [Build app JAR](./docs/03-ee.md) | [Build app JAR](./docs/03-ce.md) |

4. [Clean up](./docs/04.md)
5. OCI DevOps
    - 5.1: [Create Dynamic Groups and IAM Policies](./docs/05.md)
    - 5.2: [Store your GitHub PAT, OCR user and OCR password in the OCI Vault](./docs/06.md)
    - 5.3: [Create a new DevOps Project and External Connection to your GitHub Account](./docs/07.md)
    - 5.4: Use DevOps Build Pipelines to build the app native executable
        | GraalVM Enterprise | GraalVM Community |
        | --------------- | --------------- |
        | [Build app native executable](./docs/08-ee.md) | [Build app native executable](./docs/08-ce.md) |

    - 5.5: OKE - Manually deploy the app native executable on OKE and test it
        | GraalVM Enterprise | GraalVM Community |
        | --------------- | --------------- |
        | [Deploy app native executable](./docs/09.md) | -- |

    - 5.6: Use DevOps Deployment Pipelines to deploy the app native executable on OKE
        | GraalVM Enterprise | GraalVM Community |
        | --------------- | --------------- |
        | [Deploy app native executable](./docs/10.md) | -- |

    - 5.7: Use DevOps Build Pipelines to build the app JAR
        | GraalVM Enterprise | GraalVM Community |
        | --------------- | --------------- |
        | [Build app JAR](./docs/11.md) | -- |
