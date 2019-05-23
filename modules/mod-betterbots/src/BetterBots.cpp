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

class BetterBots : public PlayerScript{
public:

    BetterBots() : PlayerScript("BetterBots") { }

    void OnLogin(Player* player) override {
        if (sConfigMgr->GetBoolDefault("BetterBots.enableHelloWorld", false)) {
            ChatHandler(player->GetSession()).SendSysMessage("Hello World from Skeleton-Module!");
        }
    }
};

void AddBetterBotsScripts() {
    new BetterBots();
}

