.class Lcom/miui/server/MiuiInitServer$BootCompletedReceiver$1;
.super Ljava/lang/Thread;
.source "MiuiInitServer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/server/MiuiInitServer$BootCompletedReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/miui/server/MiuiInitServer$BootCompletedReceiver;


# direct methods
.method constructor <init>(Lcom/miui/server/MiuiInitServer$BootCompletedReceiver;)V
    .registers 2
    .param p1, "this$1"    # Lcom/miui/server/MiuiInitServer$BootCompletedReceiver;

    .line 78
    iput-object p1, p0, Lcom/miui/server/MiuiInitServer$BootCompletedReceiver$1;->this$1:Lcom/miui/server/MiuiInitServer$BootCompletedReceiver;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 86
    const-wide/32 v0, 0x2bf20

    :try_start_3
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_6
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_6} :catch_7

    .line 88
    goto :goto_8

    .line 87
    :catch_7
    move-exception v0

    .line 93
    :goto_8
    iget-object v0, p0, Lcom/miui/server/MiuiInitServer$BootCompletedReceiver$1;->this$1:Lcom/miui/server/MiuiInitServer$BootCompletedReceiver;

    iget-object v0, v0, Lcom/miui/server/MiuiInitServer$BootCompletedReceiver;->this$0:Lcom/miui/server/MiuiInitServer;

    # getter for: Lcom/miui/server/MiuiInitServer;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/miui/server/MiuiInitServer;->access$100(Lcom/miui/server/MiuiInitServer;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/pm/PreinstallApp;->installNewUpdatedSystemPreinstallApps(Landroid/content/Context;)V

    .line 94
    return-void
.end method
