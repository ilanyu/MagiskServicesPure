.class Lcom/android/server/display/ScreenEffectService$1;
.super Landroid/util/IntProperty;
.source "ScreenEffectService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/display/ScreenEffectService;->onBootPhase(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/IntProperty<",
        "Lmiui/hardware/display/DisplayFeatureManager;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/display/ScreenEffectService;


# direct methods
.method constructor <init>(Lcom/android/server/display/ScreenEffectService;Ljava/lang/String;)V
    .registers 3
    .param p1, "this$0"    # Lcom/android/server/display/ScreenEffectService;
    .param p2, "x0"    # Ljava/lang/String;

    .line 203
    iput-object p1, p0, Lcom/android/server/display/ScreenEffectService$1;->this$0:Lcom/android/server/display/ScreenEffectService;

    invoke-direct {p0, p2}, Landroid/util/IntProperty;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public get(Lmiui/hardware/display/DisplayFeatureManager;)Ljava/lang/Integer;
    .registers 3
    .param p1, "object"    # Lmiui/hardware/display/DisplayFeatureManager;

    .line 223
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 203
    check-cast p1, Lmiui/hardware/display/DisplayFeatureManager;

    invoke-virtual {p0, p1}, Lcom/android/server/display/ScreenEffectService$1;->get(Lmiui/hardware/display/DisplayFeatureManager;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setValue(Ljava/lang/Object;I)V
    .registers 3

    .line 203
    check-cast p1, Lmiui/hardware/display/DisplayFeatureManager;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/display/ScreenEffectService$1;->setValue(Lmiui/hardware/display/DisplayFeatureManager;I)V

    return-void
.end method

.method public setValue(Lmiui/hardware/display/DisplayFeatureManager;I)V
    .registers 6
    .param p1, "object"    # Lmiui/hardware/display/DisplayFeatureManager;
    .param p2, "value"    # I

    .line 208
    iget-object v0, p0, Lcom/android/server/display/ScreenEffectService$1;->this$0:Lcom/android/server/display/ScreenEffectService;

    # getter for: Lcom/android/server/display/ScreenEffectService;->mDisplayState:I
    invoke-static {v0}, Lcom/android/server/display/ScreenEffectService;->access$100(Lcom/android/server/display/ScreenEffectService;)I

    move-result v0

    const/4 v1, 0x3

    const/4 v2, 0x1

    if-eq v0, v2, :cond_1c

    if-gtz p2, :cond_18

    iget-object v0, p0, Lcom/android/server/display/ScreenEffectService$1;->this$0:Lcom/android/server/display/ScreenEffectService;

    .line 209
    # getter for: Lcom/android/server/display/ScreenEffectService;->mPaperModeAnimator:Lcom/android/server/display/MiuiRampAnimator;
    invoke-static {v0}, Lcom/android/server/display/ScreenEffectService;->access$200(Lcom/android/server/display/ScreenEffectService;)Lcom/android/server/display/MiuiRampAnimator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/display/MiuiRampAnimator;->isAnimating()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 210
    :cond_18
    invoke-virtual {p1, v1, p2}, Lmiui/hardware/display/DisplayFeatureManager;->setScreenEffect(II)V

    goto :goto_36

    .line 211
    :cond_1c
    # getter for: Lcom/android/server/display/ScreenEffectService;->IS_COMPATIBLE_PAPER_AND_SCREEN_EFFECT:Z
    invoke-static {}, Lcom/android/server/display/ScreenEffectService;->access$300()Z

    move-result v0

    if-eqz v0, :cond_36

    iget-object v0, p0, Lcom/android/server/display/ScreenEffectService$1;->this$0:Lcom/android/server/display/ScreenEffectService;

    .line 212
    # getter for: Lcom/android/server/display/ScreenEffectService;->mDisplayState:I
    invoke-static {v0}, Lcom/android/server/display/ScreenEffectService;->access$100(Lcom/android/server/display/ScreenEffectService;)I

    move-result v0

    if-eq v0, v2, :cond_36

    iget-object v0, p0, Lcom/android/server/display/ScreenEffectService$1;->this$0:Lcom/android/server/display/ScreenEffectService;

    # getter for: Lcom/android/server/display/ScreenEffectService;->mPaperModeEnabled:Z
    invoke-static {v0}, Lcom/android/server/display/ScreenEffectService;->access$400(Lcom/android/server/display/ScreenEffectService;)Z

    move-result v0

    if-nez v0, :cond_36

    .line 217
    const/4 v0, 0x0

    invoke-virtual {p1, v1, v0}, Lmiui/hardware/display/DisplayFeatureManager;->setScreenEffect(II)V

    .line 219
    :cond_36
    :goto_36
    return-void
.end method
