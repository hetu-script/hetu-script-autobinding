import 'package:hetu_script/hetu_script.dart';
import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';


class DefaultMaterialLocalizationsClassBinding extends HT_ExternNamespace {
  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'DefaultMaterialLocalizations':
        return () => DefaultMaterialLocalizationsObjectBinding(DefaultMaterialLocalizations());
      case 'load':
        return (locale) => DefaultMaterialLocalizations.load(locale);
      case 'DefaultMaterialLocalizations.delegate':
        return DefaultMaterialLocalizations.delegate;
      default:
        throw HTErr_Undefined(id);
    }
  }
}

class DefaultMaterialLocalizationsObjectBinding extends HT_ExternObject<DefaultMaterialLocalizations> {
  DefaultMaterialLocalizationsObjectBinding(DefaultMaterialLocalizations value) : super(value);

  @override
  final typeid = HT_TypeId('DefaultMaterialLocalizations');

  @override
  dynamic fetch(String id) {
    switch (id) {
      case 'narrowWeekdays':
        return externObject.narrowWeekdays;
      case 'firstDayOfWeekIndex':
        return externObject.firstDayOfWeekIndex;
      case 'dateSeparator':
        return externObject.dateSeparator;
      case 'dateHelpText':
        return externObject.dateHelpText;
      case 'selectYearSemanticsLabel':
        return externObject.selectYearSemanticsLabel;
      case 'unspecifiedDate':
        return externObject.unspecifiedDate;
      case 'unspecifiedDateRange':
        return externObject.unspecifiedDateRange;
      case 'dateInputLabel':
        return externObject.dateInputLabel;
      case 'dateRangeStartLabel':
        return externObject.dateRangeStartLabel;
      case 'dateRangeEndLabel':
        return externObject.dateRangeEndLabel;
      case 'invalidDateFormatLabel':
        return externObject.invalidDateFormatLabel;
      case 'invalidDateRangeLabel':
        return externObject.invalidDateRangeLabel;
      case 'dateOutOfRangeLabel':
        return externObject.dateOutOfRangeLabel;
      case 'saveButtonLabel':
        return externObject.saveButtonLabel;
      case 'datePickerHelpText':
        return externObject.datePickerHelpText;
      case 'dateRangePickerHelpText':
        return externObject.dateRangePickerHelpText;
      case 'calendarModeButtonLabel':
        return externObject.calendarModeButtonLabel;
      case 'inputDateModeButtonLabel':
        return externObject.inputDateModeButtonLabel;
      case 'timePickerDialHelpText':
        return externObject.timePickerDialHelpText;
      case 'timePickerInputHelpText':
        return externObject.timePickerInputHelpText;
      case 'timePickerHourLabel':
        return externObject.timePickerHourLabel;
      case 'timePickerMinuteLabel':
        return externObject.timePickerMinuteLabel;
      case 'invalidTimeLabel':
        return externObject.invalidTimeLabel;
      case 'dialModeButtonLabel':
        return externObject.dialModeButtonLabel;
      case 'inputTimeModeButtonLabel':
        return externObject.inputTimeModeButtonLabel;
      case 'openAppDrawerTooltip':
        return externObject.openAppDrawerTooltip;
      case 'backButtonTooltip':
        return externObject.backButtonTooltip;
      case 'closeButtonTooltip':
        return externObject.closeButtonTooltip;
      case 'deleteButtonTooltip':
        return externObject.deleteButtonTooltip;
      case 'moreButtonTooltip':
        return externObject.moreButtonTooltip;
      case 'nextMonthTooltip':
        return externObject.nextMonthTooltip;
      case 'previousMonthTooltip':
        return externObject.previousMonthTooltip;
      case 'nextPageTooltip':
        return externObject.nextPageTooltip;
      case 'previousPageTooltip':
        return externObject.previousPageTooltip;
      case 'showMenuTooltip':
        return externObject.showMenuTooltip;
      case 'drawerLabel':
        return externObject.drawerLabel;
      case 'popupMenuLabel':
        return externObject.popupMenuLabel;
      case 'dialogLabel':
        return externObject.dialogLabel;
      case 'alertDialogLabel':
        return externObject.alertDialogLabel;
      case 'searchFieldLabel':
        return externObject.searchFieldLabel;
      case 'licensesPageTitle':
        return externObject.licensesPageTitle;
      case 'rowsPerPageTitle':
        return externObject.rowsPerPageTitle;
      case 'cancelButtonLabel':
        return externObject.cancelButtonLabel;
      case 'closeButtonLabel':
        return externObject.closeButtonLabel;
      case 'continueButtonLabel':
        return externObject.continueButtonLabel;
      case 'copyButtonLabel':
        return externObject.copyButtonLabel;
      case 'cutButtonLabel':
        return externObject.cutButtonLabel;
      case 'okButtonLabel':
        return externObject.okButtonLabel;
      case 'pasteButtonLabel':
        return externObject.pasteButtonLabel;
      case 'selectAllButtonLabel':
        return externObject.selectAllButtonLabel;
      case 'viewLicensesButtonLabel':
        return externObject.viewLicensesButtonLabel;
      case 'anteMeridiemAbbreviation':
        return externObject.anteMeridiemAbbreviation;
      case 'postMeridiemAbbreviation':
        return externObject.postMeridiemAbbreviation;
      case 'timePickerHourModeAnnouncement':
        return externObject.timePickerHourModeAnnouncement;
      case 'timePickerMinuteModeAnnouncement':
        return externObject.timePickerMinuteModeAnnouncement;
      case 'modalBarrierDismissLabel':
        return externObject.modalBarrierDismissLabel;
      case 'scriptCategory':
        return externObject.scriptCategory;
      case 'signedInLabel':
        return externObject.signedInLabel;
      case 'hideAccountsLabel':
        return externObject.hideAccountsLabel;
      case 'showAccountsLabel':
        return externObject.showAccountsLabel;
      case 'reorderItemUp':
        return externObject.reorderItemUp;
      case 'reorderItemDown':
        return externObject.reorderItemDown;
      case 'reorderItemLeft':
        return externObject.reorderItemLeft;
      case 'reorderItemRight':
        return externObject.reorderItemRight;
      case 'reorderItemToEnd':
        return externObject.reorderItemToEnd;
      case 'reorderItemToStart':
        return externObject.reorderItemToStart;
      case 'expandedIconTapHint':
        return externObject.expandedIconTapHint;
      case 'collapsedIconTapHint':
        return externObject.collapsedIconTapHint;
      case 'refreshIndicatorSemanticLabel':
        return externObject.refreshIndicatorSemanticLabel;
      case 'formatHour':
        return externObject.formatHour;
      case 'formatMinute':
        return externObject.formatMinute;
      case 'formatYear':
        return externObject.formatYear;
      case 'formatCompactDate':
        return externObject.formatCompactDate;
      case 'formatShortDate':
        return externObject.formatShortDate;
      case 'formatMediumDate':
        return externObject.formatMediumDate;
      case 'formatFullDate':
        return externObject.formatFullDate;
      case 'formatMonthYear':
        return externObject.formatMonthYear;
      case 'formatShortMonthDay':
        return externObject.formatShortMonthDay;
      case 'parseCompactDate':
        return externObject.parseCompactDate;
      case 'dateRangeStartDateSemanticLabel':
        return externObject.dateRangeStartDateSemanticLabel;
      case 'dateRangeEndDateSemanticLabel':
        return externObject.dateRangeEndDateSemanticLabel;
      case 'formatDecimal':
        return externObject.formatDecimal;
      case 'formatTimeOfDay':
        return externObject.formatTimeOfDay;
      case 'aboutListTileTitle':
        return externObject.aboutListTileTitle;
      case 'licensesPackageDetailText':
        return externObject.licensesPackageDetailText;
      case 'pageRowsInfoTitle':
        return externObject.pageRowsInfoTitle;
      case 'tabLabel':
        return externObject.tabLabel;
      case 'selectedRowCountTitle':
        return externObject.selectedRowCountTitle;
      case 'timeOfDayFormat':
        return externObject.timeOfDayFormat;
      case 'remainingTextFieldCharacterCount':
        return externObject.remainingTextFieldCharacterCount;
      default:
        throw HTErr_Undefined(id);
    }
  }

}

