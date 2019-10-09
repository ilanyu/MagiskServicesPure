.class Lcom/android/server/MasterClearReceiver$1;
.super Ljava/lang/Thread;
.source "MasterClearReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/MasterClearReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/MasterClearReceiver;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$intent:Landroid/content/Intent;


# direct methods
.method constructor <init>(Lcom/android/server/MasterClearReceiver;Ljava/lang/String;Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5
    .param p1, "this$0"    # Lcom/android/server/MasterClearReceiver;
    .param p2, "x0"    # Ljava/lang/String;

    .line 72
    iput-object p1, p0, Lcom/android/server/MasterClearReceiver$1;->this$0:Lcom/android/server/MasterClearReceiver;

    iput-object p3, p0, Lcom/android/server/MasterClearReceiver$1;->val$context:Landroid/content/Context;

    iput-object p4, p0, Lcom/android/server/MasterClearReceiver$1;->val$intent:Landroid/content/Intent;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 79
    :try_start_0
    iget-object v0, p0, Lcom/android/server/MasterClearReceiver$1;->val$context:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/MasterClearReceiver$1;->val$intent:Landroid/content/Intent;

    const-string v2, "format_sdcard"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/android/server/MasterClearReceiverInjector;->rebootFactoryReset(Landroid/content/Context;Z)V

    .line 80
    const-string v0, "MasterClear"

    const-string v1, "Still running after master clear?!"

    invoke-static {v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_15} :catch_1f
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_15} :catch_16

    goto :goto_27

    .line 83
    :catch_16
    move-exception v0

    .line 84
    .local v0, "e":Ljava/lang/SecurityException;
    const-string v1, "MasterClear"

    const-string v2, "Can\'t perform master clear/factory reset"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v0    # "e":Ljava/lang/SecurityException;
    goto :goto_28

    .line 81
    :catch_1f
    move-exception v0

    .line 82
    .local v0, "e":Ljava/io/IOException;
    const-string v1, "MasterClear"

    const-string v2, "Can\'t perform master clear/factory reset"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 85
    .end local v0    # "e":Ljava/io/IOException;
    :goto_27
    nop

    .line 86
    :goto_28
    return-void
.end method
