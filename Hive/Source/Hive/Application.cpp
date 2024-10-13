#include "Application.h"

#include "Hive/Event/ApplicationEvent.h"
#include "Hive/Log.h"

namespace Hive {

	Application::Application()
	{
	}


	Application::~Application()
	{
	}

	void Application::Run()
	{
		WindowResizeEvent e(1280, 720);
		if (e.IsInCategory(EventCategoryApplication)) {
			HIVE_TRACE(e);
		}
		if (e.IsInCategory(EventCategoryInput)) {
			HIVE_TRACE(e);
		}

		while (true);
	}

}