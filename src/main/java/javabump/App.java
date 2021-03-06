/*
  Copyright 2021 arkadius

  Licensed under the Apache License, Version 2.0 (the "License");
  you may not use this file except in compliance with the License.
  You may obtain a copy of the License at

      http://www.apache.org/licenses/LICENSE-2.0

  Unless required by applicable law or agreed to in writing, software
  distributed under the License is distributed on an "AS IS" BASIS,
  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
  See the License for the specific language governing permissions and
  limitations under the License.
 */
package javabump;

import java.nio.IntBuffer;
import java.util.stream.IntStream;

public class App {

    public static void main(String[] args) {
        IntBuffer intBuffer = (IntBuffer) IntBuffer.allocate(10)
                .put(111)
                .put(222)
                .put(333);

        intBuffer.flip();

        IntStream.range(0, 3).forEach((i) -> System.out.println("WORKING: " + intBuffer.get()));
    }

}
