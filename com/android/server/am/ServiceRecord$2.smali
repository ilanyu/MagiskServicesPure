.class Lcom/android/server/am/ServiceRecord$2;
.super Ljava/lang/Object;
.source "ServiceRecord.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/ServiceRecord;->cancelNotification()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/ServiceRecord;

.field final synthetic val$localForegroundId:I

.field final synthetic val$localPackageName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/server/am/ServiceRecord;Ljava/lang/String;I)V
    .registers 4
    .param p1, "this$0"    # Lcom/android/server/am/ServiceRecord;

    .line 723
    iput-object p1, p0, Lcom/android/server/am/ServiceRecord$2;->this$0:Lcom/android/server/am/ServiceRecord;

    iput-object p2, p0, Lcom/android/server/am/ServiceRecord$2;->val$localPackageName:Ljava/lang/String;

    iput p3, p0, Lcom/android/server/am/ServiceRecord$2;->val$localForegroundId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .line 725
    invoke-static {}, Landroid/app/NotificationManager;->getService()Landroid/app/INotificationManager;

    move-result-object v0

    .line 726
    .local v0, "inm":Landroid/app/INotificationManager;
    if-nez v0, :cond_7

    .line 727
    return-void

    .line 730
    :cond_7
    :try_start_7
    iget-object v1, p0, Lcom/android/server/am/ServiceRecord$2;->val$localPackageName:Ljava/lang/String;

    const/4 v2, 0x0

    iget v3, p0, Lcom/android/server/am/ServiceRecord$2;->val$localForegroundId:I

    iget-object v4, p0, Lcom/android/server/am/ServiceRecord$2;->this$0:Lcom/android/server/am/ServiceRecord;

    iget v4, v4, Lcom/android/server/am/ServiceRecord;->userId:I

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/app/INotificationManager;->cancelNotificationWithTag(Ljava/lang/String;Ljava/lang/String;II)V
    :try_end_13
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_13} :catch_16
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_13} :catch_14

    goto :goto_1e

    .line 734
    :catch_14
    move-exception v1

    goto :goto_1f

    .line 732
    :catch_16
    move-exception v1

    .line 733
    .local v1, "e":Ljava/lang/RuntimeException;
    const-string v2, "ActivityManager"

    const-string v3, "Error canceling notification for service"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 735
    .end local v1    # "e":Ljava/lang/RuntimeException;
    :goto_1e
    nop

    .line 736
    :goto_1f
    return-void
.end method
