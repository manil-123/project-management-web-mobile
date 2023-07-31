class ApiEndpoints {
  static const loginUrl = "/auth/login";
  static const registerUrl = "/auth/register";
  static const usersListUrl = "/users";
  static const updateUserUrl = "$usersListUrl/update";
  static const changePasswordUrl = "$usersListUrl/change_password";

  //api for project
  static const projectListUrl = "/project";
  static const createProjectUrl = "$projectListUrl/create";
  static const deleteProjectUrl = "$projectListUrl/delete";
  static const updateProjectUrl = "$projectListUrl/edit";
  static const addMemberUrl = "$projectListUrl/add_member";
  static const removeMemberUrl = "$projectListUrl/remove_member";

  //api for sprint
  static const sprintListUrl = "/sprint";
  static const createSprintUrl = "$sprintListUrl/create";
  static const deleteSprintUrl = "$sprintListUrl/delete";
  static const updateSprintUrl = "$sprintListUrl/update";

  //api for ticket
  static const ticketListUrl = "/ticket";
  static const createTicketUrl = "$ticketListUrl/create";
  static const deleteTicketUrl = "$ticketListUrl/delete";
  static const updateTicketUrl = "$ticketListUrl/update";
}
