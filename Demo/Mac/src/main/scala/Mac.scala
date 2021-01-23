import chisel3._
import chisel3.iotesters.PeekPokeTester
import chisel3.iotesters.Driver
import org.scalatest._
import chisel3.util._
class Mac extends Module{
  val io = IO(new Bundle{
    val a = Input(UInt(8.W))
    val b = Input(UInt(8.W))
    val data_out = Output(UInt(16.W))
  })
  val reg = RegInit(0.U(16.W))
  //mulReg := io.a * io.b;
  reg := reg + io.a * io.b
  io.data_out := reg
}
object Mac extends App {
  chisel3.Driver.execute(Array[String](), () => new Mac())
}
