abstract class BaseViewmodel extends BaseViewmodelInputs implements BaseViewmodelOutputs {
  // shared variable and functions that will be used through any view model.

}

abstract class BaseViewmodelInputs{
 void start();  // called while initialisation of view model
 void dispose();  //called when view model dies
}

abstract class BaseViewmodelOutputs{
}