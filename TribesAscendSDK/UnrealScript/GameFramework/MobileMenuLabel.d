module UnrealScript.GameFramework.MobileMenuLabel;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.Canvas;
import UnrealScript.Core.UObject;
import UnrealScript.GameFramework.MobileMenuObject;
import UnrealScript.Engine.Font;

extern(C++) interface MobileMenuLabel : MobileMenuObject
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class GameFramework.MobileMenuLabel")()); }
	private static __gshared MobileMenuLabel mDefaultProperties;
	@property final static MobileMenuLabel DefaultProperties() { mixin(MGDPC!(MobileMenuLabel, "MobileMenuLabel GameFramework.Default__MobileMenuLabel")()); }
	static struct Functions
	{
		private static __gshared ScriptFunction mRenderObject;
		public @property static final ScriptFunction RenderObject() { mixin(MGF!("mRenderObject", "Function GameFramework.MobileMenuLabel.RenderObject")()); }
	}
	@property final
	{
		auto ref
		{
			float TextYScale() { mixin(MGPC!("float", 160)()); }
			float TextXScale() { mixin(MGPC!("float", 156)()); }
			UObject.Color TouchedColor() { mixin(MGPC!("UObject.Color", 152)()); }
			UObject.Color TextColor() { mixin(MGPC!("UObject.Color", 148)()); }
			Font TextFont() { mixin(MGPC!("Font", 144)()); }
			ScriptString Caption() { mixin(MGPC!("ScriptString", 132)()); }
		}
		bool bAutoSize() { mixin(MGBPC!(164, 0x1)()); }
		bool bAutoSize(bool val) { mixin(MSBPC!(164, 0x1)()); }
	}
	final void RenderObject(Canvas pCanvas)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Canvas*)params.ptr = pCanvas;
		(cast(ScriptObject)this).ProcessEvent(Functions.RenderObject, params.ptr, cast(void*)0);
	}
}
