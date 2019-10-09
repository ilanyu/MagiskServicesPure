.class Lcom/android/server/connectivity/Vpn$1;
.super Landroid/content/BroadcastReceiver;
.source "Vpn.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/connectivity/Vpn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/connectivity/Vpn;


# direct methods
.method constructor <init>(Lcom/android/server/connectivity/Vpn;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/connectivity/Vpn;

    .line 210
    iput-object p1, p0, Lcom/android/server/connectivity/Vpn$1;->this$0:Lcom/android/server/connectivity/Vpn;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 13
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 213
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 214
    .local v0, "data":Landroid/net/Uri;
    const/4 v1, 0x0

    if-nez v0, :cond_9

    move-object v2, v1

    goto :goto_d

    :cond_9
    invoke-virtual {v0}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v2

    .line 215
    .local v2, "packageName":Ljava/lang/String;
    :goto_d
    if-nez v2, :cond_10

    .line 216
    return-void

    .line 219
    :cond_10
    iget-object v3, p0, Lcom/android/server/connectivity/Vpn$1;->this$0:Lcom/android/server/connectivity/Vpn;

    monitor-enter v3

    .line 221
    :try_start_13
    iget-object v4, p0, Lcom/android/server/connectivity/Vpn$1;->this$0:Lcom/android/server/connectivity/Vpn;

    invoke-virtual {v4}, Lcom/android/server/connectivity/Vpn;->getAlwaysOnPackage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_21

    .line 222
    monitor-exit v3

    return-void

    .line 225
    :cond_21
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    .line 226
    .local v4, "action":Ljava/lang/String;
    const-string v5, "Vpn"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Received broadcast "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " for always-on VPN package "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " in user "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/android/server/connectivity/Vpn$1;->this$0:Lcom/android/server/connectivity/Vpn;

    .line 227
    # getter for: Lcom/android/server/connectivity/Vpn;->mUserHandle:I
    invoke-static {v7}, Lcom/android/server/connectivity/Vpn;->access$000(Lcom/android/server/connectivity/Vpn;)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 226
    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    const/4 v5, -0x1

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v6

    const v7, -0x304ed112

    const/4 v8, 0x1

    const/4 v9, 0x0

    if-eq v6, v7, :cond_6d

    const v7, 0x1f50b9c2

    if-eq v6, v7, :cond_63

    goto :goto_76

    :cond_63
    const-string v6, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_76

    move v5, v8

    goto :goto_76

    :cond_6d
    const-string v6, "android.intent.action.PACKAGE_REPLACED"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_76

    move v5, v9

    :cond_76
    :goto_76
    packed-switch v5, :pswitch_data_94

    .end local v4    # "action":Ljava/lang/String;
    goto :goto_8f

    .line 235
    .restart local v4    # "action":Ljava/lang/String;
    :pswitch_7a
    const-string v5, "android.intent.extra.REPLACING"

    invoke-virtual {p2, v5, v9}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    xor-int/2addr v5, v8

    .line 237
    .local v5, "isPackageRemoved":Z
    if-eqz v5, :cond_8f

    .line 238
    iget-object v6, p0, Lcom/android/server/connectivity/Vpn$1;->this$0:Lcom/android/server/connectivity/Vpn;

    invoke-virtual {v6, v1, v9}, Lcom/android/server/connectivity/Vpn;->setAlwaysOnPackage(Ljava/lang/String;Z)Z

    .end local v4    # "action":Ljava/lang/String;
    .end local v5    # "isPackageRemoved":Z
    goto :goto_8f

    .line 232
    .restart local v4    # "action":Ljava/lang/String;
    :pswitch_89
    iget-object v1, p0, Lcom/android/server/connectivity/Vpn$1;->this$0:Lcom/android/server/connectivity/Vpn;

    invoke-virtual {v1}, Lcom/android/server/connectivity/Vpn;->startAlwaysOnVpn()Z

    .line 233
    nop

    .line 242
    .end local v4    # "action":Ljava/lang/String;
    :cond_8f
    :goto_8f
    monitor-exit v3

    .line 243
    return-void

    .line 242
    :catchall_91
    move-exception v1

    monitor-exit v3
    :try_end_93
    .catchall {:try_start_13 .. :try_end_93} :catchall_91

    throw v1

    :pswitch_data_94
    .packed-switch 0x0
        :pswitch_89
        :pswitch_7a
    .end packed-switch
.end method
