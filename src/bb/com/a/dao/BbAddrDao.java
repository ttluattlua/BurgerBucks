package bb.com.a.dao;

import java.util.List;

import bb.com.a.model.Bb_AddrDto;

public interface BbAddrDao {
	public List<Bb_AddrDto> allAddress() throws Exception;
}
