// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'chat_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ChatEvent {


  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is ChatEvent);
  }


  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'ChatEvent()';
  }


}

/// @nodoc
class $ChatEventCopyWith<$Res> {
  $ChatEventCopyWith(ChatEvent _, $Res Function(ChatEvent) __);
}


/// Adds pattern-matching-related methods to [ChatEvent].
extension ChatEventPatterns on ChatEvent {
  /// A variant of `map` that fallback to returning `orElse`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs TResult maybeMap

  <

  TResult

  extends

  Object?

  >

  (

  {

  TResult

  Function

  (

  Init

  value

  )

  ?

  init

  ,

  TResult

  Function

  (

  SendMessage

  value

  )

  ?

  sendMessage

  ,

  TResult

  Function

  (

  UpdateMessage

  value

  )

  ?

  updateMessage

  ,

  required

  TResult

  orElse

  (

  )

  ,
}){
final _that = this;
switch (_that) {
case Init() when init != null:
return init(_that);case SendMessage() when sendMessage != null:
return sendMessage(_that);case UpdateMessage() when updateMessage != null:
return updateMessage(_that);case _:
return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs
TResult map<TResult extends Object?>(
    {required TResult Function( Init value) init, required TResult Function( SendMessage value) sendMessage, required TResult Function( UpdateMessage value) updateMessage,}) {
  final _that = this;
  switch (_that) {
    case Init():
      return init(_that);
    case SendMessage():
      return sendMessage(_that);
    case UpdateMessage():
      return updateMessage(_that);
    case _:
      throw StateError('Unexpected subclass');
  }
}

/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs
TResult? mapOrNull<TResult extends Object?>(
    {TResult? Function( Init value)? init, TResult? Function( SendMessage value)? sendMessage, TResult? Function( UpdateMessage value)? updateMessage,}) {
  final _that = this;
  switch (_that) {
    case Init() when init != null:
      return init(_that);
    case SendMessage() when sendMessage != null:
      return sendMessage(_that);
    case UpdateMessage() when updateMessage != null:
      return updateMessage(_that);
    case _:
      return null;
  }
}

/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen
<
TResult extends Object?>(
{
TResult
Function
(
)
?
init
,
TResult
Function
(
String
?
text
,
String
?
clientId
)
?
sendMessage
,
TResult
Function
(
Message
message
)
?
updateMessage
,
required
TResult
orElse(),}) {final _that = this;
switch (_that) {
case Init() when init != null:
return init();case SendMessage() when sendMessage != null:
return sendMessage(_that.text,_that.clientId);case UpdateMessage() when updateMessage != null:
return updateMessage(_that.message);case _:
return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function() init,required TResult Function( String? text, String? clientId) sendMessage,required TResult Function( Message message) updateMessage,}) {final _that = this;
switch (_that) {
case Init():
return init();case SendMessage():
return sendMessage(_that.text,_that.clientId);case UpdateMessage():
return updateMessage(_that.message);case _:
throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()? init,TResult? Function( String? text, String? clientId)? sendMessage,TResult? Function( Message message)? updateMessage,}) {final _that = this;
switch (_that) {
case Init() when init != null:
return init();case SendMessage() when sendMessage != null:
return sendMessage(_that.text,_that.clientId);case UpdateMessage() when updateMessage != null:
return updateMessage(_that.message);case _:
return null;

}
}

}

/// @nodoc


class Init implements ChatEvent {
const Init();


@override
bool operator ==(Object other) {
return identical(this, other) || (other.runtimeType == runtimeType&&other is Init);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
return 'ChatEvent.init()';
}


}


/// @nodoc


class SendMessage implements ChatEvent {
const SendMessage({this.text, this.clientId});


final String? text;
final String? clientId;

/// Create a copy of ChatEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SendMessageCopyWith<SendMessage> get copyWith => _$SendMessageCopyWithImpl<SendMessage>(this, _$identity);


@override
bool operator ==(Object other) {
return identical(this, other) || (other.runtimeType == runtimeType&&other is SendMessage&&(identical(other.text, text) || other.text == text)&&(identical(other.clientId, clientId) || other.clientId == clientId));
}


@override
int get hashCode => Object.hash(runtimeType,text,clientId);

@override
String toString() {
return 'ChatEvent.sendMessage(text: $text, clientId: $clientId)';
}


}

/// @nodoc
abstract mixin class $SendMessageCopyWith<$Res> implements $ChatEventCopyWith<$Res> {
factory $SendMessageCopyWith(SendMessage value, $Res Function(SendMessage) _then) = _$SendMessageCopyWithImpl;
@useResult
$Res call({
String? text, String? clientId
});


}
/// @nodoc
class _$SendMessageCopyWithImpl<$Res>
implements $SendMessageCopyWith<$Res> {
_$SendMessageCopyWithImpl(this._self, this._then);

final SendMessage _self;
final $Res Function(SendMessage) _then;

/// Create a copy of ChatEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? text = freezed,Object? clientId = freezed,}) {
return _then(SendMessage(
text: freezed == text ? _self.text : text // ignore: cast_nullable_to_non_nullable
as String?,clientId: freezed == clientId ? _self.clientId : clientId // ignore: cast_nullable_to_non_nullable
as String?,
));
}


}

/// @nodoc


class UpdateMessage implements ChatEvent {
const UpdateMessage({required this.message});


final Message message;

/// Create a copy of ChatEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UpdateMessageCopyWith<UpdateMessage> get copyWith => _$UpdateMessageCopyWithImpl<UpdateMessage>(this, _$identity);


@override
bool operator ==(Object other) {
return identical(this, other) || (other.runtimeType == runtimeType&&other is UpdateMessage&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
return 'ChatEvent.updateMessage(message: $message)';
}


}

/// @nodoc
abstract mixin class $UpdateMessageCopyWith<$Res> implements $ChatEventCopyWith<$Res> {
factory $UpdateMessageCopyWith(UpdateMessage value, $Res Function(UpdateMessage) _then) = _$UpdateMessageCopyWithImpl;
@useResult
$Res call({
Message message
});


$MessageCopyWith<$Res> get message;

}
/// @nodoc
class _$UpdateMessageCopyWithImpl<$Res>
implements $UpdateMessageCopyWith<$Res> {
_$UpdateMessageCopyWithImpl(this._self, this._then);

final UpdateMessage _self;
final $Res Function(UpdateMessage) _then;

/// Create a copy of ChatEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
return _then(UpdateMessage(
message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as Message,
));
}

/// Create a copy of ChatEvent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MessageCopyWith<$Res> get message {

return $MessageCopyWith<$Res>(_self.message, (value) {
return _then(_self.copyWith(message: value));
});
}
}

// dart format on
