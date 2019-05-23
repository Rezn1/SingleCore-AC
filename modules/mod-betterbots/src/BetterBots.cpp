/**
    This plugin can be used for common player customizations
 */

#include "ScriptMgr.h"
#include "Player.h"
#include "Configuration/Config.h"
#include <map>
#include "Unit.h"
#include "Pet.h"
#include "Map.h"
#include "Group.h"
#include "InstanceScript.h"
#include "../pchdef.h"
#include "playerbot.h"
#include "PlayerbotAIConfig.h"
#include "PlayerbotFactory.h"
#include "DatabaseEnv.h"
#include "PlayerbotAI.h"
#include "Guild.h"
#include "GuildMgr.h"
#include "RandomPlayerbotFactory.h"
#include "RandomPlayerbotMgr.h"

class BetterBots : public PlayerScript{
public:

    BetterBots() : PlayerScript("BetterBots") { }

    void OnLogin(Player* player) override {
        if (sConfigMgr->GetBoolDefault("BetterBots.enabled", false)) {
            ChatHandler(player->GetSession()).SendSysMessage("Better Bots enabled!");
            uint32 difficulty = sConfigMgr->GetIntDefault("BetterBots.difficulty", 2);
            if(sRandomPlayerbotMgr.IsRandomBot(player) ApplyBuffs(player, difficulty);
            
        }
        
    }

        void ApplyBuffs(Player *player, int difficulty)
        {
            ClearBuffs(player);

          

                // Adjust player stats
                _unitDifficulty[player->GetGUID()] = difficulty;
                for (int32 i = STAT_STRENGTH; i < MAX_STATS; ++i)
                {
                    // Buff the player
                    player->HandleStatModifier(UnitMods(UNIT_MOD_STAT_START + i), TOTAL_PCT, float(difficulty * 100), true);
                }

                // Set player health
                player->SetFullHealth();
                if (player->getPowerType() == POWER_MANA)
                {
                    // Buff the player's health
                    player->SetPower(POWER_MANA, player->GetMaxPower(POWER_MANA));
                }
            
        }
        void ClearBuffs(Player *player)
        {
            std::map<uint32, int>::iterator unitDifficultyIterator = _unitDifficulty.find(player->GetGUID());
            if (unitDifficultyIterator != _unitDifficulty.end())
            {
                int difficulty = unitDifficultyIterator->second;
                _unitDifficulty.erase(unitDifficultyIterator);

                // Inform the player
                //std::ostringstream ss;
                //ss << "|cffFF0000[SoloCraft] |cffFF8000" << player->GetName() << " exited to %s - Reverting Difficulty Offset: %d.";
                //ChatHandler(player->GetSession()).PSendSysMessage(ss.str().c_str(), map->GetMapName(), difficulty);

                // Clear the buffs
                for (int32 i = STAT_STRENGTH; i < MAX_STATS; ++i)
                {
                    player->HandleStatModifier(UnitMods(UNIT_MOD_STAT_START + i), TOTAL_PCT, float(difficulty * 100), false);
                }
            }
        }



};

void AddBetterBotsScripts() {
    new BetterBots();
}

