import chisel3._
import chisel3.iotesters.PeekPokeTester
import chisel3.iotesters.Driver
import org.scalatest._
import chisel3.util._
class matrix extends Module{
  val io = IO(new Bundle{
    val matA = Input(Vec(9, UInt(8.W)))
    val matB = Input(Vec(9, UInt(8.W)))
    val matC = Ouput(Vec(9, UInt(16.W)))
  })
  var sum = 0
  for(i<-0 until 3){
    for(j<-0 until 3){
      sum = 0.UInt(16.W)
      for(k<-0 until 3){
        sum+=io.matA(i*3+k)*io.matB(k*3 +j)
      }
      io.matC(i*2+j) = sum
    }
  }
}
object matrix extends App {
  chisel3.Driver.execute(Array[String](), () => new matrix())
}
