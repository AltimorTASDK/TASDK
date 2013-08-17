module UnrealScript.TribesGame.TrVictoryMessage;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.UTGame.UTLocalMessage;
import UnrealScript.Engine.SoundCue;
import UnrealScript.Engine.PlayerReplicationInfo;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.PlayerController;

extern(C++) interface TrVictoryMessage : UTLocalMessage
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class TribesGame.TrVictoryMessage")); }
	private static __gshared TrVictoryMessage mDefaultProperties;
	@property final static TrVictoryMessage DefaultProperties() { mixin(MGDPC("TrVictoryMessage", "TrVictoryMessage TribesGame.Default__TrVictoryMessage")); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mGetString;
			ScriptFunction mClientReceive;
		}
		public @property static final
		{
			ScriptFunction GetString() { mixin(MGF("mGetString", "Function TribesGame.TrVictoryMessage.GetString")); }
			ScriptFunction ClientReceive() { mixin(MGF("mClientReceive", "Function TribesGame.TrVictoryMessage.ClientReceive")); }
		}
	}
	@property final auto ref
	{
		ScriptString TrainingComplete() { mixin(MGPC("ScriptString", 228)); }
		ScriptString DrawGame() { mixin(MGPC("ScriptString", 216)); }
		ScriptString PlayerWonRound() { mixin(MGPC("ScriptString", 204)); }
		ScriptString DiamondSwordVictory() { mixin(MGPC("ScriptString", 192)); }
		ScriptString BloodEagleVictory() { mixin(MGPC("ScriptString", 180)); }
		ScriptString NormalDefeat() { mixin(MGPC("ScriptString", 168)); }
		ScriptString NormalVictory() { mixin(MGPC("ScriptString", 156)); }
		ScriptString DominantDefeat() { mixin(MGPC("ScriptString", 144)); }
		ScriptString DominantVictory() { mixin(MGPC("ScriptString", 132)); }
		SoundCue BloodEagleSounds() { mixin(MGPC("SoundCue", 116)); }
		SoundCue DiamondSwordSounds() { mixin(MGPC("SoundCue", 100)); }
	}
final:
	static ScriptString GetString(int* Switch = null, bool* bPRI1HUD = null, PlayerReplicationInfo* RelatedPRI_1 = null, PlayerReplicationInfo* RelatedPRI_2 = null, UObject* OptionalObject = null)
	{
		ubyte params[32];
		params[] = 0;
		if (Switch !is null)
			*cast(int*)params.ptr = *Switch;
		if (bPRI1HUD !is null)
			*cast(bool*)&params[4] = *bPRI1HUD;
		if (RelatedPRI_1 !is null)
			*cast(PlayerReplicationInfo*)&params[8] = *RelatedPRI_1;
		if (RelatedPRI_2 !is null)
			*cast(PlayerReplicationInfo*)&params[12] = *RelatedPRI_2;
		if (OptionalObject !is null)
			*cast(UObject*)&params[16] = *OptionalObject;
		StaticClass.ProcessEvent(Functions.GetString, params.ptr, cast(void*)0);
		return *cast(ScriptString*)&params[20];
	}
	static void ClientReceive(PlayerController P, int* Switch = null, PlayerReplicationInfo* RelatedPRI_1 = null, PlayerReplicationInfo* RelatedPRI_2 = null, UObject* OptionalObject = null)
	{
		ubyte params[20];
		params[] = 0;
		*cast(PlayerController*)params.ptr = P;
		if (Switch !is null)
			*cast(int*)&params[4] = *Switch;
		if (RelatedPRI_1 !is null)
			*cast(PlayerReplicationInfo*)&params[8] = *RelatedPRI_1;
		if (RelatedPRI_2 !is null)
			*cast(PlayerReplicationInfo*)&params[12] = *RelatedPRI_2;
		if (OptionalObject !is null)
			*cast(UObject*)&params[16] = *OptionalObject;
		StaticClass.ProcessEvent(Functions.ClientReceive, params.ptr, cast(void*)0);
	}
}
