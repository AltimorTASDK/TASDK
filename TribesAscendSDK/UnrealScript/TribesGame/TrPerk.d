module UnrealScript.TribesGame.TrPerk;

import ScriptClasses;
import UnrealScript.TribesGame.TrDevice;

extern(C++) interface TrPerk : TrDevice
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrPerk")); }
	private static __gshared TrPerk mDefaultProperties;
	@property final static TrPerk DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrPerk)("TrPerk TribesGame.Default__TrPerk")); }
	@property final
	{
		bool bFree() { return (*cast(uint*)(cast(size_t)cast(void*)this + 2148) & 0x1) != 0; }
		bool bFree(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 2148) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 2148) &= ~0x1; } return val; }
	}
}
