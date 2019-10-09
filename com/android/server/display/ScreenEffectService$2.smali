.class Lcom/android/server/display/ScreenEffectService$2;
.super Lmiui/hardware/display/IDisplayFeatureCallback$Stub;
.source "ScreenEffectService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/display/ScreenEffectService;->onBootPhase(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/display/ScreenEffectService;


# direct methods
.method constructor <init>(Lcom/android/server/display/ScreenEffectService;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/display/ScreenEffectService;

    .line 237
    iput-object p1, p0, Lcom/android/server/display/ScreenEffectService$2;->this$0:Lcom/android/server/display/ScreenEffectService;

    invoke-direct {p0}, Lmiui/hardware/display/IDisplayFeatureCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public varargs displayfeatureInfoChanged(I[Ljava/lang/Object;)V
    .registers 8
    .param p1, "caseId"    # I
    .param p2, "params"    # [Ljava/lang/Object;

    .line 240
    array-length v0, p2

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-lez v0, :cond_48

    .line 241
    const/16 v0, 0x2710

    if-ne p1, v0, :cond_1f

    .line 242
    iget-object v0, p0, Lcom/android/server/display/ScreenEffectService$2;->this$0:Lcom/android/server/display/ScreenEffectService;

    # getter for: Lcom/android/server/display/ScreenEffectService;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/server/display/ScreenEffectService;->access$500(Lcom/android/server/display/ScreenEffectService;)Landroid/os/Handler;

    move-result-object v0

    const/4 v3, 0x6

    aget-object v4, p2, v2

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v0, v3, v4, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 244
    :cond_1f
    iget-object v0, p0, Lcom/android/server/display/ScreenEffectService$2;->this$0:Lcom/android/server/display/ScreenEffectService;

    # getter for: Lcom/android/server/display/ScreenEffectService;->mBrightnessHandler:Lcom/android/server/display/ScreenEffectService$BrightnessHandler;
    invoke-static {v0}, Lcom/android/server/display/ScreenEffectService;->access$600(Lcom/android/server/display/ScreenEffectService;)Lcom/android/server/display/ScreenEffectService$BrightnessHandler;

    move-result-object v0

    if-eqz v0, :cond_48

    if-nez p1, :cond_48

    .line 245
    iget-object v0, p0, Lcom/android/server/display/ScreenEffectService$2;->this$0:Lcom/android/server/display/ScreenEffectService;

    # getter for: Lcom/android/server/display/ScreenEffectService;->mBrightnessHandler:Lcom/android/server/display/ScreenEffectService$BrightnessHandler;
    invoke-static {v0}, Lcom/android/server/display/ScreenEffectService;->access$600(Lcom/android/server/display/ScreenEffectService;)Lcom/android/server/display/ScreenEffectService$BrightnessHandler;

    move-result-object v0

    iget-object v3, p0, Lcom/android/server/display/ScreenEffectService$2;->this$0:Lcom/android/server/display/ScreenEffectService;

    # getter for: Lcom/android/server/display/ScreenEffectService;->mBrightnessHandler:Lcom/android/server/display/ScreenEffectService$BrightnessHandler;
    invoke-static {v3}, Lcom/android/server/display/ScreenEffectService;->access$600(Lcom/android/server/display/ScreenEffectService;)Lcom/android/server/display/ScreenEffectService$BrightnessHandler;

    move-result-object v3

    aget-object v4, p2, v2

    check-cast v4, Ljava/lang/Integer;

    .line 246
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 245
    invoke-static {v3, v1, v4}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/server/display/ScreenEffectService$BrightnessHandler;->sendMessage(Landroid/os/Message;)Z

    .line 249
    :cond_48
    const/16 v0, 0x4e20

    if-ne p1, v0, :cond_78

    array-length v0, p2

    const/4 v3, 0x4

    if-lt v0, v3, :cond_78

    .line 250
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    .line 251
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    aget-object v1, p2, v1

    iput-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 252
    const/4 v1, 0x2

    aget-object v1, p2, v1

    iput-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 253
    const/4 v1, 0x3

    aget-object v1, p2, v1

    iput-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    .line 254
    iget-object v1, p0, Lcom/android/server/display/ScreenEffectService$2;->this$0:Lcom/android/server/display/ScreenEffectService;

    # getter for: Lcom/android/server/display/ScreenEffectService;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/server/display/ScreenEffectService;->access$500(Lcom/android/server/display/ScreenEffectService;)Landroid/os/Handler;

    move-result-object v1

    const/4 v3, 0x7

    aget-object v4, p2, v2

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v1, v3, v4, v2, v0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 256
    .end local v0    # "args":Lcom/android/internal/os/SomeArgs;
    :cond_78
    return-void
.end method
