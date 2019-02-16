/**
 * 
 */
package com.hs.ar.user.dao;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.hs.ar.user.entity.ArUserCaseMaster;


/**
 * @author vinay
 * @param <Serializable>
 *
 */
@Repository("arUserCase")
public interface ArUserCaseMasterDAO<Serializable>extends JpaRepository<ArUserCaseMaster,Serializable> {

	
}
