// ignore_for_file: annotate_overrides, overridden_fields, no_leading_underscores_for_local_identifiers, must_be_immutable, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';

class AnimatedDropDownFormField extends StatefulWidget {
  final void Function(bool isOpened)? onChangeListState;
  final VoidCallback? onTapButton;
  final Widget defaultText;
  final DropDownAnimationParameters dropDownAnimationParameters;
  final AnimatedDropDownFormFieldController? controller;
  final BoxDecoration buttonDecoration;
  final BoxDecoration listBackgroundDecoration;
  // final Text text;
  final double listHeight;
  final List<Widget> items;
  final void Function(int index)? onChangeSelectedIndex;
  final Widget separator = const SizedBox(
    height: 5,
  );
  final TextStyle defaultTextStyle;
  final double distanceBetweenListAndButton;
  final Widget errorWidget;
  final TextStyle errorTextStyle;
  final BoxBorder errorBorder;
  final EdgeInsetsGeometry? buttonPadding;
  final EdgeInsetsGeometry listPadding;
  final Widget actionWidget;
  final ScrollPhysics? listScrollPhysics;
  final Widget selectedItemIcon;
  final Widget separatorWidget;
  const AnimatedDropDownFormField({
    super.key,
    //Required
    required this.items,
    // required this.defaultText,
    //General Attributes
    required this.defaultText,
    this.defaultTextStyle = const TextStyle(color: Colors.black, fontSize: 18),
    this.controller,
    this.distanceBetweenListAndButton = 5,

    //Button Attributes
    // this.defaultText = const Text(
    //   'defaultText',
    //   style: TextStyle(color: Colors.white, fontSize: 16),
    // ),
    this.actionWidget = const Icon(Icons.arrow_drop_down),
    this.buttonDecoration = const BoxDecoration(color: Colors.blueAccent),
    this.buttonPadding,
    this.onTapButton,

    //List Attributes
    this.listHeight = 150,
    this.listBackgroundDecoration = const BoxDecoration(color: Colors.grey),
    this.listPadding = EdgeInsets.zero,
    this.listScrollPhysics,
    this.separatorWidget = const SizedBox(
      height: 10,
    ),
    this.selectedItemIcon = const Icon(Icons.done_rounded),
    this.onChangeListState,
    this.onChangeSelectedIndex,
    this.dropDownAnimationParameters =
        const SizingDropDownAnimationParameters(),

    //Error Attributes
    this.errorWidget = const Text(
      "Not Valid Input",
      style: TextStyle(color: Colors.red, fontSize: 12),
    ),
    this.errorTextStyle = const TextStyle(color: Colors.red, fontSize: 12),
    this.errorBorder = const Border(
        bottom: BorderSide(width: 2, color: Colors.red),
        top: BorderSide(width: 2, color: Colors.red),
        left: BorderSide(width: 2, color: Colors.red),
        right: BorderSide(width: 2, color: Colors.red)),
    // required this.text,
  });

  @override
  State<AnimatedDropDownFormField> createState() =>
      _AnimatedDropDownFormFieldState();
}

class _WidgetWithKey extends StatelessWidget {
  const _WidgetWithKey({required super.key, required this.widget});
  final Widget widget;
  @override
  Widget build(BuildContext context) {
    return widget;
  }
}

class _Button extends StatefulWidget {
  const _Button({
    required this.widgetToDisplay,
    required this.buttonPadding,
    required this.rotationAnimation,
    required this.errorBorder,
    required this.actionWidget,
    required this.buttonDecoration,
    required this.buttonKey,
    required this.controller,
    required this.defaultTextStyle,
  });
  final TextStyle defaultTextStyle;
  final Widget widgetToDisplay;
  final GlobalKey buttonKey;
  final Animation<double> rotationAnimation;
  final AnimatedDropDownFormFieldController? controller;
  final BoxDecoration buttonDecoration;
  final Widget actionWidget;
  final BoxBorder errorBorder;
  final EdgeInsetsGeometry? buttonPadding;
  @override
  State<_Button> createState() => _ButtonState();
}

