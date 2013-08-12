module UnrealScript.UnrealEd.TransBuffer;

import ScriptClasses;
import UnrealScript.UnrealEd.Transactor;

extern(C++) interface TransBuffer : Transactor
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class UnrealEd.TransBuffer")); }
	private static __gshared TransBuffer mDefaultProperties;
	@property final static TransBuffer DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TransBuffer)("TransBuffer UnrealEd.Default__TransBuffer")); }
}
