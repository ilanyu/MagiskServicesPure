.class Lcom/android/server/HandyMode$5;
.super Landroid/content/BroadcastReceiver;
.source "HandyMode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/HandyMode;->initialize(Landroid/content/Context;Lcom/android/server/input/InputManagerService;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 202
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 204
    sget-object v0, Lcom/android/server/HandyMode;->sContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "force_black_v2"

    invoke-static {v0, v1}, Landroid/provider/MiuiSettings$Global;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/HandyMode;->mHideNotch:Z

    .line 205
    sget-object v0, Lcom/android/server/HandyMode;->sHandyModeInputFilter:Lcom/android/server/MiuiInputFilter;

    new-instance v1, Landroid/graphics/Rect;

    .line 206
    # invokes: Lcom/android/server/HandyMode;->getSettingIconClickRect()Landroid/graphics/Rect;
    invoke-static {}, Lcom/android/server/HandyMode;->access$200()Landroid/graphics/Rect;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    sget-object v2, Lcom/android/server/HandyMode;->sSettingClickListener:Ljava/lang/Runnable;

    .line 205
    invoke-virtual {v0, v1, v2}, Lcom/android/server/MiuiInputFilter;->updateOutsideClickableRect(Landroid/graphics/Rect;Ljava/lang/Runnable;)V

    .line 207
    return-void
.end method