class _List extends StatefulWidget {
  const _List({
    required this.dropDownAnimationParameters,
    required this.selectedIndex,
    required this.buttonSize,
    required this.listScrollPhysics,
    required this.listPadding,
    required this.layerLink,
    required this.defaultTextStyle,
    required this.animationController,
    required this.onChangeSelectedIndex,
    required this.listBackgroundDecoration,
    required this.distanceBetweenListAndButton,
    required this.listHeight,
    required this.items,
    required this.selectedItemIcon,
    required this.separatorWidget,
  });
  final LayerLink layerLink;
  final DropDownAnimationParameters dropDownAnimationParameters;
  final int selectedIndex;
  final double listHeight;
  final Size buttonSize;
  final double distanceBetweenListAndButton;
  final List<Widget> items;
  final BoxDecoration listBackgroundDecoration;
  final void Function(int index) onChangeSelectedIndex;
  final AnimationController animationController;
  final TextStyle defaultTextStyle;
  final EdgeInsetsGeometry listPadding;
  final ScrollPhysics? listScrollPhysics;
  final Widget selectedItemIcon;
  final Widget separatorWidget;
  @override
  State<_List> createState() => _ListState();
}

class _AnimatedDropDownFormFieldState extends State<AnimatedDropDownFormField>
    with SingleTickerProviderStateMixin, AutomaticKeepAliveClientMixin {
  late final LayerLink _layerLink;
  late final AnimationController _animationController;
  late final GlobalKey _buttonKey;
  late final List<GlobalKey> _itemsKeys = [];
  late final List<Widget> _itemsWithKeys = [];
  RenderBox? _buttonRenderBox;
  bool _overlayIsVisible = false;
  int _selectedIndex = -1;
  OverlayEntry? _overlayEntry;

  @override
  bool get wantKeepAlive => true;

  @override
  void initState() {
    super.initState();
    _buttonKey = GlobalKey();
    _layerLink = LayerLink();
    _initializeKeysForItems();
    _initializeAnimationController();
    if (widget.controller != null) {
      _initializeControllerListener();
    }
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return Stack(
      clipBehavior: Clip.none,
      children: [
        _dropDownButton(),
        _errorWidget(),
      ],
    );
  }

  Widget _errorWidget() {
    if (widget.controller == null || widget.controller!._isValidInput) {
      return const SizedBox();
    }
    return Builder(
      builder: (context) {
        if (_buttonRenderBox == null) {
          _initializeRenderBox();
        }
        return PositionedDirectional(
          top: _buttonRenderBox!.size.height + 5,
          start: 10,
          child: DefaultTextStyle(
              style: widget.errorTextStyle, child: widget.errorWidget),
        );
      },
    );
  }

  Widget _dropDownButton() {
    return CompositedTransformTarget(
      link: _layerLink,
      child: InkWell(
        onTap: _onTapDropDownButton,
        child: _Button(
          widgetToDisplay: _selectedIndex == -1
              ? widget.defaultText
              : widget.items[_selectedIndex],
          defaultTextStyle: widget.defaultTextStyle,
          buttonPadding: widget.buttonPadding,
          actionWidget: widget.actionWidget,
          errorBorder: widget.errorBorder,
          rotationAnimation:
              Tween<double>(begin: 0, end: -0.5).animate(_animationController),
          buttonDecoration: widget.buttonDecoration,
          buttonKey: _buttonKey,
          controller: widget.controller,
        ),
      ),
    );
  }

  void _onTapDropDownButton() {
    if (_animationController.value == 0 || _animationController.value == 1) {
      if (widget.onTapButton != null) {
        widget.onTapButton!.call();
      }
      if (!_overlayIsVisible) {
        if (widget.controller != null) {
          widget.controller!._markAsValid();
        }
        _showList();
      } else {
        _removeList();
      }
    }
  }

  void _removeList() {
    if (widget.onChangeListState != null) {
      widget.onChangeListState!.call(false);
    }
    _overlayIsVisible = false;
    _animationController.reverse().then((value) {
      _overlayEntry!.remove();
    });
  }

  void _showList() {
    if (widget.onChangeListState != null) {
      widget.onChangeListState!.call(true);
    }
    _overlayIsVisible = true;
    _initializeRenderBox();
    _overlayEntry = _getOverlayEntry(_buttonRenderBox!.size);
    Overlay.of(context).insert(_overlayEntry!);
    _animationController.forward().then((value) async {
      await _scrollTillSelectedItem();
    });
  }

  Future<void> _scrollTillSelectedItem() async {
    if (_selectedIndex != -1) {
      final BuildContext context = _itemsKeys[_selectedIndex].currentContext!;
      await Scrollable.ensureVisible(context,
          alignment: 0.5, duration: const Duration(milliseconds: 200));
    }
  }

  OverlayEntry _getOverlayEntry(Size buttonSize) {
    return OverlayEntry(
      builder: (context) {
        return _List(
          layerLink: _layerLink,
          separatorWidget: widget.separatorWidget,
          selectedItemIcon: widget.selectedItemIcon,
          dropDownAnimationParameters: widget.dropDownAnimationParameters,
          selectedIndex: _selectedIndex,
          listScrollPhysics: widget.listScrollPhysics,
          listPadding: widget.listPadding,
          buttonSize: buttonSize,
          defaultTextStyle: widget.defaultTextStyle,
          animationController: _animationController,
          distanceBetweenListAndButton: widget.distanceBetweenListAndButton,
          listHeight: widget.listHeight,
          items: _itemsWithKeys,
          listBackgroundDecoration: widget.listBackgroundDecoration,
          onChangeSelectedIndex: _onChangeSelectedItemFromList,
        );
      },
    );
  }

  void _onChangeSelectedItemFromList(int index) {
    _selectedIndex = index;
    _removeList();
    setState(() {});
    if (widget.controller != null) {
      widget.controller!._changeSelectedIndex(index);
    }
    if (widget.onChangeSelectedIndex != null) {
      widget.onChangeSelectedIndex!.call(index);
    }
  }

  void _initializeKeysForItems() {
    for (var i = 0; i < widget.items.length; i++) {
      _itemsKeys.add(GlobalKey());
      _itemsWithKeys
          .add(_WidgetWithKey(key: _itemsKeys[i], widget: widget.items[i]));
    }
  }

  void _initializeAnimationController() {
    _animationController = AnimationController(
      vsync: this,
      duration: widget.dropDownAnimationParameters.duration,
      reverseDuration: widget.dropDownAnimationParameters.reversDuration,
    );
  }

  void _initializeControllerListener() {
    widget.controller!.addListener(() {
      if (widget.controller!._controlSignalType ==
          _ControlSignalType.openList) {
        if (!_overlayIsVisible) {
          _showList();
        }
      } else if (widget.controller!._controlSignalType ==
          _ControlSignalType.closeList) {
        if (_overlayIsVisible) {
          _removeList();
        }
      } else {
        if (_overlayIsVisible) {
          _removeList();
        }
        setState(() {});
      }
    });
  }

  void _initializeRenderBox() {
    RenderBox renderBox =
        _buttonKey.currentContext!.findRenderObject() as RenderBox;
    _buttonRenderBox = renderBox;
  }
}

