package artizens.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Options;
import org.apache.ibatis.annotations.Result;
import org.apache.ibatis.annotations.Results;
import org.apache.ibatis.annotations.Select;

import artizens.domain.UserProfile;
import artizens.mapper.dto.collaboration.CollaborationMainDto;
import artizens.mapper.dto.collaboration.CollaborationPlanningDto;

@Mapper
public interface CollaborationMapper1 {
	@Insert("insert into collaboration("
			+ "collaboration_title, "
			+ "collaboration_register_date, "
			+ "collaboration_deadline_date, "
			+ "collaboration_content, "
			+ "collaboration_storefilename, "
			+ "creator_id) values ("
			+ "#{title}, now(), #{deadLineDate}, #{content}, #{storedFileName}, ${creatorId})")
	@Options(useGeneratedKeys = true, keyProperty = "collaborationId", keyColumn = "collaboration_id")
	Long insertCollaboration(CollaborationPlanningDto collaborationDto);
	
	@Results({
		@Result(property = "collaborationId", column = "collaboration_id", id = true),
		@Result(property = "title", column = "collaboration_title"),
		@Result(property = "deadLineDate", column = "collaboration_deadline_date"),
		@Result(property = "registerDate", column = "collaboration_register_date"),
		@Result(property = "storedFileName", column = "collaboration_storefilename"),
		@Result(property = "creatorProfileStoredFileName", column = "creator_profile_storefilename"),
	})
	@Select("select"
			+ " col.collaboration_id as collaboration_id, "
			+ " col.collaboration_title as collaboration_title, "
			+ " col.collaboration_storefilename as collaboration_storefilename, "
			+ " col.collaboration_deadline_date as collaboration_deadline_date, "
			+ " col.collaboration_register_date as collaboration_register_date, "
			+ " cre.creator_nickname as creator_nickname, "
			+ " cre.creator_profile_storefilename as creator_profile_storefilename "
			+ " from collaboration as col "
			+ " left join creator as cre "
			+ " on col.creator_id = cre.creator_id")
	List<CollaborationMainDto> findAllCollaboration();
	
	@Select("select creator_id from creator where user_profile_id=${userId}")
	CollaborationPlanningDto findCreatorId(Long userId);
}
