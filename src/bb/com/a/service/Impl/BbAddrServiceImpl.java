package bb.com.a.service.Impl;

import java.util.List;

import org.springframework.stereotype.Service;
import org.springframework.ui.Model;
import bb.com.a.model.Bb_AddrDto;
import bb.com.a.model.Bb_MemberDto;

@Service
public interface BbAddrServiceImpl {
	public List<Bb_AddrDto> allAddress(Bb_MemberDto login) throws Exception;
	public boolean addrAdd(Model model, Bb_AddrDto dto) throws Exception;
	public boolean addrDelete(Model model, Bb_AddrDto addr) throws Exception;
	public boolean addrUpdate(Model model, Bb_AddrDto addr) throws Exception;
	
}