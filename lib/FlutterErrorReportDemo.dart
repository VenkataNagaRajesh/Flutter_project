import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main()
{
  try{
    throw ("this is an error");
  }
  catch(error)
  {
    FlutterError.reportError(
      FlutterErrorDetails(
        exception: error,
        library:'CUSTOM MESSAGE 1',
        context: ErrorSummary('Custom Message 2')
      )
    );
  }
}