.class Lcom/android/server/display/PaperModeService$UserSwitchReceiver;
.super Landroid/content/BroadcastReceiver;
.source "PaperModeService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/PaperModeService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UserSwitchReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/display/PaperModeService;


# direct methods
.method private constructor <init>(Lcom/android/server/display/PaperModeService;)V
    .registers 2

    .line 126
    iput-object p1, p0, Lcom/android/server/display/PaperModeService$UserSwitchReceiver;->this$0:Lcom/android/server/display/PaperModeService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/display/PaperModeService;Lcom/android/server/display/PaperModeService$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/android/server/display/PaperModeService;
    .param p2, "x1"    # Lcom/android/server/display/PaperModeService$1;

    .line 126
    invoke-direct {p0, p1}, Lcom/android/server/display/PaperModeService$UserSwitchReceiver;-><init>(Lcom/android/server/display/PaperModeService;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 129
    iget-object v0, p0, Lcom/android/server/display/PaperModeService$UserSwitchReceiver;->this$0:Lcom/android/server/display/PaperModeService;

    # invokes: Lcom/android/server/display/PaperModeService;->updateSettings()V
    invoke-static {v0}, Lcom/android/server/display/PaperModeService;->access$300(Lcom/android/server/display/PaperModeService;)V

    .line 130
    iget-object v0, p0, Lcom/android/server/display/PaperModeService$UserSwitchReceiver;->this$0:Lcom/android/server/display/PaperModeService;

    # invokes: Lcom/android/server/display/PaperModeService;->updatePaperMode()V
    invoke-static {v0}, Lcom/android/server/display/PaperModeService;->access$200(Lcom/android/server/display/PaperModeService;)V

    .line 131
    return-void
.end method
