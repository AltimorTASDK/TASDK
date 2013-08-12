module UnrealScript.Engine.ParticleModuleSourceMovement;

import ScriptClasses;
import UnrealScript.Engine.ParticleModuleLocationBase;
import UnrealScript.Core.DistributionVector;

extern(C++) interface ParticleModuleSourceMovement : ParticleModuleLocationBase
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.ParticleModuleSourceMovement")); }
	private static __gshared ParticleModuleSourceMovement mDefaultProperties;
	@property final static ParticleModuleSourceMovement DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(ParticleModuleSourceMovement)("ParticleModuleSourceMovement Engine.Default__ParticleModuleSourceMovement")); }
	@property final auto ref DistributionVector.RawDistributionVector SourceMovementScale() { return *cast(DistributionVector.RawDistributionVector*)(cast(size_t)cast(void*)this + 72); }
}
