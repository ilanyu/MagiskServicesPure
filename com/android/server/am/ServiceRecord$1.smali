.class Lcom/android/server/am/ServiceRecord$1;
.super Ljava/lang/Object;
.source "ServiceRecord.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/ServiceRecord;->postNotification()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/ServiceRecord;

.field final synthetic val$_foregroundNoti:Landroid/app/Notification;

.field final synthetic val$appPid:I

.field final synthetic val$appUid:I

.field final synthetic val$localForegroundId:I

.field final synthetic val$localPackageName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/server/am/ServiceRecord;Landroid/app/Notification;Ljava/lang/String;III)V
    .registers 7
    .param p1, "this$0"    # Lcom/android/server/am/ServiceRecord;

    .line 610
    iput-object p1, p0, Lcom/android/server/am/ServiceRecord$1;->this$0:Lcom/android/server/am/ServiceRecord;

    iput-object p2, p0, Lcom/android/server/am/ServiceRecord$1;->val$_foregroundNoti:Landroid/app/Notification;

    iput-object p3, p0, Lcom/android/server/am/ServiceRecord$1;->val$localPackageName:Ljava/lang/String;

    iput p4, p0, Lcom/android/server/am/ServiceRecord$1;->val$appUid:I

    iput p5, p0, Lcom/android/server/am/ServiceRecord$1;->val$appPid:I

    iput p6, p0, Lcom/android/server/am/ServiceRecord$1;->val$localForegroundId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 19

    .line 612
    move-object/from16 v1, p0

    const-class v0, Lcom/android/server/notification/NotificationManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Lcom/android/server/notification/NotificationManagerInternal;

    .line 614
    .local v11, "nm":Lcom/android/server/notification/NotificationManagerInternal;
    if-nez v11, :cond_e

    .line 615
    return-void

    .line 617
    :cond_e
    iget-object v0, v1, Lcom/android/server/am/ServiceRecord$1;->val$_foregroundNoti:Landroid/app/Notification;

    move-object v2, v0

    .line 619
    .local v2, "localForegroundNoti":Landroid/app/Notification;
    :try_start_11
    invoke-virtual {v2}, Landroid/app/Notification;->getSmallIcon()Landroid/graphics/drawable/Icon;

    move-result-object v0

    const/4 v3, 0x0

    if-nez v0, :cond_103

    .line 624
    const-string v0, "ActivityManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Attempted to start a foreground service ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v1, Lcom/android/server/am/ServiceRecord$1;->this$0:Lcom/android/server/am/ServiceRecord;

    iget-object v5, v5, Lcom/android/server/am/ServiceRecord;->name:Landroid/content/ComponentName;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ") with a broken notification (no icon: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 630
    iget-object v0, v1, Lcom/android/server/am/ServiceRecord$1;->this$0:Lcom/android/server/am/ServiceRecord;

    iget-object v0, v0, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v1, Lcom/android/server/am/ServiceRecord$1;->this$0:Lcom/android/server/am/ServiceRecord;

    iget-object v4, v4, Lcom/android/server/am/ServiceRecord;->ams:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    .line 631
    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 630
    invoke-virtual {v0, v4}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 632
    .local v0, "appName":Ljava/lang/CharSequence;
    if-nez v0, :cond_5b

    .line 633
    iget-object v4, v1, Lcom/android/server/am/ServiceRecord$1;->this$0:Lcom/android/server/am/ServiceRecord;

    iget-object v4, v4, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;
    :try_end_59
    .catch Ljava/lang/RuntimeException; {:try_start_11 .. :try_end_59} :catch_18c

    move-object v0, v4

    goto :goto_5c

    .line 635
    :cond_5b
    move-object v4, v0

    .line 635
    .end local v0    # "appName":Ljava/lang/CharSequence;
    .local v4, "appName":Ljava/lang/CharSequence;
    :goto_5c
    const/4 v0, 0x0

    move-object v5, v0

    .line 637
    .local v5, "ctx":Landroid/content/Context;
    :try_start_5e
    iget-object v6, v1, Lcom/android/server/am/ServiceRecord$1;->this$0:Lcom/android/server/am/ServiceRecord;

    iget-object v6, v6, Lcom/android/server/am/ServiceRecord;->ams:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    iget-object v7, v1, Lcom/android/server/am/ServiceRecord$1;->this$0:Lcom/android/server/am/ServiceRecord;

    iget-object v7, v7, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v7, v7, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    new-instance v8, Landroid/os/UserHandle;

    iget-object v9, v1, Lcom/android/server/am/ServiceRecord$1;->this$0:Lcom/android/server/am/ServiceRecord;

    iget v9, v9, Lcom/android/server/am/ServiceRecord;->userId:I

    invoke-direct {v8, v9}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v6, v7, v3, v8}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    move-result-object v6

    move-object v5, v6

    .line 640
    new-instance v6, Landroid/app/Notification$Builder;

    .line 641
    invoke-virtual {v2}, Landroid/app/Notification;->getChannelId()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v5, v7}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 644
    .local v6, "notiBuilder":Landroid/app/Notification$Builder;
    iget-object v7, v1, Lcom/android/server/am/ServiceRecord$1;->this$0:Lcom/android/server/am/ServiceRecord;

    iget-object v7, v7, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v7, v7, Landroid/content/pm/ApplicationInfo;->icon:I

    invoke-virtual {v6, v7}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 647
    const/16 v7, 0x40

    const/4 v8, 0x1

    invoke-virtual {v6, v7, v8}, Landroid/app/Notification$Builder;->setFlag(IZ)Landroid/app/Notification$Builder;

    .line 649
    new-instance v7, Landroid/content/Intent;

    const-string v9, "android.settings.APPLICATION_DETAILS_SETTINGS"

    invoke-direct {v7, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 651
    .local v7, "runningIntent":Landroid/content/Intent;
    const-string/jumbo v9, "package"

    iget-object v10, v1, Lcom/android/server/am/ServiceRecord$1;->this$0:Lcom/android/server/am/ServiceRecord;

    iget-object v10, v10, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v10, v10, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {v9, v10, v0}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v7, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 653
    iget-object v0, v1, Lcom/android/server/am/ServiceRecord$1;->this$0:Lcom/android/server/am/ServiceRecord;

    iget-object v0, v0, Lcom/android/server/am/ServiceRecord;->ams:Lcom/android/server/am/ActivityManagerService;

    iget-object v12, v0, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    const/4 v13, 0x0

    const/high16 v15, 0x8000000

    const/16 v16, 0x0

    iget-object v0, v1, Lcom/android/server/am/ServiceRecord$1;->this$0:Lcom/android/server/am/ServiceRecord;

    iget v0, v0, Lcom/android/server/am/ServiceRecord;->userId:I

    .line 655
    invoke-static {v0}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v17

    .line 653
    move-object v14, v7

    invoke-static/range {v12 .. v17}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v0

    .line 656
    .local v0, "pi":Landroid/app/PendingIntent;
    iget-object v9, v1, Lcom/android/server/am/ServiceRecord$1;->this$0:Lcom/android/server/am/ServiceRecord;

    iget-object v9, v9, Lcom/android/server/am/ServiceRecord;->ams:Lcom/android/server/am/ActivityManagerService;

    iget-object v9, v9, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    const v10, 0x106016f

    invoke-virtual {v9, v10}, Landroid/content/Context;->getColor(I)I

    move-result v9

    invoke-virtual {v6, v9}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    .line 659
    iget-object v9, v1, Lcom/android/server/am/ServiceRecord$1;->this$0:Lcom/android/server/am/ServiceRecord;

    iget-object v9, v9, Lcom/android/server/am/ServiceRecord;->ams:Lcom/android/server/am/ActivityManagerService;

    iget-object v9, v9, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    const v10, 0x1040097

    new-array v12, v8, [Ljava/lang/Object;

    aput-object v4, v12, v3

    .line 660
    invoke-virtual {v9, v10, v12}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .line 659
    invoke-virtual {v6, v9}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 664
    iget-object v9, v1, Lcom/android/server/am/ServiceRecord$1;->this$0:Lcom/android/server/am/ServiceRecord;

    iget-object v9, v9, Lcom/android/server/am/ServiceRecord;->ams:Lcom/android/server/am/ActivityManagerService;

    iget-object v9, v9, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    const v10, 0x1040096

    new-array v8, v8, [Ljava/lang/Object;

    aput-object v4, v8, v3

    .line 665
    invoke-virtual {v9, v10, v8}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 664
    invoke-virtual {v6, v8}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 669
    invoke-virtual {v6, v0}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 671
    invoke-virtual {v6}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v8
    :try_end_fe
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_5e .. :try_end_fe} :catch_102
    .catch Ljava/lang/RuntimeException; {:try_start_5e .. :try_end_fe} :catch_18c

    move-object v0, v8

    .line 673
    .end local v2    # "localForegroundNoti":Landroid/app/Notification;
    .end local v6    # "notiBuilder":Landroid/app/Notification$Builder;
    .end local v7    # "runningIntent":Landroid/content/Intent;
    .local v0, "localForegroundNoti":Landroid/app/Notification;
    nop

    .line 675
    move-object v12, v0

    goto :goto_104

    .line 672
    .end local v0    # "localForegroundNoti":Landroid/app/Notification;
    .restart local v2    # "localForegroundNoti":Landroid/app/Notification;
    :catch_102
    move-exception v0

    .line 675
    .end local v4    # "appName":Ljava/lang/CharSequence;
    .end local v5    # "ctx":Landroid/content/Context;
    :cond_103
    move-object v12, v2

    .line 675
    .end local v2    # "localForegroundNoti":Landroid/app/Notification;
    .local v12, "localForegroundNoti":Landroid/app/Notification;
    :goto_104
    :try_start_104
    iget-object v0, v1, Lcom/android/server/am/ServiceRecord$1;->val$localPackageName:Ljava/lang/String;

    iget v2, v1, Lcom/android/server/am/ServiceRecord$1;->val$appUid:I

    .line 676
    invoke-virtual {v12}, Landroid/app/Notification;->getChannelId()Ljava/lang/String;

    move-result-object v4

    .line 675
    invoke-interface {v11, v0, v2, v4}, Lcom/android/server/notification/NotificationManagerInternal;->getNotificationChannel(Ljava/lang/String;ILjava/lang/String;)Landroid/app/NotificationChannel;

    move-result-object v0
    :try_end_110
    .catch Ljava/lang/RuntimeException; {:try_start_104 .. :try_end_110} :catch_18a

    if-nez v0, :cond_150

    .line 677
    const/16 v2, 0x1b

    move v4, v2

    .line 679
    .local v4, "targetSdkVersion":I
    :try_start_115
    iget-object v0, v1, Lcom/android/server/am/ServiceRecord$1;->this$0:Lcom/android/server/am/ServiceRecord;

    iget-object v0, v0, Lcom/android/server/am/ServiceRecord;->ams:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    .line 680
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v5, v1, Lcom/android/server/am/ServiceRecord$1;->this$0:Lcom/android/server/am/ServiceRecord;

    iget-object v5, v5, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v6, v1, Lcom/android/server/am/ServiceRecord$1;->this$0:Lcom/android/server/am/ServiceRecord;

    iget v6, v6, Lcom/android/server/am/ServiceRecord;->userId:I

    invoke-virtual {v0, v5, v3, v6}, Landroid/content/pm/PackageManager;->getApplicationInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 682
    .local v0, "applicationInfo":Landroid/content/pm/ApplicationInfo;
    iget v3, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I
    :try_end_12f
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_115 .. :try_end_12f} :catch_131
    .catch Ljava/lang/RuntimeException; {:try_start_115 .. :try_end_12f} :catch_18a

    move v4, v3

    .line 684
    .end local v0    # "applicationInfo":Landroid/content/pm/ApplicationInfo;
    goto :goto_132

    .line 683
    :catch_131
    move-exception v0

    .line 685
    :goto_132
    if-ge v4, v2, :cond_135

    .line 685
    .end local v4    # "targetSdkVersion":I
    goto :goto_150

    .line 686
    .restart local v4    # "targetSdkVersion":I
    :cond_135
    :try_start_135
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "invalid channel for service notification: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Lcom/android/server/am/ServiceRecord$1;->this$0:Lcom/android/server/am/ServiceRecord;

    iget-object v3, v3, Lcom/android/server/am/ServiceRecord;->foregroundNoti:Landroid/app/Notification;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 691
    .end local v4    # "targetSdkVersion":I
    :cond_150
    :goto_150
    invoke-virtual {v12}, Landroid/app/Notification;->getSmallIcon()Landroid/graphics/drawable/Icon;

    move-result-object v0

    if-eqz v0, :cond_16f

    .line 699
    iget-object v3, v1, Lcom/android/server/am/ServiceRecord$1;->val$localPackageName:Ljava/lang/String;

    iget-object v4, v1, Lcom/android/server/am/ServiceRecord$1;->val$localPackageName:Ljava/lang/String;

    iget v5, v1, Lcom/android/server/am/ServiceRecord$1;->val$appUid:I

    iget v6, v1, Lcom/android/server/am/ServiceRecord$1;->val$appPid:I

    const/4 v7, 0x0

    iget v8, v1, Lcom/android/server/am/ServiceRecord$1;->val$localForegroundId:I

    iget-object v0, v1, Lcom/android/server/am/ServiceRecord$1;->this$0:Lcom/android/server/am/ServiceRecord;

    iget v10, v0, Lcom/android/server/am/ServiceRecord;->userId:I

    move-object v2, v11

    move-object v9, v12

    invoke-interface/range {v2 .. v10}, Lcom/android/server/notification/NotificationManagerInternal;->enqueueNotification(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;ILandroid/app/Notification;I)V

    .line 703
    iget-object v0, v1, Lcom/android/server/am/ServiceRecord$1;->this$0:Lcom/android/server/am/ServiceRecord;

    iput-object v12, v0, Lcom/android/server/am/ServiceRecord;->foregroundNoti:Landroid/app/Notification;

    .line 712
    goto :goto_1c4

    .line 696
    :cond_16f
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "invalid service notification: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Lcom/android/server/am/ServiceRecord$1;->this$0:Lcom/android/server/am/ServiceRecord;

    iget-object v3, v3, Lcom/android/server/am/ServiceRecord;->foregroundNoti:Landroid/app/Notification;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_18a
    .catch Ljava/lang/RuntimeException; {:try_start_135 .. :try_end_18a} :catch_18a

    .line 704
    :catch_18a
    move-exception v0

    goto :goto_18e

    .line 704
    .end local v12    # "localForegroundNoti":Landroid/app/Notification;
    .restart local v2    # "localForegroundNoti":Landroid/app/Notification;
    :catch_18c
    move-exception v0

    move-object v12, v2

    .line 705
    .end local v2    # "localForegroundNoti":Landroid/app/Notification;
    .local v0, "e":Ljava/lang/RuntimeException;
    .restart local v12    # "localForegroundNoti":Landroid/app/Notification;
    :goto_18e
    const-string v2, "ActivityManager"

    const-string v3, "Error showing notification for service"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 708
    iget-object v2, v1, Lcom/android/server/am/ServiceRecord$1;->this$0:Lcom/android/server/am/ServiceRecord;

    iget-object v3, v2, Lcom/android/server/am/ServiceRecord;->ams:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v1, Lcom/android/server/am/ServiceRecord$1;->this$0:Lcom/android/server/am/ServiceRecord;

    iget-object v4, v2, Lcom/android/server/am/ServiceRecord;->name:Landroid/content/ComponentName;

    iget-object v5, v1, Lcom/android/server/am/ServiceRecord$1;->this$0:Lcom/android/server/am/ServiceRecord;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Lcom/android/server/am/ActivityManagerService;->setServiceForeground(Landroid/content/ComponentName;Landroid/os/IBinder;ILandroid/app/Notification;I)V

    .line 710
    iget-object v2, v1, Lcom/android/server/am/ServiceRecord$1;->this$0:Lcom/android/server/am/ServiceRecord;

    iget-object v3, v2, Lcom/android/server/am/ServiceRecord;->ams:Lcom/android/server/am/ActivityManagerService;

    iget v4, v1, Lcom/android/server/am/ServiceRecord$1;->val$appUid:I

    iget v5, v1, Lcom/android/server/am/ServiceRecord$1;->val$appPid:I

    iget-object v6, v1, Lcom/android/server/am/ServiceRecord$1;->val$localPackageName:Ljava/lang/String;

    const/4 v7, -0x1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Bad notification for startForeground: "

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {v3 .. v8}, Lcom/android/server/am/ActivityManagerService;->crashApplication(IILjava/lang/String;ILjava/lang/String;)V

    .line 713
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :goto_1c4
    return-void
.end method
