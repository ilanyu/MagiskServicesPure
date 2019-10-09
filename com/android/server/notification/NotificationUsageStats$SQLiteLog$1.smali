.class Lcom/android/server/notification/NotificationUsageStats$SQLiteLog$1;
.super Landroid/os/Handler;
.source "NotificationUsageStats.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/notification/NotificationUsageStats$SQLiteLog;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/notification/NotificationUsageStats$SQLiteLog;


# direct methods
.method constructor <init>(Lcom/android/server/notification/NotificationUsageStats$SQLiteLog;Landroid/os/Looper;)V
    .registers 3
    .param p1, "this$0"    # Lcom/android/server/notification/NotificationUsageStats$SQLiteLog;
    .param p2, "x0"    # Landroid/os/Looper;

    .line 1092
    iput-object p1, p0, Lcom/android/server/notification/NotificationUsageStats$SQLiteLog$1;->this$0:Lcom/android/server/notification/NotificationUsageStats$SQLiteLog;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 9
    .param p1, "msg"    # Landroid/os/Message;

    .line 1095
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/notification/NotificationRecord;

    .line 1096
    .local v0, "r":Lcom/android/server/notification/NotificationRecord;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 1097
    .local v1, "nowMs":J
    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_4a

    .line 1111
    const-string v3, "NotificationSQLiteLog"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown message type: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p1, Landroid/os/Message;->what:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_48

    .line 1108
    :pswitch_26
    iget-object v3, p0, Lcom/android/server/notification/NotificationUsageStats$SQLiteLog$1;->this$0:Lcom/android/server/notification/NotificationUsageStats$SQLiteLog;

    const/4 v4, 0x4

    # invokes: Lcom/android/server/notification/NotificationUsageStats$SQLiteLog;->writeEvent(JILcom/android/server/notification/NotificationRecord;)V
    invoke-static {v3, v1, v2, v4, v0}, Lcom/android/server/notification/NotificationUsageStats$SQLiteLog;->access$000(Lcom/android/server/notification/NotificationUsageStats$SQLiteLog;JILcom/android/server/notification/NotificationRecord;)V

    .line 1109
    goto :goto_48

    .line 1105
    :pswitch_2d
    iget-object v3, p0, Lcom/android/server/notification/NotificationUsageStats$SQLiteLog$1;->this$0:Lcom/android/server/notification/NotificationUsageStats$SQLiteLog;

    const/4 v4, 0x3

    # invokes: Lcom/android/server/notification/NotificationUsageStats$SQLiteLog;->writeEvent(JILcom/android/server/notification/NotificationRecord;)V
    invoke-static {v3, v1, v2, v4, v0}, Lcom/android/server/notification/NotificationUsageStats$SQLiteLog;->access$000(Lcom/android/server/notification/NotificationUsageStats$SQLiteLog;JILcom/android/server/notification/NotificationRecord;)V

    .line 1106
    goto :goto_48

    .line 1102
    :pswitch_34
    iget-object v3, p0, Lcom/android/server/notification/NotificationUsageStats$SQLiteLog$1;->this$0:Lcom/android/server/notification/NotificationUsageStats$SQLiteLog;

    const/4 v4, 0x2

    # invokes: Lcom/android/server/notification/NotificationUsageStats$SQLiteLog;->writeEvent(JILcom/android/server/notification/NotificationRecord;)V
    invoke-static {v3, v1, v2, v4, v0}, Lcom/android/server/notification/NotificationUsageStats$SQLiteLog;->access$000(Lcom/android/server/notification/NotificationUsageStats$SQLiteLog;JILcom/android/server/notification/NotificationRecord;)V

    .line 1103
    goto :goto_48

    .line 1099
    :pswitch_3b
    iget-object v3, p0, Lcom/android/server/notification/NotificationUsageStats$SQLiteLog$1;->this$0:Lcom/android/server/notification/NotificationUsageStats$SQLiteLog;

    iget-object v4, v0, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getPostTime()J

    move-result-wide v4

    const/4 v6, 0x1

    # invokes: Lcom/android/server/notification/NotificationUsageStats$SQLiteLog;->writeEvent(JILcom/android/server/notification/NotificationRecord;)V
    invoke-static {v3, v4, v5, v6, v0}, Lcom/android/server/notification/NotificationUsageStats$SQLiteLog;->access$000(Lcom/android/server/notification/NotificationUsageStats$SQLiteLog;JILcom/android/server/notification/NotificationRecord;)V

    .line 1100
    nop

    .line 1114
    :goto_48
    return-void

    nop

    :pswitch_data_4a
    .packed-switch 0x1
        :pswitch_3b
        :pswitch_34
        :pswitch_2d
        :pswitch_26
    .end packed-switch
.end method
