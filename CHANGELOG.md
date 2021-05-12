## 1.0.13
- Fix: Function type without return type will export as dynamic.

## 1.0.12
- Add: Export static methods and variables even the class is abstract.

## 1.0.11
- Breaking Changes: Exported the .g.dart files with path in their names when generating from packages, due to repeated file names in different folders.

## 1.0.10
- Breaking Changes: Changed the generated script file names, so you won't need to change pubspec.yaml after binding a new package.

## 1.0.9
- Add: Instance member variable setter for `List` and `Map`  will get a `.from` type conversion. 

## 1.0.8
- Fix: Windows ignored path. 

## 1.0.7
- Add: Function type binding using Hetu.
- Breaking Changes: Adapt to the Hetu script changes. (VM)

## 1.0.6
- Add: Extension binding.

## 1.0.5
- Add: Function typedef binding.

## 1.0.4

- Fix: Private super class can now be exported to child classes.
- Add: Ignore protected and deprecated nodes. 
- Breaking Changes: Adapt to the Hetu script changes.    

## 1.0.3

- Add: Class will bind super class's variables and methods.

## 1.0.2

- Fix: The name for the package is now correct parsed.
- Add: --version show client version.

## 1.0.1

- Added default templates for generating codes. Change template relative path from 'bin/template' to 'template'. If no templates are found inside the 'template' folder, then it will use the internal defined templates.

## 1.0.0

- Initial version.
