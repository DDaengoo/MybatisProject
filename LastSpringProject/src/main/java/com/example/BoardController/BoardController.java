package com.example.BoardController;

import com.example.BoardServicelmpl.BoardServicelmpl;
import com.example.bean.BoardVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import java.util.List;

@Controller
@RequestMapping(value = "/board")
public class BoardController {
    @Autowired
    BoardServicelmpl boardService;

    @RequestMapping(value = "/list", method = RequestMethod.GET)
    public String boardlist(Model model){
        List<BoardVO> list = boardService.getBoardList();
        System.out.println("데이터 개수: " + list.size());
        model.addAttribute("list", list);
        return "list";
    }

    @RequestMapping(value = "/add", method = RequestMethod.GET)
    public String addPost(){
        return "addpostform";
    }

    @RequestMapping(value = "/addok", method = RequestMethod.POST)
    public String addPostOK(BoardVO vo){
        int i = boardService.insertBoard(vo);
        if(i == 0){
            System.out.println("데이터 추가 실패 ");
        }
        else{
            System.out.println("데이터 추가 성공!!!!");
        }
        return "redirect:/board/list";
    }

    @RequestMapping(value = "/editform/{id}", method = RequestMethod.GET)
    public String editPost(@PathVariable("id") int id, Model model){
        BoardVO boardVO = boardService.getBoard(id);
        model.addAttribute("boardVO", boardVO);

        return "editform";
    }

    @RequestMapping(value = "/editok", method = RequestMethod.POST)
    public String editPostOk(BoardVO vo){
        int i = boardService.updateBoard(vo);
        if(i==0){
            System.out.println("데이터 수정 실패");
        }

        else{
            System.out.println("데이터 수정 성공!!!!");
        }
        return "redirect:/board/list";
    }

    @RequestMapping(value = "/deleteok/{id}", method = RequestMethod.GET)
    public String deletePostOk(@PathVariable("id") int id){
        if(boardService.deleteBoard(id)==0){
            System.out.println("데이터 삭제 실패");
        }
        else{
            System.out.println("데이터 삭제 성공!!!");
        }
        return "redirect:../list";
    }
}