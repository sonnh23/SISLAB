import chisel3._
import chisel3.iotesters.PeekPokeTester
import chisel3.iotesters.Driver
import org.scalatest._
import chisel3.util._
class FullAdder extends Module{
val io = IO(new Bundle() {
  val a = Input(UInt(8.W))
  val b = Input(UInt(8.W))
  val cIn = Input(UInt(8.W))
  val s = Output(UInt(8.W))
  val cOut = Output(UInt(8.W))
})
  io.s := io.a ^ io.b ^ io.cIn
  io.cOut :=  io.a & io.b + io.a & io.cIn + io.b & io.cIn
}
object FullAdder extends App {
  chisel3.Driver.execute(Array[String](), () => new FullAdder())
}
