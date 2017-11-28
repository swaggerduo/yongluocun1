package com.utils;

import java.util.List;

public class PageUtil<E> {
	private int pageNum;// ҳ�룬��ǰ�ڼ�ҳ
	private int pageSize;// ÿҳ��ʾ��
	private int totalPage;// ��ҳ��
	private int totalRecord;// ����������
	private int start;// �ܹ�����ʾ��ҳ�������û������
	private int end;// ��ʾ��βҳ��
	private List<E> list;// �洢��ҳ����ʾ���ݼ���
	private int startIndex;

	public PageUtil(int pageNum, int pageSize, int totalRecord) {
		this.pageNum = pageNum;
		this.pageSize = pageSize;
		this.totalRecord = totalRecord;
		if (totalRecord % pageSize == 0) {
			this.totalPage = totalRecord / pageSize;
		} else {
			this.totalPage = totalRecord / pageSize + 1;
		}
		this.startIndex = (pageNum - 1) * pageSize;
		this.start = 1;
		this.end = 5;
		//��ʾ��ҳ�����㷨
		if(totalPage <= 5){
			this.end = this.totalPage;
		}else{
			this.start = pageNum -2;
			this.end = pageNum +2;
			if(start < 0){
				this.start = 1;
				this.end = 5;
			}
			if(end > totalPage){
				this.start = totalPage -5;
				this.end = totalPage;
			}
		}
		
		
		
		
		
		
	}

	public int getPageNum() {
		return pageNum;
	}

	public void setPageNum(int pageNum) {
		this.pageNum = pageNum;
	}

	public int getPageSize() {
		return pageSize;
	}

	public void setPageSize(int pageSize) {
		this.pageSize = pageSize;
	}

	public int getTotalPage() {
		return totalPage;
	}

	public void setTotalPage(int totalPage) {
		this.totalPage = totalPage;
	}

	public int getTotalRecord() {
		return totalRecord;
	}

	public void setTotalRecord(int totalRecord) {
		this.totalRecord = totalRecord;
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

	public List<E> getList() {
		return list;
	}

	public void setList(List<E> list) {
		this.list = list;
	}

	public int getStartIndex() {
		return startIndex;
	}

	public void setStartIndex(int startIndex) {
		this.startIndex = startIndex;
	}

}

