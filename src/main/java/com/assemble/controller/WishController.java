package com.assemble.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.assemble.service.WishService;
import com.assemble.vo.ThemaVO;
import com.assemble.vo.WebtoonVO;
import com.assemble.vo.WishVO;

@Controller
public class WishController {

	@Autowired
	private WishService wishService;

	@RequestMapping(value="/wish", method=RequestMethod.GET)
	public String thema_content (Model contM, HttpServletRequest request, WishVO wl){

		List<WishVO> w_list = this.wishService.getWish(wl);


		contM.addAttribute("w_list", w_list);

		return "myPage/wish";
	}

	@RequestMapping(value = "/tagpage_tag", method = RequestMethod.POST)
	public String wish_insert (Model winsertM, HttpServletRequest request, WebtoonVO wb) {

		List<WebtoonVO> wish_content = this.wishService.getWishContent(wb);

		winsertM.addAttribute("wish_content", wish_content);

		return "wish_ok";
	}

	@RequestMapping(value="/wish_ok", method=RequestMethod.POST)
	public ModelAndView wish_ok (WishVO wo, HttpServletRequest request) {


		this.wishService.wish_ok(wo);

		return new ModelAndView("redirect:/wish");
		}

	}
