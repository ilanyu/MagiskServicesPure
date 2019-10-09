.class Lcom/android/server/display/PaperModeService$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "PaperModeService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/PaperModeService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SettingsObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/display/PaperModeService;


# direct methods
.method public constructor <init>(Lcom/android/server/display/PaperModeService;Landroid/os/Handler;)V
    .registers 3
    .param p2, "handler"    # Landroid/os/Handler;

    .line 102
    iput-object p1, p0, Lcom/android/server/display/PaperModeService$SettingsObserver;->this$0:Lcom/android/server/display/PaperModeService;

    .line 103
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 104
    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .registers 4
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .line 108
    iget-object v0, p0, Lcom/android/server/display/PaperModeService$SettingsObserver;->this$0:Lcom/android/server/display/PaperModeService;

    # invokes: Lcom/android/server/display/PaperModeService;->updateSettings()V
    invoke-static {v0}, Lcom/android/server/display/PaperModeService;->access$300(Lcom/android/server/display/PaperModeService;)V

    .line 109
    # getter for: Lcom/android/server/display/PaperModeService;->URI_PAPER_MODE_ENABLE:Landroid/net/Uri;
    invoke-static {}, Lcom/android/server/display/PaperModeService;->access$400()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 110
    iget-object v0, p0, Lcom/android/server/display/PaperModeService$SettingsObserver;->this$0:Lcom/android/server/display/PaperModeService;

    # invokes: Lcom/android/server/display/PaperModeService;->updatePaperMode()V
    invoke-static {v0}, Lcom/android/server/display/PaperModeService;->access$200(Lcom/android/server/display/PaperModeService;)V

    .line 112
    :cond_14
    return-void
.end method
