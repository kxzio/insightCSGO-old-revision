#pragma once

#define NOMINMAX
#include <Windows.h>
#include <string>
#include <initializer_list>
#include "../valve_sdk/sdk.hpp"

namespace Utils {
	int   EpochTime();
	float Map(float val, float start1, float stop1, float start2, float stop2);
	float Rad(float deg);
	bool IsValidHitgroup(int index);
	bool LineGoesThroughSmoke(Vector vStartPos, Vector vEndPos);
	float ServerTime(CUserCmd * m_pcmd = nullptr);
	bool HitChance(float hitchance);
	void TraceLine(Vector& vecAbsStart, Vector& vecAbsEnd, unsigned int mask, const IHandleEntity* ignore, trace_t* ptr);
	void LoadNamedSky(const char* sky_name);
	uintptr_t FindSignature(const char* szModule, const char* szSignature);
	std::vector<char> HexToBytes(const std::string& hex);
	std::string BytesToString(unsigned char* data, int len);
	std::vector<std::string> Split(const std::string& str, const char* delim);
	unsigned int FindInDataMap(datamap_t * pMap, const char * name);
    /*
     * @brief Create console
     *
     * Create and attach a console window to the current process
     */
	void AttachConsole();

	void CorrectMovement(QAngle vOldAngles, CUserCmd* pCmd, float fOldForward, float fOldSidemove);
    /*
     * @brief Detach console
     *
     * Detach and destroy the attached console
     */
    void DetachConsole();

    /*
     * @brief Print to console
     *
     * Replacement to printf that works with the newly created console
     */
    bool ConsolePrint(const char* fmt, ...);
    
    /*
     * @brief Blocks execution until a key is pressed on the console window
     *
     */
    char ConsoleReadKey();

    /*
     * @brief Wait for all the given modules to be loaded
     *
     * @param timeout How long to wait
     * @param modules List of modules to wait for
     *
     * @returns See WaitForSingleObject return values.
     */
    int WaitForModules(std::int32_t timeout, const std::initializer_list<std::wstring>& modules);

    /*
     * @brief Scan for a given byte pattern on a module
     *
     * @param module    Base of the module to search
     * @param signature IDA-style byte array pattern
     *
     * @returns Address of the first occurence
     */
    std::uint8_t* PatternScan(void* module, const char* signature);

    /*
     * @brief Set player clantag
     *
     * @param tag New clantag
     */
    void SetClantag(const char* tag);

    /*
     * @brief Set player name
     *
     * @param name New name
     */
    void SetName(const char* name);





}
