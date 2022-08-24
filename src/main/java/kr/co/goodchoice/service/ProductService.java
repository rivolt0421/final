package kr.co.goodchoice.service;

import java.util.ArrayList;
import java.util.Collections;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.goodchoice.mapper.ProductMapper;
import kr.co.goodchoice.mapper.RegionMapper;
import kr.co.goodchoice.vo.Region;

@Service
public class ProductService {

	@Autowired
	ProductMapper pMapper;
	@Autowired
	RegionMapper rMapper;
	
	public Map<String, List<Region>> getRegionMap() {
		List<Region> list = rMapper.getAllRegions();
		Map<String, List<Region>> map = new LinkedHashMap<>();
		
		for (Region r : list) {
			if (map.containsKey(r.getProvince())) {
				map.get(r.getProvince()).add(r);
			} else {
				List<Region> arrList = new ArrayList<>();
				arrList.add(r);
				map.put(r.getProvince(), arrList);
			}
		}
		
		return map;
	}
}
