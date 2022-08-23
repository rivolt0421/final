package kr.co.goodchoice.dto;

import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.List;

public class CommonUtils {

	// 오늘이 속해있는 달의 첫번째 날의 정보를 반환한다.
	public static Date getFirstDateOfMonth() {
		Calendar calendar = Calendar.getInstance();	// 현재 날짜와 시간정보를 포함하는 객체 생성
		calendar.set(Calendar.DAY_OF_MONTH, 1);		// 1일
		calendar.set(Calendar.HOUR, 0);				// 0시
		calendar.set(Calendar.MINUTE, 0);			// 0분
		calendar.set(Calendar.SECOND, 0);			// 0초
		calendar.set(Calendar.MILLISECOND, 0);		// 0밀리초
		return calendar.getTime();					// Date객체를 반환한다.
	}
	
	// 그 달의 첫번째 날이 몇번째 요일인지를 반환한다.
	private static int getDayOfWeek(Date date) {
		Calendar calendar = Calendar.getInstance();
		calendar.setTime(date);
		
		return calendar.get(Calendar.DAY_OF_WEEK); // 1, 2, 3, 4, 5, 6, 7 중에 하나를 반환한다.(일요일:1, 토요일:7)
	}
	
	// 달력 표현에 필요한 행을 생성한다.
	public static <T> List<TableRow> generateRows(Date date, List<T> items) {
		List<TableRow> rows = new ArrayList<>();
		int dayOfWeek = getDayOfWeek(date);	// 8월 1일 -> 2
		
		int rowIndex = 0;
		rows.add(new TableRow());
		for (int index=0; index<items.size(); index++) {
			TableCell<T> cell = new TableCell<>(new Date(date.getTime() + (1000L*60*60*24*index)), items.get(index));
			rows.get(rowIndex).getCells().add(cell);
			
			if (dayOfWeek%7 == 0) {
				TableRow prevRow = rows.get(rowIndex);
				if (rowIndex == 0) {
					prevRow.setFirst(true);
					prevRow.setColspan(getDayOfWeek(date));
				}
				TableRow row = new TableRow();
				rows.add(row);
				rowIndex++;
			}
			dayOfWeek++;
		}
		
		TableRow lastRow = rows.get(rows.size() -1);
		lastRow.setLast(true);
		lastRow.setColspan(7 - lastRow.getCells().size());
		
		return rows;
	}
}
