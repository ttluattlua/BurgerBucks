package bb.com.a.dao;

import java.util.List;

import org.springframework.ui.Model;

import bb.com.a.model.Bb_AddrDto;
import bb.com.a.model.Bb_MemberDto;

public interface BbAddrDao {
	public List<Bb_AddrDto> allAddress(Bb_MemberDto login) throws Exception;
	public boolean addrAdd(Model model, Bb_AddrDto dto) throws Exception;
}
