.class Lcom/android/server/display/PaperModeService$ScreenOnReceiver;
.super Landroid/content/BroadcastReceiver;
.source "PaperModeService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/PaperModeService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ScreenOnReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/display/PaperModeService;


# direct methods
.method private constructor <init>(Lcom/android/server/display/PaperModeService;)V
    .registers 2

    .line 134
    iput-object p1, p0, Lcom/android/server/display/PaperModeService$ScreenOnReceiver;->this$0:Lcom/android/server/display/PaperModeService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/display/PaperModeService;Lcom/android/server/display/PaperModeService$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/android/server/display/PaperModeService;
    .param p2, "x1"    # Lcom/android/server/display/PaperModeService$1;

    .line 134
    invoke-direct {p0, p1}, Lcom/android/server/display/PaperModeService$ScreenOnReceiver;-><init>(Lcom/android/server/display/PaperModeService;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 138
    iget-object v0, p0, Lcom/android/server/display/PaperModeService$ScreenOnReceiver;->this$0:Lcom/android/server/display/PaperModeService;

    # getter for: Lcom/android/server/display/PaperModeService;->mPaperModeTimeEnabled:Z
    invoke-static {v0}, Lcom/android/server/display/PaperModeService;->access$500(Lcom/android/server/display/PaperModeService;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 139
    iget-object v0, p0, Lcom/android/server/display/PaperModeService$ScreenOnReceiver;->this$0:Lcom/android/server/display/PaperModeService;

    # getter for: Lcom/android/server/display/PaperModeService;->mPaperModeEnabled:Z
    invoke-static {v0}, Lcom/android/server/display/PaperModeService;->access$600(Lcom/android/server/display/PaperModeService;)Z

    move-result v0

    invoke-static {v0}, Landroid/provider/MiuiSettings$ScreenEffect;->setScreenPaperMode(Z)V

    .line 141
    :cond_11
    return-void
.end method
