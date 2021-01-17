import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:find_seat/model/entity/ticket.dart';
import 'package:find_seat/model/repo/repo.dart';

import 'bloc.dart';

class PaymentMethodPickerBloc
    extends Bloc<PaymentMethodPickerEvent, PaymentMethodPickerState> {
  TicketRepo ticketRepo;

  PaymentMethodPickerBloc(this.ticketRepo) : super();

  @override
  PaymentMethodPickerState get initialState => PaymentMethodPickerState();

  @override
  Stream<PaymentMethodPickerState> mapEventToState(
    PaymentMethodPickerEvent event,
  ) async* {
    if (event is OnPaymentSuccessEvent) {
      final ticket = Ticket(
        null,
        event.showName,
        event.timeSlot.time,
        DateTime.now().millisecondsSinceEpoch,
        event.cineName,
        event.seatIds.join(";"),
      );
      await ticketRepo.createTicket(ticket);

//      yield state.copyWith(isComplete: true);
    }
  }
}
