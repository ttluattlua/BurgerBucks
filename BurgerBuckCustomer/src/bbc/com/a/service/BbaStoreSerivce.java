package bbc.com.a.service;

import java.util.List;

import bbc.com.a.model.Bb_StoreDto;

public interface BbaStoreSerivce {
	
	public int registerStore(Bb_StoreDto bsdto);
	
	public List<Bb_StoreDto> GetStoreList();
	
	public Bb_StoreDto updateStore(int seq);
	
	public void updateStoreAf(Bb_StoreDto bsdto);
	
	public void deleteStore(int seq);

}
