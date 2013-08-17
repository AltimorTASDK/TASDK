module UnrealScript.Engine.SeqVar_Player;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.SeqVar_Object;

extern(C++) interface SeqVar_Player : SeqVar_Object
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.SeqVar_Player")()); }
	private static __gshared SeqVar_Player mDefaultProperties;
	@property final static SeqVar_Player DefaultProperties() { mixin(MGDPC!(SeqVar_Player, "SeqVar_Player Engine.Default__SeqVar_Player")()); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mUpdatePlayersList;
			ScriptFunction mGetObjectValue;
		}
		public @property static final
		{
			ScriptFunction UpdatePlayersList() { mixin(MGF!("mUpdatePlayersList", "Function Engine.SeqVar_Player.UpdatePlayersList")()); }
			ScriptFunction GetObjectValue() { mixin(MGF!("mGetObjectValue", "Function Engine.SeqVar_Player.GetObjectValue")()); }
		}
	}
	@property final
	{
		auto ref
		{
			ScriptArray!(UObject) Players() { mixin(MGPC!(ScriptArray!(UObject), 176)()); }
			int PlayerIdx() { mixin(MGPC!(int, 192)()); }
		}
		bool bAllPlayers() { mixin(MGBPC!(188, 0x1)()); }
		bool bAllPlayers(bool val) { mixin(MSBPC!(188, 0x1)()); }
	}
final:
	void UpdatePlayersList()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.UpdatePlayersList, cast(void*)0, cast(void*)0);
	}
	UObject GetObjectValue()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetObjectValue, params.ptr, cast(void*)0);
		return *cast(UObject*)params.ptr;
	}
}
