package artizens.controller;

import org.apache.commons.lang3.EnumUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttribute;

import artizens.domain.RewardCategory;
import artizens.domain.UserProfile;
import artizens.service.RewardService;
import artizens.web.session.SessionConst;

@Controller
@RequestMapping("/artizen/patron/reward")
public class RewardController {

	private static final Logger LOGGER = LoggerFactory.getLogger(RewardController.class);

	@Autowired
	RewardService rewardService;

	@GetMapping
	public String patronReward(@SessionAttribute(name = SessionConst.LOGIN_USER, required = false) UserProfile user,
			Model model) {
		model.addAttribute("member", user); // 세션 유무에 따른 헤더 세팅
		model.addAttribute("itemName", "Calendar");
		return "thymeleaf/patron/reward/reward";
	}

	@GetMapping("/register")
	public String patronRewardRegister(Model model) {
		return "thymeleaf/patron/patronRegister/rewardRegisterForm";
	}

	// reward 별로 출력
	@GetMapping("/{rewardItem}")
	public String rewardItem(@SessionAttribute(name = SessionConst.LOGIN_USER, required = false) UserProfile user,
			@PathVariable(name = "rewardItem") String rewardItem, Model model) {
		if (!EnumUtils.isValidEnumIgnoreCase(RewardCategory.class, rewardItem)) {
			return "redirect:/artizen/patron/reward";
		}
		model.addAttribute("member", user); // 세션 유무에 따른 헤더 세팅
		model.addAttribute("itemName", rewardItem);
		LOGGER.info("msg={}", rewardItem);
		
		return "thymeleaf/patron/reward/reward";
	}

}
