#pragma once

#include <memory>

#include "Core.h"
#include "spdlog/spdlog.h"

namespace Hive {
    class HIVE_API Log
    {
	public:
		static void Init();

		inline static std::shared_ptr<spdlog::logger>& GetCoreLogger() { return s_CoreLogger; }
		inline static std::shared_ptr<spdlog::logger>& GetClientLogger() { return s_ClientLogger; }
	private:
		static std::shared_ptr<spdlog::logger> s_CoreLogger;
		static std::shared_ptr<spdlog::logger> s_ClientLogger;
	};

}

// Core log macros
#define HIVE_CORE_TRACE(...)    ::Hive::Log::GetCoreLogger()->trace(__VA_ARGS__)
#define HIVE_CORE_INFO(...)     ::Hive::Log::GetCoreLogger()->info(__VA_ARGS__)
#define HIVE_CORE_WARN(...)     ::Hive::Log::GetCoreLogger()->warn(__VA_ARGS__)
#define HIVE_CORE_ERROR(...)    ::Hive::Log::GetCoreLogger()->error(__VA_ARGS__)
#define HIVE_CORE_FATAL(...)    ::Hive::Log::GetCoreLogger()->fatal(__VA_ARGS__)

// Client log macros
#define HIVE_TRACE(...)	      ::Hive::Log::GetClientLogger()->trace(__VA_ARGS__)
#define HIVE_INFO(...)	      ::Hive::Log::GetClientLogger()->info(__VA_ARGS__)
#define HIVE_WARN(...)	      ::Hive::Log::GetClientLogger()->warn(__VA_ARGS__)
#define HIVE_ERROR(...)	      ::Hive::Log::GetClientLogger()->error(__VA_ARGS__)
#define HIVE_FATAL(...)	      ::Hive::Log::GetClientLogger()->fatal(__VA_ARGS__)