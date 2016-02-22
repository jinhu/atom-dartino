// Copyright (c) 2014-2015, Nicolas François
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
// http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

library serial_port.cli;

import 'dart:io';

import '../serial_port/serial_port.dart';

/// List serial port
list() async {
  List<String> results = await SerialPort.availablePortNames;
  if(results.isEmpty){
    stdout.writeln("No serial port available found.");
  } else {
    results.forEach(stdout.writeln);
  }
}