.class Lcom/android/server/wm/WindowManagerService$8;
.super Ljava/lang/Object;
.source "WindowManagerService.java"

# interfaces
.implements Lcom/android/server/policy/MiuiPhoneWindowManager$MIUIWatermarkCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/wm/WindowManagerService;->onInitReady()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wm/WindowManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/wm/WindowManagerService;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/wm/WindowManagerService;

    .line 1234
    iput-object p1, p0, Lcom/android/server/wm/WindowManagerService$8;->this$0:Lcom/android/server/wm/WindowManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onHideWatermark()V
    .registers 2

    .line 1250
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService$8;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mMIUIWatermark:Lcom/android/server/wm/MIUIWatermark;

    if-eqz v0, :cond_d

    .line 1251
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService$8;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mMIUIWatermark:Lcom/android/server/wm/MIUIWatermark;

    invoke-virtual {v0}, Lcom/android/server/wm/MIUIWatermark;->hideWaterMarker()V

    .line 1253
    :cond_d
    return-void
.end method

.method public onShowWatermark()V
    .registers 3

    .line 1237
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService$8;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mMIUIWatermark:Lcom/android/server/wm/MIUIWatermark;

    if-eqz v0, :cond_17

    .line 1238
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService$8;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mMIUIWatermark:Lcom/android/server/wm/MIUIWatermark;

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService$8;->this$0:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/MIUIWatermark;->updateText(Lcom/android/server/wm/WindowManagerService;)V

    .line 1239
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService$8;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mMIUIWatermark:Lcom/android/server/wm/MIUIWatermark;

    invoke-virtual {v0}, Lcom/android/server/wm/MIUIWatermark;->showWaterMarker()V

    .line 1240
    return-void

    .line 1242
    :cond_17
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService$8;->this$0:Lcom/android/server/wm/WindowManagerService;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/server/wm/WindowManagerService;->enableMIUIWatermark:Z

    .line 1243
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService$8;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v0, v0, Lcom/android/server/wm/WindowManagerService;->mSystemBooted:Z

    if-eqz v0, :cond_33

    .line 1244
    const-string v0, "WindowManager"

    const-string v1, "initwatermark!"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1245
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService$8;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService$8;->this$0:Lcom/android/server/wm/WindowManagerService;

    invoke-static {v1}, Lcom/android/server/wm/MIUIWatermark;->initWatermark(Lcom/android/server/wm/WindowManagerService;)Lcom/android/server/wm/MIUIWatermark;

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/wm/WindowManagerService;->mMIUIWatermark:Lcom/android/server/wm/MIUIWatermark;

    .line 1247
    :cond_33
    return-void
.end method
