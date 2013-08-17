module UnrealScript.Engine.UIMapSummary;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.UIResourceDataProvider;

extern(C++) interface UIMapSummary : UIResourceDataProvider
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.UIMapSummary")()); }
	private static __gshared UIMapSummary mDefaultProperties;
	@property final static UIMapSummary DefaultProperties() { mixin(MGDPC!(UIMapSummary, "UIMapSummary Engine.Default__UIMapSummary")()); }
	@property final auto ref
	{
		ScriptString Description() { mixin(MGPC!("ScriptString", 160)()); }
		ScriptString DisplayName() { mixin(MGPC!("ScriptString", 148)()); }
		ScriptString ScreenshotPathName() { mixin(MGPC!("ScriptString", 136)()); }
		ScriptString MapName() { mixin(MGPC!("ScriptString", 124)()); }
	}
}
