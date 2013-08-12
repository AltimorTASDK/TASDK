module UnrealScript.UTGame.UTVehicleMessage;

import ScriptClasses;
import UnrealScript.UTGame.UTLocalMessage;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.PlayerController;
import UnrealScript.Engine.PlayerReplicationInfo;
import UnrealScript.Engine.SoundNodeWave;

extern(C++) interface UTVehicleMessage : UTLocalMessage
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class UTGame.UTVehicleMessage")); }
	private static __gshared UTVehicleMessage mDefaultProperties;
	@property final static UTVehicleMessage DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(UTVehicleMessage)("UTVehicleMessage UTGame.Default__UTVehicleMessage")); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mClientReceive;
			ScriptFunction mAnnouncementLevel;
			ScriptFunction mGetString;
			ScriptFunction mGetColor;
			ScriptFunction mAnnouncementSound;
		}
		public @property static final
		{
			ScriptFunction ClientReceive() { return mClientReceive ? mClientReceive : (mClientReceive = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTVehicleMessage.ClientReceive")); }
			ScriptFunction AnnouncementLevel() { return mAnnouncementLevel ? mAnnouncementLevel : (mAnnouncementLevel = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTVehicleMessage.AnnouncementLevel")); }
			ScriptFunction GetString() { return mGetString ? mGetString : (mGetString = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTVehicleMessage.GetString")); }
			ScriptFunction GetColor() { return mGetColor ? mGetColor : (mGetColor = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTVehicleMessage.GetColor")); }
			ScriptFunction AnnouncementSound() { return mAnnouncementSound ? mAnnouncementSound : (mAnnouncementSound = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTVehicleMessage.AnnouncementSound")); }
		}
	}
	@property final auto ref
	{
		ScriptArray!(ScriptString) MessageText() { return *cast(ScriptArray!(ScriptString)*)(cast(size_t)cast(void*)this + 100); }
		ScriptArray!(UObject.Color) DrawColors() { return *cast(ScriptArray!(UObject.Color)*)(cast(size_t)cast(void*)this + 112); }
		ScriptArray!(SoundNodeWave) MessageAnnouncements() { return *cast(ScriptArray!(SoundNodeWave)*)(cast(size_t)cast(void*)this + 124); }
		ScriptArray!(int) CustomMessageArea() { return *cast(ScriptArray!(int)*)(cast(size_t)cast(void*)this + 136); }
	}
final:
	static void ClientReceive(PlayerController P, int Switch, PlayerReplicationInfo RelatedPRI_1, PlayerReplicationInfo RelatedPRI_2, UObject OptionalObject)
	{
		ubyte params[20];
		params[] = 0;
		*cast(PlayerController*)params.ptr = P;
		*cast(int*)&params[4] = Switch;
		*cast(PlayerReplicationInfo*)&params[8] = RelatedPRI_1;
		*cast(PlayerReplicationInfo*)&params[12] = RelatedPRI_2;
		*cast(UObject*)&params[16] = OptionalObject;
		StaticClass.ProcessEvent(Functions.ClientReceive, params.ptr, cast(void*)0);
	}
	static ubyte AnnouncementLevel(ubyte MessageIndex)
	{
		ubyte params[2];
		params[] = 0;
		params[0] = MessageIndex;
		StaticClass.ProcessEvent(Functions.AnnouncementLevel, params.ptr, cast(void*)0);
		return params[1];
	}
	static ScriptString GetString(int Switch, bool bPRI1HUD, PlayerReplicationInfo RelatedPRI_1, PlayerReplicationInfo RelatedPRI_2, UObject OptionalObject)
	{
		ubyte params[32];
		params[] = 0;
		*cast(int*)params.ptr = Switch;
		*cast(bool*)&params[4] = bPRI1HUD;
		*cast(PlayerReplicationInfo*)&params[8] = RelatedPRI_1;
		*cast(PlayerReplicationInfo*)&params[12] = RelatedPRI_2;
		*cast(UObject*)&params[16] = OptionalObject;
		StaticClass.ProcessEvent(Functions.GetString, params.ptr, cast(void*)0);
		return *cast(ScriptString*)&params[20];
	}
	static UObject.Color GetColor(int Switch, PlayerReplicationInfo RelatedPRI_1, PlayerReplicationInfo RelatedPRI_2, UObject OptionalObject)
	{
		ubyte params[20];
		params[] = 0;
		*cast(int*)params.ptr = Switch;
		*cast(PlayerReplicationInfo*)&params[4] = RelatedPRI_1;
		*cast(PlayerReplicationInfo*)&params[8] = RelatedPRI_2;
		*cast(UObject*)&params[12] = OptionalObject;
		StaticClass.ProcessEvent(Functions.GetColor, params.ptr, cast(void*)0);
		return *cast(UObject.Color*)&params[16];
	}
	static SoundNodeWave AnnouncementSound(int MessageIndex, UObject OptionalObject, PlayerController PC)
	{
		ubyte params[16];
		params[] = 0;
		*cast(int*)params.ptr = MessageIndex;
		*cast(UObject*)&params[4] = OptionalObject;
		*cast(PlayerController*)&params[8] = PC;
		StaticClass.ProcessEvent(Functions.AnnouncementSound, params.ptr, cast(void*)0);
		return *cast(SoundNodeWave*)&params[12];
	}
}
