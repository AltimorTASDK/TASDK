module UnrealScript.UDKBase.UDKAnimBlendByWeapType;

import ScriptClasses;
import UnrealScript.Engine.AnimNodeBlendPerBone;

extern(C++) interface UDKAnimBlendByWeapType : AnimNodeBlendPerBone
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class UDKBase.UDKAnimBlendByWeapType")); }
}
