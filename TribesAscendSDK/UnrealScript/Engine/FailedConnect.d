module UnrealScript.Engine.FailedConnect;

import ScriptClasses;
import UnrealScript.Engine.LocalMessage;
import UnrealScript.Engine.PlayerReplicationInfo;
import UnrealScript.Core.UObject;

extern(C++) interface FailedConnect : LocalMessage
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.FailedConnect")); }
	private static __gshared FailedConnect mDefaultProperties;
	@property final static FailedConnect DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(FailedConnect)("FailedConnect Engine.Default__FailedConnect")); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mGetFailSwitch;
			ScriptFunction mGetString;
		}
		public @property static final
		{
			ScriptFunction GetFailSwitch() { return mGetFailSwitch ? mGetFailSwitch : (mGetFailSwitch = ScriptObject.Find!(ScriptFunction)("Function Engine.FailedConnect.GetFailSwitch")); }
			ScriptFunction GetString() { return mGetString ? mGetString : (mGetString = ScriptObject.Find!(ScriptFunction)("Function Engine.FailedConnect.GetString")); }
		}
	}
	@property final auto ref ScriptString FailMessage() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 80); }
final:
	static int GetFailSwitch(ScriptString FailString)
	{
		ubyte params[16];
		params[] = 0;
		*cast(ScriptString*)params.ptr = FailString;
		StaticClass.ProcessEvent(Functions.GetFailSwitch, params.ptr, cast(void*)0);
		return *cast(int*)&params[12];
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
}
