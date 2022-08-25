package kr.co.goodchoice.dto;

import java.util.ArrayList;
import java.util.List;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter @Setter @ToString
public class TableRow {
	boolean isFirst;	// 첫번째 주인지 여부, 해당 주의 앞에 빈 칸이 채워져야 됨
	boolean isLast;		// 마지막번째 주인지 여부, 해당 주의 뒤에 빈 칸이 채워져야 됨
	int colspan;		// 빈 칸 갯수
	List<TableCell<?>> cells = new ArrayList<>();	// 셀 (1개 ~ 7개)
}
