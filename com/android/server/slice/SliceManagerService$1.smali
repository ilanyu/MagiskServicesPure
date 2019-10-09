.class Lcom/android/server/slice/SliceManagerService$1;
.super Landroid/content/BroadcastReceiver;
.source "SliceManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/slice/SliceManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/slice/SliceManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/slice/SliceManagerService;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/slice/SliceManagerService;

    .line 551
    iput-object p1, p0, Lcom/android/server/slice/SliceManagerService$1;->this$0:Lcom/android/server/slice/SliceManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 554
    const-string v0, "android.intent.extra.user_handle"

    const/16 v1, -0x2710

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 555
    .local v0, "userId":I
    if-ne v0, v1, :cond_21

    .line 556
    const-string v1, "SliceManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Intent broadcast does not contain user handle: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 557
    return-void

    .line 559
    :cond_21
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    .line 560
    .local v1, "data":Landroid/net/Uri;
    if-eqz v1, :cond_2c

    invoke-virtual {v1}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v2

    goto :goto_2d

    :cond_2c
    const/4 v2, 0x0

    .line 561
    .local v2, "pkg":Ljava/lang/String;
    :goto_2d
    if-nez v2, :cond_46

    .line 562
    const-string v3, "SliceManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Intent broadcast does not contain package name: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 563
    return-void

    .line 565
    :cond_46
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const/4 v4, -0x1

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v5

    const v6, 0xff13fb5

    const/4 v7, 0x0

    if-eq v5, v6, :cond_65

    const v6, 0x1f50b9c2

    if-eq v5, v6, :cond_5b

    goto :goto_6e

    :cond_5b
    const-string v5, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6e

    move v4, v7

    goto :goto_6e

    :cond_65
    const-string v5, "android.intent.action.PACKAGE_DATA_CLEARED"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6e

    const/4 v4, 0x1

    :cond_6e
    :goto_6e
    packed-switch v4, :pswitch_data_8e

    goto :goto_8d

    .line 574
    :pswitch_72
    iget-object v3, p0, Lcom/android/server/slice/SliceManagerService$1;->this$0:Lcom/android/server/slice/SliceManagerService;

    # getter for: Lcom/android/server/slice/SliceManagerService;->mPermissions:Lcom/android/server/slice/SlicePermissionManager;
    invoke-static {v3}, Lcom/android/server/slice/SliceManagerService;->access$000(Lcom/android/server/slice/SliceManagerService;)Lcom/android/server/slice/SlicePermissionManager;

    move-result-object v3

    invoke-virtual {v3, v2, v0}, Lcom/android/server/slice/SlicePermissionManager;->removePkg(Ljava/lang/String;I)V

    goto :goto_8d

    .line 567
    :pswitch_7c
    const-string v3, "android.intent.extra.REPLACING"

    .line 568
    invoke-virtual {p2, v3, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    .line 569
    .local v3, "replacing":Z
    if-nez v3, :cond_8d

    .line 570
    iget-object v4, p0, Lcom/android/server/slice/SliceManagerService$1;->this$0:Lcom/android/server/slice/SliceManagerService;

    # getter for: Lcom/android/server/slice/SliceManagerService;->mPermissions:Lcom/android/server/slice/SlicePermissionManager;
    invoke-static {v4}, Lcom/android/server/slice/SliceManagerService;->access$000(Lcom/android/server/slice/SliceManagerService;)Lcom/android/server/slice/SlicePermissionManager;

    move-result-object v4

    invoke-virtual {v4, v2, v0}, Lcom/android/server/slice/SlicePermissionManager;->removePkg(Ljava/lang/String;I)V

    .line 577
    .end local v3    # "replacing":Z
    :cond_8d
    :goto_8d
    return-void

    :pswitch_data_8e
    .packed-switch 0x0
        :pswitch_7c
        :pswitch_72
    .end packed-switch
.end method
