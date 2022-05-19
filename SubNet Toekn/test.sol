function transfer(address _to, uint256 _value) public virtual override return (bool success){
    uint256 toBurn = (_value * 1)/100;
    if(super.transfer(_to, _value-toBurn)){
        _burn (msg.sender,toBurn);
        return true;
    }else return false;

}