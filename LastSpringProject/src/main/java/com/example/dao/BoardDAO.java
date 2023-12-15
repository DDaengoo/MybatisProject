package com.example.dao;

import com.example.bean.BoardVO;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

@Repository
public class BoardDAO {
    @Autowired
    SqlSession sqlSession;

    public int insertBoard(BoardVO vo) {
        int result =sqlSession.insert("hgumusic.insertBoard", vo);
        return result;
    }

    public int deleteBoard(int id) {
        int result = sqlSession.delete("hgumusic.deleteBoard", id);
        return result;
    }

    public int updateBoard(BoardVO vo) {
        int result = sqlSession.update("hgumusic.updateBoard", vo);
        return result;
    }

    public BoardVO getBoard(int seq) {
        BoardVO one = sqlSession.selectOne("hgumusic.getBoard", seq);
        return one;
    }

    public List<BoardVO> getBoardList(){
        List<BoardVO> list = sqlSession.selectList("hgumusic.getBoardList");
        return list;
    }
}