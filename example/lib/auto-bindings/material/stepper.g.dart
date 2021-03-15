import 'package:hetu_script/hetu_script.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class StepStateClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'indexed':
        return StepState.indexed;
      case 'editing':
        return StepState.editing;
      case 'complete':
        return StepState.complete;
      case 'disabled':
        return StepState.disabled;
      case 'error':
        return StepState.error;
      default:
        throw HTErr_Undefined(id);
    }
  }
}
class StepperTypeClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'vertical':
        return StepperType.vertical;
      case 'horizontal':
        return StepperType.horizontal;
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class StepClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'Step':
        return ({title, subtitle, content, state = StepState.indexed, isActive = false}) => StepObjectBinding(Step(title : title, subtitle : subtitle, content : content, state : state, isActive : isActive));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class StepObjectBinding extends HT_ExternObject<Step> {
  StepObjectBinding(Step value) : super(value);

  @override
  final typeid = HT_TypeId('Step');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'title':
        return externObject.title;
      case 'subtitle':
        return externObject.subtitle;
      case 'content':
        return externObject.content;
      case 'state':
        return externObject.state;
      case 'isActive':
        return externObject.isActive;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

class StepperClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'Stepper':
        return ({key, steps, physics, type = StepperType.vertical, currentStep = 0, onStepTapped, onStepContinue, onStepCancel, controlsBuilder}) => StepperObjectBinding(Stepper(key : key, steps : steps, physics : physics, type : type, currentStep : currentStep, onStepTapped : onStepTapped, onStepContinue : onStepContinue, onStepCancel : onStepCancel, controlsBuilder : controlsBuilder));
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class StepperObjectBinding extends HT_ExternObject<Stepper> {
  StepperObjectBinding(Stepper value) : super(value);

  @override
  final typeid = HT_TypeId('Stepper');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'steps':
        return externObject.steps;
      case 'physics':
        return externObject.physics;
      case 'type':
        return externObject.type;
      case 'currentStep':
        return externObject.currentStep;
      case 'onStepTapped':
        return externObject.onStepTapped;
      case 'onStepContinue':
        return externObject.onStepContinue;
      case 'onStepCancel':
        return externObject.onStepCancel;
      case 'controlsBuilder':
        return externObject.controlsBuilder;
      case 'createState':
        return externObject.createState;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

