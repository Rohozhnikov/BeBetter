package mum.edu.service;

import java.util.List;

import mum.edu.domain.RecentActivities;


public interface RecentActivitiesService {

	RecentActivities addRecentActivities(RecentActivities RecentActivities);

	RecentActivities updateRecentActivities(RecentActivities RecentActivities);

	void deleteRecentActivitiesById(RecentActivities RecentActivities);

	RecentActivities getRecentActivitiesById(int id);

	List<RecentActivities> getAllRecentActivitiess();

	void saveAll(List<RecentActivities> RecentActivities);
	
}
