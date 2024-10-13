#pragma once

#ifdef __linux__

extern Hive::Application* Hive::CreateApplication();

int main(int argc, char** argv)
{
	Hive::Log::Init();
	HIVE_CORE_WARN("Initialized Log!");
	int a = 5;
	HIVE_INFO("Hello! Var={0}", a);

	auto app = Hive::CreateApplication();
	app->Run();
	delete app;
}


#endif
