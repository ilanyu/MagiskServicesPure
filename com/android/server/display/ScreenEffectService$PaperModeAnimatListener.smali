.class Lcom/android/server/display/ScreenEffectService$PaperModeAnimatListener;
.super Ljava/lang/Object;
.source "ScreenEffectService.java"

# interfaces
.implements Lcom/android/server/display/MiuiRampAnimator$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/ScreenEffectService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PaperModeAnimatListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/display/ScreenEffectService;


# direct methods
.method constructor <init>(Lcom/android/server/display/ScreenEffectService;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/display/ScreenEffectService;

    .line 856
    iput-object p1, p0, Lcom/android/server/display/ScreenEffectService$PaperModeAnimatListener;->this$0:Lcom/android/server/display/ScreenEffectService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd()V
    .registers 3

    .line 859
    iget-object v0, p0, Lcom/android/server/display/ScreenEffectService$PaperModeAnimatListener;->this$0:Lcom/android/server/display/ScreenEffectService;

    # getter for: Lcom/android/server/display/ScreenEffectService;->mDisplayState:I
    invoke-static {v0}, Lcom/android/server/display/ScreenEffectService;->access$100(Lcom/android/server/display/ScreenEffectService;)I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_14

    # getter for: Lcom/android/server/display/ScreenEffectService;->IS_COMPATIBLE_PAPER_AND_SCREEN_EFFECT:Z
    invoke-static {}, Lcom/android/server/display/ScreenEffectService;->access$300()Z

    move-result v0

    if-nez v0, :cond_14

    .line 860
    iget-object v0, p0, Lcom/android/server/display/ScreenEffectService$PaperModeAnimatListener;->this$0:Lcom/android/server/display/ScreenEffectService;

    # invokes: Lcom/android/server/display/ScreenEffectService;->updateScreenOptimize()V
    invoke-static {v0}, Lcom/android/server/display/ScreenEffectService;->access$1100(Lcom/android/server/display/ScreenEffectService;)V

    .line 862
    :cond_14
    return-void
.end method
