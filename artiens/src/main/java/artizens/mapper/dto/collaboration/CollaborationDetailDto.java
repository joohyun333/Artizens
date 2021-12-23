package artizens.mapper.dto.collaboration;

import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;

public class CollaborationDetailDto {
	
	private Long id;
	private String title;
	private String registerDate;
	private Long creatorId;
	private String creatorNickname;
	private String creatorImgName;
	private String contentImgName;
	private String content;
	private int commentCount;
	private Long commentId;
	private String comment;
	public Long getId() {
		return id;
	}
	public String getTitle() {
		return title;
	}
	/**
	 * get할때는 yyyy.MM.dd
	 * @return
	 */
	public String getRegisterDate() {
		return registerDate;
	}
	public String getCreatorNickname() {
		return creatorNickname;
	}
	public String getCreatorImgName() {
		return creatorImgName;
	}
	public String getContentImgName() {
		return contentImgName;
	}
	public String getContent() {
		return content;
	}
	public int getCommentCount() {
		return commentCount;
	}
	public Long getCommentId() {
		return commentId;
	}
	public String getComment() {
		return comment;
	}
	public Long getCreatorId() {
		return creatorId;
	}
	
	
	public void setId(Long id) {
		this.id = id;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	/**
	 * set할때는 yyyy-MM-dd
	 * @param registerDate
	 */
	public void setRegisterDate(LocalDateTime registerDate) {
		this.registerDate = registerDate.format(DateTimeFormatter.ofPattern("yyyy-MM-dd"));
	}
	public void setCreatorNickname(String creatorNickname) {
		this.creatorNickname = creatorNickname;
	}
	public void setCreatorImgName(String creatorImgName) {
		this.creatorImgName = creatorImgName;
	}
	public void setContentImgName(String contentImgName) {
		this.contentImgName = contentImgName;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public void setCommentCount(int commentCount) {
		this.commentCount = commentCount;
	}
	public void setCommentId(Long commentId) {
		this.commentId = commentId;
	}
	public void setComment(String comment) {
		this.comment = comment;
	}
	public void setCreatorId(Long creatorId) {
		this.creatorId = creatorId;
	}
	@Override
	public String toString() {
		return "CollaborationDetailDto [id=" + id + ", title=" + title + ", registerDate=" + registerDate
				+ ", creatorNickname=" + creatorNickname + ", creatorImgName=" + creatorImgName + ", contentImgName="
				+ contentImgName + ", content=" + content + ", commentCount=" + commentCount + ", commentId="
				+ commentId + ", comment=" + comment + "]";
	}
	
	
	
	
}
