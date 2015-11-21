package mum.edu.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import mum.edu.domain.RecentActivities;
import mum.edu.repository.RecentActivitiesRepository;
import mum.edu.service.RecentActivitiesService;

@Service
@Transactional
public class RecentActivitiesServiceImpl implements RecentActivitiesService {

	@Autowired
	private RecentActivitiesRepository recentActivitiesRepository;

	@Override
	public RecentActivities addRecentActivities(RecentActivities RecentActivities) {
		return recentActivitiesRepository.add(RecentActivities);
	}

	@Override
	public RecentActivities updateRecentActivities(RecentActivities RecentActivities) {
		return recentActivitiesRepository.update(RecentActivities);
	}

	@Override
	public void deleteRecentActivitiesById(RecentActivities RecentActivities) {
		recentActivitiesRepository.delete(RecentActivities);
	}

	@Override
	public RecentActivities getRecentActivitiesById(int id) {
		return recentActivitiesRepository.get(id);
	}

	@Override
	public List<RecentActivities> getAllRecentActivitiess() {
		return recentActivitiesRepository.getAll();
	}

	@Override
	public void saveAll(List<RecentActivities> RecentActivitiess) {
		for (RecentActivities RecentActivities : RecentActivitiess) {
			recentActivitiesRepository.add(RecentActivities);
		}

	}

}
