package bb.com.a.service;

import java.util.List;

import org.springframework.stereotype.Service;

import bb.com.a.model.Bb_AddrDto;

@Service
public interface BbAddrService {
	public List<Bb_AddrDto> allAddress() throws Exception;
}
