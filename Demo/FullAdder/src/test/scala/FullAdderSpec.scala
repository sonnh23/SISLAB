import chisel3._
import chisel3.iotesters.PeekPokeTester
import chisel3.iotesters.Driver
import org.scalatest._
import chisel3.util._
class FullAdderTester(dut: FullAdder) extends PeekPokeTester(dut){
	poke(dut.io.a, 0)
	poke(dut.io.b, 0)
	poke(dut.io.cIn, 0)
	step(4)
	poke(dut.io.a, 0)
	poke(dut.io.b, 0)
	poke(dut.io.cIn, 1)
	step(1)
	poke(dut.io.a, 0)
	poke(dut.io.b, 1)
	poke(dut.io.cIn, 0)
	step(1)
	poke(dut.io.a, 0)
	poke(dut.io.b, 1)
	poke(dut.io.cIn, 1)
	step(1)
	poke(dut.io.a, 1)
	poke(dut.io.b, 0)
	poke(dut.io.cIn, 0)
	step(1)
	poke(dut.io.a, 1)
	poke(dut.io.b, 0)
	poke(dut.io.cIn, 1)
	step(1)
	poke(dut.io.a, 1)
	poke(dut.io.b, 1)
	poke(dut.io.cIn, 0)
	step(1)
	poke(dut.io.a, 1)
	poke(dut.io.b, 1)
	poke(dut.io.cIn, 1)
}
class FullAdderSpec extends FlatSpec with Matchers{
	"WaveformCounter" should "pass" in {
		Driver.execute(Array("--generate-vcd-output", "on"), () =>
			new FullAdder()) { c =>
			new FullAdderTester(c)
		} should be (true)
	}
}
