package volunteer;

import java.util.List;

import common.VolCategory;
import volunteer.service.IVolService;
import volunteer.service.VolService;
import volunteer.vo.VolunteerVO;
import volunteer.vo.WishVO;

public class Test {
	public static void main(String[] args) {
//		int star = 2;
//		String contentment = "☆☆☆☆☆";
//		for (int k = 0; k < star; k++) {
//			contentment = contentment.replaceFirst("☆", "★");
//		}
//		System.out.println(contentment);
//		
//		for(VolCategory volCategory : VolCategory.values()) {
//			System.out.println(volCategory);
//		}
		
		String memId = "b001";
		
		IVolService service = VolService.getInstance();
		List<VolunteerVO> volList = service.getList();
		List<WishVO> wishList = service.getWishList();

		int size = volList.size();
		int wishSize = wishList.size();
		
//		if(size > 0) {
//			for (int i = 0; i < size; i++) {
//				System.out.println("=======================================");
//				System.out.println("기준봉사" + volList.get(i).getVolId());
//				System.out.println("=======================================");
//				for(int j = 0; j < wishSize; j++) {
//					System.out.println("관심봉사" + wishList.get(j).getVolId());
//					if(volList.get(i).getVolId().equals(wishList.get(j).getVolId())) {
//						if(memId.equals(wishList.get(j).getMemId())) {
//							System.out.println(" : Y");
//							break;
//						} else {
//							System.out.println(" : N");
//							break;
//						}
////					} else {
////						System.out.println(" : N2");
////						continue;
//					}
//				}
//			}
//		}
		int k = 0;
		if(size > 0) {
			for(int i = 0; i < size; i++) {
				for(int j = 0; j < wishSize; j++) {
					if(volList.get(i).getVolId().equals(wishList.get(j).getVolId()) && memId.equals(wishList.get(j).getMemId())) {
						k = 1;
						break;
					} else {
						k = 0;
						continue;
					}
				}
				if(k == 1) {
					System.out.println("♥");
				} else {
					System.out.println("♡");
				}
			}
		}
		
	}
}
