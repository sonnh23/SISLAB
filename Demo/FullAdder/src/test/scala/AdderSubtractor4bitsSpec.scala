import chisel3._
import chisel3.iotesters.PeekPokeTester
import chisel3.iotesters.Driver
import org.scalatest._
import chisel3.util._
class AdderSubtractor4Tester(dut: AdderSubtractor4) extends PeekPokeTester(dut){
  poke(dut.io.a, 3)
  poke(dut.io.b, 6)
  poke(dut.io.cIn, 0)
  poke(dut.io.fn, 0)
  step(4)
  poke(dut.io.a, 9)
  poke(dut.io.b, 9)
  poke(dut.io.cIn, 0)
  poke(dut.io.fn, 1)
  step(1)
  poke(dut.io.a, 15)
  poke(dut.io.b, 9)
  poke(dut.io.cIn, 0)
  poke(dut.io.fn, 1)
  step(1)
  poke(dut.io.a, 12)
  poke(dut.io.b, 8)
  poke(dut.io.cIn, 0)
  poke(dut.io.fn, 0)
}
class AdderSubtractor4Spec extends FlatSpec with Matchers {
  "WaveformCounter" should "pass" in {
    Driver.execute(Array("--generate-vcd-output", "on"), () =>
      new AdderSubtractor4()) { c =>
      new AdderSubtractor4Tester(c)
    } should be (true)
  }
}
