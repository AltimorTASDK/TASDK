module UnrealScript.Engine.SeqVar_Group;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.SeqVar_Object;

extern(C++) interface SeqVar_Group : SeqVar_Object
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.SeqVar_Group")()); }
	private static __gshared SeqVar_Group mDefaultProperties;
	@property final static SeqVar_Group DefaultProperties() { mixin(MGDPC!(SeqVar_Group, "SeqVar_Group Engine.Default__SeqVar_Group")()); }
	@property final
	{
		auto ref
		{
			ScriptArray!(UObject) Actors() { mixin(MGPC!(ScriptArray!(UObject), 188)()); }
			ScriptName GroupName() { mixin(MGPC!(ScriptName, 176)()); }
		}
		bool bCachedList() { mixin(MGBPC!(184, 0x1)()); }
		bool bCachedList(bool val) { mixin(MSBPC!(184, 0x1)()); }
	}
}
