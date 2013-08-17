module UnrealScript.Engine.SeqVar_ObjectVolume;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.SeqVar_Object;

extern(C++) interface SeqVar_ObjectVolume : SeqVar_Object
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.SeqVar_ObjectVolume")()); }
	private static __gshared SeqVar_ObjectVolume mDefaultProperties;
	@property final static SeqVar_ObjectVolume DefaultProperties() { mixin(MGDPC!(SeqVar_ObjectVolume, "SeqVar_ObjectVolume Engine.Default__SeqVar_ObjectVolume")()); }
	@property final
	{
		auto ref
		{
			ScriptArray!(UObject) ContainedObjects() { mixin(MGPC!(ScriptArray!(UObject), 180)()); }
			ScriptArray!(ScriptClass) ExcludeClassList() { mixin(MGPC!(ScriptArray!(ScriptClass), 192)()); }
			float LastUpdateTime() { mixin(MGPC!(float, 176)()); }
		}
		bool bCollidingOnly() { mixin(MGBPC!(204, 0x1)()); }
		bool bCollidingOnly(bool val) { mixin(MSBPC!(204, 0x1)()); }
	}
}
