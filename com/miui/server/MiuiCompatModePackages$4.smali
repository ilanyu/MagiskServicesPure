.class Lcom/miui/server/MiuiCompatModePackages$4;
.super Lcom/miui/server/MiuiCompatModePackages$AppLaunchObserver;
.source "MiuiCompatModePackages.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/server/MiuiCompatModePackages;->handleRegisterObservers()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/server/MiuiCompatModePackages;


# direct methods
.method constructor <init>(Lcom/miui/server/MiuiCompatModePackages;)V
    .registers 3
    .param p1, "this$0"    # Lcom/miui/server/MiuiCompatModePackages;

    .line 891
    iput-object p1, p0, Lcom/miui/server/MiuiCompatModePackages$4;->this$0:Lcom/miui/server/MiuiCompatModePackages;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/miui/server/MiuiCompatModePackages$AppLaunchObserver;-><init>(Lcom/miui/server/MiuiCompatModePackages$1;)V

    return-void
.end method


# virtual methods
.method protected onFirstLaunch(Ljava/lang/String;)V
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;

    .line 894
    iget-object v0, p0, Lcom/miui/server/MiuiCompatModePackages$4;->this$0:Lcom/miui/server/MiuiCompatModePackages;

    # getter for: Lcom/miui/server/MiuiCompatModePackages;->mHandler:Lcom/miui/server/MiuiCompatModePackages$CompatHandler;
    invoke-static {v0}, Lcom/miui/server/MiuiCompatModePackages;->access$1500(Lcom/miui/server/MiuiCompatModePackages;)Lcom/miui/server/MiuiCompatModePackages$CompatHandler;

    move-result-object v0

    const/16 v1, 0x68

    invoke-virtual {v0, v1}, Lcom/miui/server/MiuiCompatModePackages$CompatHandler;->removeMessages(I)V

    .line 895
    iget-object v0, p0, Lcom/miui/server/MiuiCompatModePackages$4;->this$0:Lcom/miui/server/MiuiCompatModePackages;

    # getter for: Lcom/miui/server/MiuiCompatModePackages;->mHandler:Lcom/miui/server/MiuiCompatModePackages$CompatHandler;
    invoke-static {v0}, Lcom/miui/server/MiuiCompatModePackages;->access$1500(Lcom/miui/server/MiuiCompatModePackages;)Lcom/miui/server/MiuiCompatModePackages$CompatHandler;

    move-result-object v0

    iget-object v2, p0, Lcom/miui/server/MiuiCompatModePackages$4;->this$0:Lcom/miui/server/MiuiCompatModePackages;

    # getter for: Lcom/miui/server/MiuiCompatModePackages;->mHandler:Lcom/miui/server/MiuiCompatModePackages$CompatHandler;
    invoke-static {v2}, Lcom/miui/server/MiuiCompatModePackages;->access$1500(Lcom/miui/server/MiuiCompatModePackages;)Lcom/miui/server/MiuiCompatModePackages$CompatHandler;

    move-result-object v2

    invoke-static {v2, v1, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Lcom/miui/server/MiuiCompatModePackages$CompatHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 896
    return-void
.end method
