#pragma once

#ifdef __linux__

extern Hive::Application* Hive::CreateApplication();

int main(int argc, char** argv)
{
	auto app = Hive::CreateApplication();
	app->Run();
	delete app;
}

#endif
