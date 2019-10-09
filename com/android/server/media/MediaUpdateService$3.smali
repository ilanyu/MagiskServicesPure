.class Lcom/android/server/media/MediaUpdateService$3;
.super Landroid/content/BroadcastReceiver;
.source "MediaUpdateService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/media/MediaUpdateService;->registerBroadcastReceiver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/media/MediaUpdateService;


# direct methods
.method constructor <init>(Lcom/android/server/media/MediaUpdateService;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/media/MediaUpdateService;

    .line 93
    iput-object p1, p0, Lcom/android/server/media/MediaUpdateService$3;->this$0:Lcom/android/server/media/MediaUpdateService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 96
    const-string v0, "android.intent.extra.user_handle"

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_a

    .line 100
    return-void

    .line 102
    :cond_a
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const/4 v2, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v3

    const v4, 0xa480416

    if-eq v3, v4, :cond_36

    const v4, 0x1f50b9c2

    if-eq v3, v4, :cond_2d

    const v1, 0x5c1076e2

    if-eq v3, v1, :cond_23

    goto :goto_40

    :cond_23
    const-string v1, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_40

    const/4 v1, 0x2

    goto :goto_41

    :cond_2d
    const-string v3, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_40

    goto :goto_41

    :cond_36
    const-string v1, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_40

    const/4 v1, 0x1

    goto :goto_41

    :cond_40
    :goto_40
    move v1, v2

    :goto_41
    packed-switch v1, :pswitch_data_66

    goto :goto_64

    .line 115
    :pswitch_45
    iget-object v0, p0, Lcom/android/server/media/MediaUpdateService$3;->this$0:Lcom/android/server/media/MediaUpdateService;

    # invokes: Lcom/android/server/media/MediaUpdateService;->packageStateChanged()V
    invoke-static {v0}, Lcom/android/server/media/MediaUpdateService;->access$200(Lcom/android/server/media/MediaUpdateService;)V

    goto :goto_64

    .line 112
    :pswitch_4b
    iget-object v0, p0, Lcom/android/server/media/MediaUpdateService$3;->this$0:Lcom/android/server/media/MediaUpdateService;

    # invokes: Lcom/android/server/media/MediaUpdateService;->packageStateChanged()V
    invoke-static {v0}, Lcom/android/server/media/MediaUpdateService;->access$200(Lcom/android/server/media/MediaUpdateService;)V

    .line 113
    goto :goto_64

    .line 104
    :pswitch_51
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "android.intent.extra.REPLACING"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5e

    .line 107
    return-void

    .line 109
    :cond_5e
    iget-object v0, p0, Lcom/android/server/media/MediaUpdateService$3;->this$0:Lcom/android/server/media/MediaUpdateService;

    # invokes: Lcom/android/server/media/MediaUpdateService;->packageStateChanged()V
    invoke-static {v0}, Lcom/android/server/media/MediaUpdateService;->access$200(Lcom/android/server/media/MediaUpdateService;)V

    .line 110
    nop

    .line 118
    :goto_64
    return-void

    nop

    :pswitch_data_66
    .packed-switch 0x0
        :pswitch_51
        :pswitch_4b
        :pswitch_45
    .end packed-switch
.end method
