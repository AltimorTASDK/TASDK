module UnrealScript.Engine.MorphNodeBase;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.AnimObject;

extern(C++) interface MorphNodeBase : AnimObject
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.MorphNodeBase")()); }
	private static __gshared MorphNodeBase mDefaultProperties;
	@property final static MorphNodeBase DefaultProperties() { mixin(MGDPC!(MorphNodeBase, "MorphNodeBase Engine.Default__MorphNodeBase")()); }
	@property final
	{
		@property final auto ref ScriptName NodeName() { mixin(MGPC!(ScriptName, 96)()); }
		bool bDrawSlider() { mixin(MGBPC!(104, 0x1)()); }
		bool bDrawSlider(bool val) { mixin(MSBPC!(104, 0x1)()); }
	}
}
