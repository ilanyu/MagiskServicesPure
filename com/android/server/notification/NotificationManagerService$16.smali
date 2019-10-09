.class Lcom/android/server/notification/NotificationManagerService$16;
.super Ljava/lang/Object;
.source "NotificationManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/notification/NotificationManagerService;->cancelAllLocked(IIIILcom/android/server/notification/ManagedServices$ManagedServiceInfo;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/notification/NotificationManagerService;

.field final synthetic val$callingPid:I

.field final synthetic val$callingUid:I

.field final synthetic val$includeCurrentProfiles:Z

.field final synthetic val$listener:Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

.field final synthetic val$reason:I

.field final synthetic val$userId:I


# direct methods
.method constructor <init>(Lcom/android/server/notification/NotificationManagerService;Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;IIIIZ)V
    .registers 8
    .param p1, "this$0"    # Lcom/android/server/notification/NotificationManagerService;

    .line 5965
    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService$16;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iput-object p2, p0, Lcom/android/server/notification/NotificationManagerService$16;->val$listener:Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    iput p3, p0, Lcom/android/server/notification/NotificationManagerService$16;->val$callingUid:I

    iput p4, p0, Lcom/android/server/notification/NotificationManagerService$16;->val$callingPid:I

    iput p5, p0, Lcom/android/server/notification/NotificationManagerService$16;->val$userId:I

    iput p6, p0, Lcom/android/server/notification/NotificationManagerService$16;->val$reason:I

    iput-boolean p7, p0, Lcom/android/server/notification/NotificationManagerService$16;->val$includeCurrentProfiles:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic lambda$run$0(I)Z
    .registers 2
    .param p0, "flags"    # I

    .line 5975
    and-int/lit8 v0, p0, 0x22

    if-eqz v0, :cond_6

    .line 5977
    const/4 v0, 0x0

    return v0

    .line 5979
    :cond_6
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public run()V
    .registers 40

    .line 5968
    move-object/from16 v1, p0

    sget-object v2, Lcom/android/server/notification/NotificationManagerService;->mNotificationLock:Ljava/lang/Object;

    monitor-enter v2

    .line 5970
    :try_start_5
    iget-object v0, v1, Lcom/android/server/notification/NotificationManagerService$16;->val$listener:Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    if-nez v0, :cond_c

    const/4 v0, 0x0

    :goto_a
    move-object v10, v0

    goto :goto_15

    :cond_c
    iget-object v0, v1, Lcom/android/server/notification/NotificationManagerService$16;->val$listener:Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    iget-object v0, v0, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->component:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v0

    goto :goto_a

    .line 5971
    .local v10, "listenerName":Ljava/lang/String;
    :goto_15
    iget v3, v1, Lcom/android/server/notification/NotificationManagerService$16;->val$callingUid:I

    iget v4, v1, Lcom/android/server/notification/NotificationManagerService$16;->val$callingPid:I

    const/4 v5, 0x0

    iget v6, v1, Lcom/android/server/notification/NotificationManagerService$16;->val$userId:I

    const/4 v7, 0x0

    const/4 v8, 0x0

    iget v9, v1, Lcom/android/server/notification/NotificationManagerService$16;->val$reason:I

    invoke-static/range {v3 .. v10}, Lcom/android/server/EventLogTags;->writeNotificationCancelAll(IILjava/lang/String;IIIILjava/lang/String;)V

    .line 5974
    sget-object v18, Lcom/android/server/notification/-$$Lambda$NotificationManagerService$16$he13RdFo2qbqR04oK0hiGU5GDUg;->INSTANCE:Lcom/android/server/notification/-$$Lambda$NotificationManagerService$16$he13RdFo2qbqR04oK0hiGU5GDUg;

    .line 5982
    .local v18, "flagChecker":Lcom/android/server/notification/NotificationManagerService$FlagChecker;
    iget-object v11, v1, Lcom/android/server/notification/NotificationManagerService$16;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v0, v1, Lcom/android/server/notification/NotificationManagerService$16;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v12, v0, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    iget v13, v1, Lcom/android/server/notification/NotificationManagerService$16;->val$callingUid:I

    iget v14, v1, Lcom/android/server/notification/NotificationManagerService$16;->val$callingPid:I

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    iget-boolean v0, v1, Lcom/android/server/notification/NotificationManagerService$16;->val$includeCurrentProfiles:Z

    iget v3, v1, Lcom/android/server/notification/NotificationManagerService$16;->val$userId:I

    const/16 v21, 0x1

    iget v4, v1, Lcom/android/server/notification/NotificationManagerService$16;->val$reason:I

    const/16 v24, 0x1

    move/from16 v19, v0

    move/from16 v20, v3

    move/from16 v22, v4

    move-object/from16 v23, v10

    # invokes: Lcom/android/server/notification/NotificationManagerService;->cancelAllNotificationsByListLocked(Ljava/util/ArrayList;IILjava/lang/String;ZLjava/lang/String;Lcom/android/server/notification/NotificationManagerService$FlagChecker;ZIZILjava/lang/String;Z)V
    invoke-static/range {v11 .. v24}, Lcom/android/server/notification/NotificationManagerService;->access$8100(Lcom/android/server/notification/NotificationManagerService;Ljava/util/ArrayList;IILjava/lang/String;ZLjava/lang/String;Lcom/android/server/notification/NotificationManagerService$FlagChecker;ZIZILjava/lang/String;Z)V

    .line 5986
    iget-object v0, v1, Lcom/android/server/notification/NotificationManagerService$16;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v3, v1, Lcom/android/server/notification/NotificationManagerService$16;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v3, v3, Lcom/android/server/notification/NotificationManagerService;->mEnqueuedNotifications:Ljava/util/ArrayList;

    iget v4, v1, Lcom/android/server/notification/NotificationManagerService$16;->val$callingUid:I

    iget v5, v1, Lcom/android/server/notification/NotificationManagerService$16;->val$callingPid:I

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    iget-boolean v6, v1, Lcom/android/server/notification/NotificationManagerService$16;->val$includeCurrentProfiles:Z

    iget v7, v1, Lcom/android/server/notification/NotificationManagerService$16;->val$userId:I

    const/16 v35, 0x1

    iget v8, v1, Lcom/android/server/notification/NotificationManagerService$16;->val$reason:I

    const/16 v38, 0x0

    move-object/from16 v25, v0

    move-object/from16 v26, v3

    move/from16 v27, v4

    move/from16 v28, v5

    move-object/from16 v32, v18

    move/from16 v33, v6

    move/from16 v34, v7

    move/from16 v36, v8

    move-object/from16 v37, v10

    # invokes: Lcom/android/server/notification/NotificationManagerService;->cancelAllNotificationsByListLocked(Ljava/util/ArrayList;IILjava/lang/String;ZLjava/lang/String;Lcom/android/server/notification/NotificationManagerService$FlagChecker;ZIZILjava/lang/String;Z)V
    invoke-static/range {v25 .. v38}, Lcom/android/server/notification/NotificationManagerService;->access$8100(Lcom/android/server/notification/NotificationManagerService;Ljava/util/ArrayList;IILjava/lang/String;ZLjava/lang/String;Lcom/android/server/notification/NotificationManagerService$FlagChecker;ZIZILjava/lang/String;Z)V

    .line 5990
    iget-object v0, v1, Lcom/android/server/notification/NotificationManagerService$16;->this$0:Lcom/android/server/notification/NotificationManagerService;

    # getter for: Lcom/android/server/notification/NotificationManagerService;->mSnoozeHelper:Lcom/android/server/notification/SnoozeHelper;
    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->access$3900(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/SnoozeHelper;

    move-result-object v0

    iget v3, v1, Lcom/android/server/notification/NotificationManagerService$16;->val$userId:I

    iget-boolean v4, v1, Lcom/android/server/notification/NotificationManagerService$16;->val$includeCurrentProfiles:Z

    invoke-virtual {v0, v3, v4}, Lcom/android/server/notification/SnoozeHelper;->cancel(IZ)Z

    .line 5991
    .end local v10    # "listenerName":Ljava/lang/String;
    .end local v18    # "flagChecker":Lcom/android/server/notification/NotificationManagerService$FlagChecker;
    monitor-exit v2

    .line 5992
    return-void

    .line 5991
    :catchall_87
    move-exception v0

    monitor-exit v2
    :try_end_89
    .catchall {:try_start_5 .. :try_end_89} :catchall_87

    throw v0
.end method
