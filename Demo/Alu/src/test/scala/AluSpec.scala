import chisel3._
import chisel3.iotesters.PeekPokeTester
import chisel3.iotesters.Driver
import org.scalatest._
import chisel3.util._
class AluTester(dut: Alu) extends
PeekPokeTester(dut){
	poke(dut.io.a, 32)
	poke(dut.io.b, 11)
	poke(dut.io.fn, 1)
	step(10)
	poke(dut.io.a, 54)
	poke(dut.io.b, 12)
	poke(dut.io.fn, 3)
	step(3)
	poke(dut.io.a, 54)
	poke(dut.io.b, 12)
	poke(dut.io.fn, 0)
	step(2)
	poke(dut.io.a, 14)
	poke(dut.io.b, 7)
	poke(dut.io.fn, 2)
	step(6)
}
class AluSpec extends FlatSpec with Matchers{
	"WaveformCounter" should "pass" in {
		Driver.execute(Array("--generate-vcd-output", "on"), () =>
		new Alu()) { c =>
			new AluTester(c)
		} should be (true)
	}
}
