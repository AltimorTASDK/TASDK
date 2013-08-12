module UnrealScript.TribesGame.TrPhysicalMaterialProperty;

import ScriptClasses;
import UnrealScript.Engine.PhysicalMaterialPropertyBase;

extern(C++) interface TrPhysicalMaterialProperty : PhysicalMaterialPropertyBase
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrPhysicalMaterialProperty")); }
	private static __gshared TrPhysicalMaterialProperty mDefaultProperties;
	@property final static TrPhysicalMaterialProperty DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrPhysicalMaterialProperty)("TrPhysicalMaterialProperty TribesGame.Default__TrPhysicalMaterialProperty")); }
	@property final auto ref ScriptName MaterialType() { return *cast(ScriptName*)(cast(size_t)cast(void*)this + 60); }
}
