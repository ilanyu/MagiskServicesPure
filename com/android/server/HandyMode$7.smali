.class Lcom/android/server/HandyMode$7;
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

    .line 215
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 217
    const-string/jumbo v0, "mode"

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 218
    .local v0, "newMode":I
    sget-object v1, Lcom/android/server/HandyMode;->sHandyModeInputFilter:Lcom/android/server/MiuiInputFilter;

    invoke-virtual {v1}, Lcom/android/server/MiuiInputFilter;->isInstalled()Z

    move-result v1

    if-eqz v1, :cond_25

    .line 219
    invoke-static {}, Lcom/android/server/HandyMode;->getMode()I

    move-result v1

    if-nez v1, :cond_22

    sget-object v1, Lcom/android/server/HandyMode;->sHandyModeUtils:Lmiui/util/HandyModeUtils;

    invoke-virtual {v1}, Lmiui/util/HandyModeUtils;->isEnterDirect()Z

    move-result v1

    if-nez v1, :cond_22

    .line 220
    invoke-static {v0}, Lcom/android/server/HandyMode;->alertToEnter(I)V

    goto :goto_25

    .line 222
    :cond_22
    invoke-static {v0}, Lcom/android/server/HandyMode;->changeMode(I)V

    .line 225
    :cond_25
    :goto_25
    return-void
.end method