class _ButtonState extends State<_Button> {
  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 200),
      key: widget.buttonKey,
      padding: widget.buttonPadding,
      decoration: _getButtonDecoration(),
      child: _buttonContent(),
    );
  }

  Widget _buttonContent() {
    return Stack(
      children: [
        Align(
          alignment: AlignmentDirectional.centerStart,
          child: DefaultTextStyle(
            style: widget.defaultTextStyle,
            child: widget.widgetToDisplay,
          ),
        ),
        Align(
          alignment: AlignmentDirectional.centerEnd,
          child: RotationTransition(
            turns: widget.rotationAnimation,
            child: widget.actionWidget,
          ),
        ),
      ],
    );
  }

  BoxDecoration _getButtonDecoration() {
    if (widget.controller == null || widget.controller!._isValidInput) {
      return widget.buttonDecoration;
    }
    return widget.buttonDecoration.copyWith(border: widget.errorBorder);
  }
}

class _ListState extends State<_List> {
  late int _selectedIndex;

  @override
  void initState() {
    super.initState();
    _selectedIndex = widget.selectedIndex;
  }

  void _onTapItem(int index) {
    if (widget.animationController.value == 0 ||
        widget.animationController.value == 1) {
      _selectedIndex = index;
      setState(() {});
      widget.onChangeSelectedIndex.call(index);
    }
  }

  @override
  Widget build(BuildContext context) {
    return PositionedDirectional(
      width: widget.buttonSize.width,
      child: CompositedTransformFollower(
        link: widget.layerLink,
        showWhenUnlinked: false,
        offset: Offset(
            0, widget.buttonSize.height + widget.distanceBetweenListAndButton),
        child: Center(
          child: _animationWrapper(),
        ),
      ),
    );
  }

  Widget _animationWrapper() {
    final Animation<double> _animation =
        Tween<double>(begin: 0, end: 1).animate(_getCurvedAnimation());
    if (widget.dropDownAnimationParameters.isScalingAnimation) {
      return ScaleTransition(
        alignment: widget.dropDownAnimationParameters.centerOfScaling,
        scale: _animation,
        child: _listDesign(false),
      );
    }
    return Container(
      decoration: widget.listBackgroundDecoration,
      child: SizedBox(
        child: SizeTransition(
          axis: widget.dropDownAnimationParameters.axis,
          sizeFactor: _animation,
          child: _listDesign(true),
        ),
      ),
    );
  }

