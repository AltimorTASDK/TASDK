module UnrealScript.Engine.CylinderComponent;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.PrimitiveComponent;

extern(C++) interface CylinderComponent : PrimitiveComponent
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.CylinderComponent")()); }
	private static __gshared CylinderComponent mDefaultProperties;
	@property final static CylinderComponent DefaultProperties() { mixin(MGDPC!(CylinderComponent, "CylinderComponent Engine.Default__CylinderComponent")()); }
	static struct Functions
	{
		private static __gshared ScriptFunction mSetCylinderSize;
		public @property static final ScriptFunction SetCylinderSize() { mixin(MGF!("mSetCylinderSize", "Function Engine.CylinderComponent.SetCylinderSize")()); }
	}
	@property final
	{
		auto ref
		{
			UObject.Color CylinderColor() { mixin(MGPC!("UObject.Color", 496)()); }
			float CollisionRadius() { mixin(MGPC!("float", 492)()); }
			float CollisionHeight() { mixin(MGPC!("float", 488)()); }
		}
		bool bAlwaysRenderIfSelected() { mixin(MGBPC!(500, 0x4)()); }
		bool bAlwaysRenderIfSelected(bool val) { mixin(MSBPC!(500, 0x4)()); }
		bool bDrawNonColliding() { mixin(MGBPC!(500, 0x2)()); }
		bool bDrawNonColliding(bool val) { mixin(MSBPC!(500, 0x2)()); }
		bool bDrawBoundingBox() { mixin(MGBPC!(500, 0x1)()); }
		bool bDrawBoundingBox(bool val) { mixin(MSBPC!(500, 0x1)()); }
	}
	final void SetCylinderSize(float NewRadius, float NewHeight)
	{
		ubyte params[8];
		params[] = 0;
		*cast(float*)params.ptr = NewRadius;
		*cast(float*)&params[4] = NewHeight;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetCylinderSize, params.ptr, cast(void*)0);
	}
}
