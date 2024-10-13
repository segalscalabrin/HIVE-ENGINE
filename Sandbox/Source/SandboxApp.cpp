#include <Hive.h>

class Sandbox : public Hive::Application
{
public:
	Sandbox()
	{

	}

	~Sandbox()
	{

	}

};

Hive::Application* Hive::CreateApplication()
{
	return new Sandbox();
}