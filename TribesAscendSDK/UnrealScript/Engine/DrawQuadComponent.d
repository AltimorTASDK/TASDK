module UnrealScript.Engine.DrawQuadComponent;

import ScriptClasses;
import UnrealScript.Engine.PrimitiveComponent;
import UnrealScript.Engine.Texture;

extern(C++) interface DrawQuadComponent : PrimitiveComponent
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.DrawQuadComponent")); }
	private static __gshared DrawQuadComponent mDefaultProperties;
	@property final static DrawQuadComponent DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(DrawQuadComponent)("DrawQuadComponent Engine.Default__DrawQuadComponent")); }
	@property final auto ref
	{
		float Height() { return *cast(float*)(cast(size_t)cast(void*)this + 496); }
		float Width() { return *cast(float*)(cast(size_t)cast(void*)this + 492); }
		// WARNING: Property 'Texture' has the same name as a defined type!
	}
}
