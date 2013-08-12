module UnrealScript.Engine.MorphNodeBase;

import ScriptClasses;
import UnrealScript.Engine.AnimObject;

extern(C++) interface MorphNodeBase : AnimObject
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.MorphNodeBase")); }
	private static __gshared MorphNodeBase mDefaultProperties;
	@property final static MorphNodeBase DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(MorphNodeBase)("MorphNodeBase Engine.Default__MorphNodeBase")); }
	@property final
	{
		@property final auto ref ScriptName NodeName() { return *cast(ScriptName*)(cast(size_t)cast(void*)this + 96); }
		bool bDrawSlider() { return (*cast(uint*)(cast(size_t)cast(void*)this + 104) & 0x1) != 0; }
		bool bDrawSlider(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 104) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 104) &= ~0x1; } return val; }
	}
}
