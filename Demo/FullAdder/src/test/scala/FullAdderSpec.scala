import chisel3._
import chisel3.iotesters.PeekPokeTester
import chisel3.iotesters.Driver
import org.scalatest._
import chisel3.util._
class FullAdderTester(dut: FullAdder) extends
  PeekPokeTester(dut){
  poke(dut.io.a, 32)
  poke(dut.io.b, 11)
  poke(dut.io.cIn, 1)
  step(10)
  poke(dut.io.a, 54)
  poke(dut.io.b, 12)
  poke(dut.io.cIn, 3)
  step(3)
  poke(dut.io.a, 54)
  poke(dut.io.b, 12)
  poke(dut.io.cIn, 0)
  step(2)
  poke(dut.io.a, 14)
  poke(dut.io.b, 7)
  poke(dut.io.cIn, 2)
  step(6)
}
class FullAdderSpec extends FlatSpec with Matchers{
  "WaveformCounter" should "pass" in {
    Driver.execute(Array("--generate-vcd-output", "on"), () =>
      new FullAdder()) { c =>
      new FullAdderTester(c)
    } should be (true)
  }
}
