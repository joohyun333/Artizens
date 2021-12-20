package artizens.repository.querydsl.reward;

import java.util.List;

import javax.persistence.EntityManager;

import org.springframework.data.domain.Pageable;

import com.querydsl.core.types.Projections;
import com.querydsl.jpa.JPAExpressions;
import com.querydsl.jpa.impl.JPAQueryFactory;

import static artizens.domain.QReward.reward;
import static artizens.domain.QCreator.creator;
import static artizens.domain.QPatron.patron;
import static artizens.domain.QRewardImages.rewardImages; 

public class RewardRepositoryImpl implements RewardRepositoryQueryDsl{
	
	private final EntityManager entityManager;
	private final JPAQueryFactory queryFactory;
	
	public RewardRepositoryImpl(EntityManager em) {
		this.entityManager = em;
		this.queryFactory = new JPAQueryFactory(entityManager);
	}
	
	@Override
	public List<RewardCreatorDto> findAllRewardWithCreator(Pageable pageable) {
		return queryFactory
				.select(Projections.constructor(RewardCreatorDto.class, 
						reward.id,
						patron.id,
						reward.title,
						reward.price,
						reward.rewardImages,
						creator.nickName))
				.from(reward)
				.leftJoin(patron)
				.leftJoin(creator)
				.offset(pageable.getOffset())
				.limit(pageable.getPageSize())
				.fetch();
	}
	
	@Override
	public List<RewardCreatorDto> findByRewardItemWithCreator(Pageable pageable, String itemName) {
		return queryFactory
				.select(Projections.constructor(RewardCreatorDto.class, 
						reward.id,
						patron.id,
						reward.title,
						reward.price,
						creator.nickName))
				.from(reward)
				.where(reward.subject.eq(itemName))
				.leftJoin(patron)
				.leftJoin(creator)
				.offset(pageable.getOffset())
				.limit(pageable.getPageSize())
				.fetch();
	}
	
	@Override
	public List<RewardImageDto> findRewardImages(List<Long> rewardIds) {
		return queryFactory
				.select(Projections.constructor(RewardImageDto.class, 
						rewardImages.reward.id,
						rewardImages.uploadFile.storeFileName))
				.from(rewardImages)
				.where(rewardImages.reward.id.in(rewardIds))
				.fetch();
	}
}
