package pms.a01_Haeun.a04_VO;
// pms.a01_Haeun.a04_VO.EmpSch
public class EmpSch {
	// 페이징 처리 및 검색을 위한 vo
	// 1. 검색
	private String ename;
	private String job;
	// 2. 페이징 처리를 위한 속성
	private int count; // 총데이터 건수
	private int pageSize; // 한번에 보여줄 페이지 크기
	private int pageCount; // 클릭한 현재 페이지 번호
	private int start; // 시작번호 (현재페이지)
	private int end; // 마지막 번호 (현재페이지)
	private int curPage; // 클릭한 현재 페이지 번호
	// 3. 하단에 block 속성
	private int blockSize; // 한번에 보여줄 block 크리
	private int startBlock; // block의 시작번호
	private int endBlock; // block의 마지막번호
		
	public EmpSch() {
		// TODO Auto-generated constructor stub
	}

	public String getJob() {
		return job;
	}

	public void setJob(String job) {
		this.job = job;
	}

	public int getCount() {
		return count;
	}

	public void setCount(int count) {
		this.count = count;
	}

	public int getPageSize() {
		return pageSize;
	}

	public void setPageSize(int pageSize) {
		this.pageSize = pageSize;
	}

	public int getPageCount() {
		return pageCount;
	}

	public void setPageCount(int pageCount) {
		this.pageCount = pageCount;
	}

	public int getStart() {
		return start;
	}

	public void setStart(int start) {
		this.start = start;
	}

	public int getEnd() {
		return end;
	}

	public void setEnd(int end) {
		this.end = end;
	}

	public int getBlockSize() {
		return blockSize;
	}

	public void setBlockSize(int blockSize) {
		this.blockSize = blockSize;
	}

	public int getStartBlock() {
		return startBlock;
	}

	public void setStartBlock(int startBlock) {
		this.startBlock = startBlock;
	}

	public int getEndBlock() {
		return endBlock;
	}

	public void setEndBlock(int endBlock) {
		this.endBlock = endBlock;
	}

	public void setEname(String ename) {
		this.ename = ename;
	}

	public String getEname() {
		return ename;
	}

	public int getCurPage() {
		return curPage;
	}

	public void setCurPage(int curPage) {
		this.curPage = curPage;
	}
	
	
	
	
}
