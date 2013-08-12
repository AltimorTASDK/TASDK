module UnrealScript.TribesGame.TrRank;

import ScriptClasses;
import UnrealScript.Core.UObject;

extern(C++) interface TrRank : UObject
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrRank")); }
	private static __gshared TrRank mDefaultProperties;
	@property final static TrRank DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrRank)("TrRank TribesGame.Default__TrRank")); }
	@property final auto ref
	{
		int IconIndex() { return *cast(int*)(cast(size_t)cast(void*)this + 64); }
		ScriptString FriendlyName() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 72); }
		int Rank() { return *cast(int*)(cast(size_t)cast(void*)this + 60); }
		int RequiredXP() { return *cast(int*)(cast(size_t)cast(void*)this + 68); }
	}
}
