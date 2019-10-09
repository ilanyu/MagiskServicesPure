.class Lcom/android/server/media/MediaSessionService$1;
.super Landroid/content/BroadcastReceiver;
.source "MediaSessionService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/media/MediaSessionService;->registerPackageBroadcastReceivers()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/media/MediaSessionService;


# direct methods
.method constructor <init>(Lcom/android/server/media/MediaSessionService;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/media/MediaSessionService;

    .line 469
    iput-object p1, p0, Lcom/android/server/media/MediaSessionService$1;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 472
    const-string v0, "android.intent.extra.user_handle"

    const/16 v1, -0x2710

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 474
    .local v0, "changeUserId":I
    if-ne v0, v1, :cond_21

    .line 475
    const-string v1, "MediaSessionService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Intent broadcast does not contain user handle: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 476
    return-void

    .line 479
    :cond_21
    const-string v1, "android.intent.extra.REPLACING"

    const/4 v2, 0x0

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 483
    .local v1, "isReplacing":Z
    sget-boolean v3, Lcom/android/server/media/MediaSessionService;->DEBUG:Z

    if-eqz v3, :cond_42

    .line 484
    const-string v3, "MediaSessionService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Received change in packages, intent="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 486
    :cond_42
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const/4 v4, -0x1

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v5

    sparse-switch v5, :sswitch_data_ac

    goto :goto_9e

    :sswitch_4f
    const-string v5, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9e

    goto :goto_9f

    :sswitch_58
    const-string v2, "android.intent.action.PACKAGES_UNSUSPENDED"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9e

    const/4 v2, 0x6

    goto :goto_9f

    :sswitch_62
    const-string v2, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9e

    const/4 v2, 0x1

    goto :goto_9f

    :sswitch_6c
    const-string v2, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9e

    const/4 v2, 0x4

    goto :goto_9f

    :sswitch_76
    const-string v2, "android.intent.action.PACKAGE_REPLACED"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9e

    const/4 v2, 0x7

    goto :goto_9f

    :sswitch_80
    const-string v2, "android.intent.action.PACKAGES_SUSPENDED"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9e

    const/4 v2, 0x5

    goto :goto_9f

    :sswitch_8a
    const-string v2, "android.intent.action.EXTERNAL_APPLICATIONS_AVAILABLE"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9e

    const/4 v2, 0x2

    goto :goto_9f

    :sswitch_94
    const-string v2, "android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9e

    const/4 v2, 0x3

    goto :goto_9f

    :cond_9e
    :goto_9e
    move v2, v4

    :goto_9f
    packed-switch v2, :pswitch_data_ce

    goto :goto_ab

    .line 491
    :pswitch_a3
    if-eqz v1, :cond_a6

    .line 504
    goto :goto_ab

    .line 511
    :cond_a6
    :pswitch_a6
    iget-object v2, p0, Lcom/android/server/media/MediaSessionService$1;->this$0:Lcom/android/server/media/MediaSessionService;

    # invokes: Lcom/android/server/media/MediaSessionService;->buildMediaSessionService2List()V
    invoke-static {v2}, Lcom/android/server/media/MediaSessionService;->access$1000(Lcom/android/server/media/MediaSessionService;)V

    .line 513
    :goto_ab
    return-void

    :sswitch_data_ac
    .sparse-switch
        -0x53ae571d -> :sswitch_94
        -0x4fc097e4 -> :sswitch_8a
        -0x3bb3e592 -> :sswitch_80
        -0x304ed112 -> :sswitch_76
        0xa480416 -> :sswitch_6c
        0x1f50b9c2 -> :sswitch_62
        0x4cef8b35 -> :sswitch_58
        0x5c1076e2 -> :sswitch_4f
    .end sparse-switch

    :pswitch_data_ce
    .packed-switch 0x0
        :pswitch_a3
        :pswitch_a3
        :pswitch_a3
        :pswitch_a3
        :pswitch_a6
        :pswitch_a6
        :pswitch_a6
        :pswitch_a6
    .end packed-switch
.end method
