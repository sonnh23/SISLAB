import chisel3._
import chisel3.iotesters.PeekPokeTester
import chisel3.iotesters.Driver
import org.scalatest._
import chisel3.util._
class FullAdder extends Module{
  val io = IO(new Bundle() {
    val a = Input(Bits(1.W))
    val b = Input(Bits(1.W))
    val cIn = Input(Bits(1.W))
    val s = Output(Bits(1.W))
    val cOut = Output(Bits(1.W))
  })
    io.s := (io.a ^ io.b) ^ io.cIn
    io.cOut := (io.a & io.b) + (io.a & io.cIn) + (io.b & io.cIn)
}
object FullAdder extends App {
  chisel3.Driver.execute(Array[String](), () => new FullAdder())
}
