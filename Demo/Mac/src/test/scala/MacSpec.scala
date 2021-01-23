import chisel3._
import chisel3.iotesters.PeekPokeTester
import chisel3.iotesters.Driver
import org.scalatest._
import chisel3.util._
class MacTester(dut: Mac) extends
PeekPokeTester(dut){
	poke(dut.io.a, 3)
        poke(dut.io.b, 2)
	step(3)
	poke(dut.io.a, 1)
        poke(dut.io.b, 2)
	step(1)
        poke(dut.io.a, 1)
        poke(dut.io.b, 1)
	step(1)
        poke(dut.io.a, 3)
        poke(dut.io.b, 4)
	step(3)
	poke(dut.io.a, 1)
        poke(dut.io.b, 0)
	step(1)
        poke(dut.io.a, 3)
        poke(dut.io.b, 1)
	step(1)
}
class MacSpec extends FlatSpec with Matchers{
	"WaveformCounter" should "pass" in {
		Driver.execute(Array("--generate-vcd-output", "on"), () =>
		new Mac()) { c =>
			new MacTester(c)
		} should be (true)
	}
}
