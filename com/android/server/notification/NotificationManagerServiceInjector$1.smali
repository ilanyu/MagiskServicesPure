.class Lcom/android/server/notification/NotificationManagerServiceInjector$1;
.super Ljava/lang/Object;
.source "NotificationManagerServiceInjector.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/notification/NotificationManagerServiceInjector;->onNotificationClick(IILjava/lang/String;Landroid/app/Notification;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$intent:Landroid/content/Intent;

.field final synthetic val$postPackage:Ljava/lang/String;

.field final synthetic val$time:J


# direct methods
.method constructor <init>(Ljava/lang/String;Landroid/content/Intent;J)V
    .registers 5

    .line 24
    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerServiceInjector$1;->val$postPackage:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/server/notification/NotificationManagerServiceInjector$1;->val$intent:Landroid/content/Intent;

    iput-wide p3, p0, Lcom/android/server/notification/NotificationManagerServiceInjector$1;->val$time:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .line 28
    :try_start_0
    invoke-static {}, Lcom/miui/daemon/performance/PerfShielderManager;->getService()Lcom/android/internal/app/IPerfShielder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerServiceInjector$1;->val$postPackage:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerServiceInjector$1;->val$intent:Landroid/content/Intent;

    iget-wide v3, p0, Lcom/android/server/notification/NotificationManagerServiceInjector$1;->val$time:J

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/android/internal/app/IPerfShielder;->reportNotificationClick(Ljava/lang/String;Landroid/content/Intent;J)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_d} :catch_e

    .line 31
    goto :goto_16

    .line 29
    :catch_e
    move-exception v0

    .line 30
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "NotificationService"

    const-string v2, "error when reportNotificationClick"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_16
    return-void
.end method
