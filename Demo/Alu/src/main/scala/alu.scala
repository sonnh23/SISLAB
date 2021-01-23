import chisel3._
import chisel3.iotesters.PeekPokeTester
import chisel3.iotesters.Driver
import org.scalatest._
import chisel3.util._
class Alu extends Module{
    val io = IO(new Bundle{
      val a = Input(UInt(8.W))
      val b =Input(UInt(8.W))
      val fn = Input(UInt(2.W))
      val y = Output(UInt(16.W))
    })
    io.y:=0.U
    switch(io.fn){
      is(0.U) {io.y := io.a + io.b}
      is(1.U) {io.y := io.a - io.b}
      is(2.U) {io.y := io.a / io.b}
      is(3.U) {io.y := io.a * io.b}
    }
}
object Alu extends App {
  chisel3.Driver.execute(Array[String](), () => new Alu())
}