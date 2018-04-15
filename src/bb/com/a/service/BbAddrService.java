package bb.com.a.service;

import java.util.List;

import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import bb.com.a.model.Bb_AddrDto;

@Service
public interface BbAddrService {
	public List<Bb_AddrDto> allAddress() throws Exception;
	public boolean addrAdd(Model model, Bb_AddrDto dto) throws Exception;
	public boolean addrUpdate(Model model, Bb_AddrDto addr) throws Exception;
}
