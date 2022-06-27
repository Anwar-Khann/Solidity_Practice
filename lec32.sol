//SPDX-License-Identifier: GPL-3.0;

pragma solidity 0.8.7;

contract A{
    //2 tareqy hain parent k function ko child me call karny k 1)direct A.FUN2();
    //DOSRA TAREQA SUPER KEYWORD KA SUPER.FUN2() RIGHT TO LEFT JAI GA AUR JAHA PAR B FUN2 MILA
    //MAZEED AGY NHI JAI GA
    event log(string name,uint age);

    function Fun1() public virtual{
        emit log("anwar khan",22);
    }

    function Fun2() public virtual {
        emit log("javed",45);
    }
}

contract B is A{

      function Fun1() public virtual override{
        emit log("mujahid",52);
        A.Fun1();
    }

    function Fun2() public virtual override{
        emit log("ali",43);
        super.Fun2();
    }

}

contract C is  A{
      function Fun1() public virtual override{
        emit log("anwar khan",22);
    }

    function Fun2() public virtual override{
        emit log("Ajab khan",32);
    }

}

contract D is B,C{

       function Fun1() public  override(B,C){
        emit log("anwar khan",22);
        A.Fun2();//direwct way to call a parent function uin child
    }

    function Fun2() public override(B,C){
        emit log("javed",45);
        super.Fun2();
    }

}