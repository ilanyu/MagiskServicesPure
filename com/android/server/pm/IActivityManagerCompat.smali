.class public Lcom/android/server/pm/IActivityManagerCompat;
.super Ljava/lang/Object;
.source "IActivityManagerCompat.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V
    .registers 19
    .param p0, "intent"    # Landroid/content/Intent;
    .param p1, "requiredPermission"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 13
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v14

    .line 17
    .local v14, "am":Landroid/app/IActivityManager;
    const/4 v0, 0x1

    new-array v15, v0, [Ljava/lang/String;

    .line 18
    .local v15, "requiredPermissions":[Ljava/lang/String;
    const/4 v0, 0x0

    aput-object p1, v15, v0

    .line 19
    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v9, -0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object v0, v14

    move-object/from16 v2, p0

    move-object v8, v15

    invoke-interface/range {v0 .. v13}, Landroid/app/IActivityManager;->broadcastIntent(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;[Ljava/lang/String;ILandroid/os/Bundle;ZZI)I

    .line 21
    return-void
.end method
