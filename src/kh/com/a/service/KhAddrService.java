package kh.com.a.service;

import org.springframework.stereotype.Service;

import kh.com.a.model.Bb_AddrDto;

@Service
public interface KhAddrService {
	public Bb_AddrDto allAddress() throws Exception;
}