  Container _listDesign(bool decorationAlreadyGiven) {
    return Container(
      height: widget.listHeight,
      width: widget.buttonSize.width,
      clipBehavior: Clip.antiAliasWithSaveLayer,
      decoration: decorationAlreadyGiven
          ? const BoxDecoration()
          : widget.listBackgroundDecoration,
      child: Material(
        color: Colors.transparent,
        child: _listBuilder(),
      ),
    );
  }

  Widget _listBuilder() {
    return DefaultTextStyle(
      style: widget.defaultTextStyle,
      child: SingleChildScrollView(
        physics: widget.listScrollPhysics,
        padding: widget.listPadding,
        child: Column(
          children: [
            for (int index = 0; index < 2 * widget.items.length - 1; index++)
              index % 2 == 0 ? _itemBuilder(index ~/ 2) : widget.separatorWidget
          ],
        ),
      ),
    );
  }

  Widget _itemBuilder(int index) {
    return InkWell(
      onTap: () => _onTapItem(index),
      child: Stack(
        children: [
          Align(
            alignment: AlignmentDirectional.centerStart,
            child: widget.items[index],
          ),
          if (index == _selectedIndex)
            Align(
              alignment: AlignmentDirectional.centerEnd,
              child: widget.selectedItemIcon,
            ),
        ],
      ),
    );
  }

  CurvedAnimation _getCurvedAnimation() {
    return CurvedAnimation(
      parent: widget.animationController,
      curve: widget.dropDownAnimationParameters.curve,
      reverseCurve: widget.dropDownAnimationParameters.reverseCurve,
    );
  }
}

class AnimatedDropDownFormFieldController extends ChangeNotifier {
  int _selectedIndex = -1;
  bool _isValidInput = true;
  _ControlSignalType _controlSignalType = _ControlSignalType.validateInput;

  bool validate() {
    if (_selectedIndex == -1) {
      _isValidInput = false;
      _controlSignalType = _ControlSignalType.validateInput;
      notifyListeners();
      return false;
    }
    return true;
  }

  void _markAsValid() {
    _isValidInput = true;
    _controlSignalType = _ControlSignalType.validateInput;
    notifyListeners();
  }

  void _changeSelectedIndex(int index) {
    _selectedIndex = index;
  }

  void closeList() {
    _controlSignalType = _ControlSignalType.closeList;
    notifyListeners();
  }

  void openList() {
    _controlSignalType = _ControlSignalType.openList;
    notifyListeners();
  }
}

enum _ControlSignalType {
  closeList,
  openList,
  validateInput,
}

abstract class DropDownAnimationParameters {
  final Duration duration;
  final Duration reversDuration;
  final Curve curve;
  final Curve reverseCurve;
  final bool isScalingAnimation;
  final Alignment centerOfScaling;
  final Axis axis;
  const DropDownAnimationParameters({
    required this.duration,
    required this.reversDuration,
    required this.curve,
    required this.reverseCurve,
    required this.isScalingAnimation,
    this.axis = Axis.vertical,
    this.centerOfScaling = Alignment.topCenter,
  });
}

class ScalingDropDownAnimationParameters extends DropDownAnimationParameters {
  final Alignment centerOfScaling;
  final Duration duration;
  final Duration reversDuration;
  final Curve curve;
  final Curve reverseCurve;
  const ScalingDropDownAnimationParameters({
    this.centerOfScaling = Alignment.topCenter,
    this.duration = const Duration(milliseconds: 200),
    this.reversDuration = const Duration(milliseconds: 200),
    this.curve = Curves.linear,
    this.reverseCurve = Curves.linear,
  }) : super(
          centerOfScaling: centerOfScaling,
          isScalingAnimation: true,
          duration: duration,
          reversDuration: reversDuration,
          curve: curve,
          reverseCurve: reverseCurve,
        );
}

class SizingDropDownAnimationParameters extends DropDownAnimationParameters {
  final Axis axis;
  final Duration duration;
  final Duration reversDuration;
  final Curve curve;
  final Curve reverseCurve;
  const SizingDropDownAnimationParameters({
    this.axis = Axis.vertical,
    this.duration = const Duration(milliseconds: 200),
    this.reversDuration = const Duration(milliseconds: 200),
    this.curve = Curves.linear,
    this.reverseCurve = Curves.linear,
  }) : super(
          axis: axis,
          isScalingAnimation: false,
          duration: duration,
          reversDuration: reversDuration,
          curve: curve,
          reverseCurve: reverseCurve,
        );
}
