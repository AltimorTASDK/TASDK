module UnrealScript.Engine.ArrowComponent;

import ScriptClasses;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.PrimitiveComponent;

extern(C++) interface ArrowComponent : PrimitiveComponent
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.ArrowComponent")); }
	private static __gshared ArrowComponent mDefaultProperties;
	@property final static ArrowComponent DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(ArrowComponent)("ArrowComponent Engine.Default__ArrowComponent")); }
	@property final
	{
		auto ref
		{
			float ArrowSize() { return *cast(float*)(cast(size_t)cast(void*)this + 492); }
			UObject.Color ArrowColor() { return *cast(UObject.Color*)(cast(size_t)cast(void*)this + 488); }
		}
		bool bTreatAsASprite() { return (*cast(uint*)(cast(size_t)cast(void*)this + 496) & 0x1) != 0; }
		bool bTreatAsASprite(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 496) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 496) &= ~0x1; } return val; }
	}
}
