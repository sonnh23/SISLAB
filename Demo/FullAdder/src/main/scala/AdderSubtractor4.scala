import chisel3._
import chisel3.iotesters.PeekPokeTester
import chisel3.iotesters.Driver
import org.scalatest._
import chisel3.util._
class AdderSubtractor4 extends Module {
  val io = IO(new Bundle() {
    val a = Input(UInt(4.W))
    val b = Input(UInt(4.W))
    val cIn = Input(UInt(1.W))
    val fn = Input(UInt(1.W))
    val s = Output(UInt(4.W))
    val cOut = Output(UInt(1.W))
  })
  val FA0 = Module(new FullAdder())
  val FA1 = Module(new FullAdder())
  val FA2 = Module(new FullAdder())
  val FA3 = Module(new FullAdder())
  //connect components
  //connect FA0
  FA0.io.cIn := io. fn
  FA0.io.a := io.a(0)
  FA0.io.b := io.b(0) ^ io.fn
  //connect FA1
  FA1.io.cIn := FA0.io.cOut
  FA1.io.a := io.a(1)
  FA1.io.b := io.b(1) ^ io.fn
  //connect FA2
  FA2.io.cIn :=FA1.io.cOut
  FA2.io.a := io.a(2)
  FA2.io.b := io.b(2) ^ io.fn
  //connect FA3
  FA3.io.cIn := FA2.io.cOut
  FA3.io.a := io.a(3)
  FA3.io.b := io.b(3) ^ io.fn
  io.cOut := FA3.io.cOut
  val output = Cat(FA3.io.s,FA2.io.s,FA1.io.s,FA0.io.s)
  io.s := output
}
object AdderSubtractor4 extends App {
  chisel3.Driver.execute(Array[String](), () => new AdderSubtractor4())
}
