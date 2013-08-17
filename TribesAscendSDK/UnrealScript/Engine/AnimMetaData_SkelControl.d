module UnrealScript.Engine.AnimMetaData_SkelControl;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.AnimMetaData;

extern(C++) interface AnimMetaData_SkelControl : AnimMetaData
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class Engine.AnimMetaData_SkelControl")); }
	private static __gshared AnimMetaData_SkelControl mDefaultProperties;
	@property final static AnimMetaData_SkelControl DefaultProperties() { mixin(MGDPC("AnimMetaData_SkelControl", "AnimMetaData_SkelControl Engine.Default__AnimMetaData_SkelControl")); }
	@property final
	{
		auto ref
		{
			ScriptArray!(ScriptName) SkelControlNameList() { mixin(MGPC("ScriptArray!(ScriptName)", 60)); }
			ScriptName SkelControlName() { mixin(MGPC("ScriptName", 76)); }
		}
		bool bFullControlOverController() { mixin(MGBPC(72, 0x1)); }
		bool bFullControlOverController(bool val) { mixin(MSBPC(72, 0x1)); }
	}
}
