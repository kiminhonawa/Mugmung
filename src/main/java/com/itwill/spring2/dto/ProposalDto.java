package com.itwill.spring2.dto;

import java.sql.Timestamp;

import com.itwill.spring2.domain.Proposal;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@NoArgsConstructor
@AllArgsConstructor
@Data
@Builder
public class ProposalDto {

  
    private String title;
    private String content;
    private String proposal_image_id;
    private String writer;
    private String proposal_type;
  
    
    public Proposal toEntity() {
        
    
        return Proposal.builder()
              .title(title)
              .content(content)
              .proposal_image_id(proposal_image_id)
              .writer(writer)
              .proposal_type(proposal_type)
              .build();
                
}
}
