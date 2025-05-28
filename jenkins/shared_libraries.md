in jenkins shared library is a way to store commonly used codes , such as scripts or functions,that can be used by different jenkins pipeline.
insted of writting the same code again and again in multiple pipelines we can create shared library and use it in all the pipelines that need it. this can make your code more organized and easier to maintain.


Advantages of shared library-
standarization of pipeline.
reduce duplication of codes.
easy onboarding of new application,projects or teams
one place to fix issue with the shared or common code.
code maitainance
reduce the risk of erros


in multiple pipeline there is reusable share code so we will create library for it and just reuse it.

we configured shared library globally in jenkins under manage jenkins>configure system so that all our microservice pipelines could easily import and use standard fucntion.
