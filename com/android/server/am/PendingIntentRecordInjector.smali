.class public Lcom/android/server/am/PendingIntentRecordInjector;
.super Ljava/lang/Object;
.source "PendingIntentRecordInjector.java"


# static fields
.field private static final MSG_CLEAR:I = 0x1

.field private static final TAG:Ljava/lang/String; = "PendingIntentRecordInjector"

.field private static sIgnorePackages:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sLock:Ljava/lang/Object;

.field private static sMessageHanlder:Landroid/os/Handler;

.field private static sPendingPackages:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 36
    new-instance v0, Landroid/util/ArraySet;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroid/util/ArraySet;-><init>(I)V

    sput-object v0, Lcom/android/server/am/PendingIntentRecordInjector;->sIgnorePackages:Landroid/util/ArraySet;

    .line 41
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    sput-object v0, Lcom/android/server/am/PendingIntentRecordInjector;->sPendingPackages:Landroid/util/ArraySet;

    .line 43
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/am/PendingIntentRecordInjector;->sLock:Ljava/lang/Object;

    .line 45
    new-instance v0, Lcom/android/server/am/PendingIntentRecordInjector$1;

    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->get()Lcom/android/internal/os/BackgroundThread;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/os/BackgroundThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/server/am/PendingIntentRecordInjector$1;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/android/server/am/PendingIntentRecordInjector;->sMessageHanlder:Landroid/os/Handler;

    .line 61
    sget-object v0, Lcom/android/server/am/PendingIntentRecordInjector;->sIgnorePackages:Landroid/util/ArraySet;

    const-string v1, "com.android.systemui"

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 62
    sget-object v0, Lcom/android/server/am/PendingIntentRecordInjector;->sIgnorePackages:Landroid/util/ArraySet;

    const-string v1, "com.android.keyguard"

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 63
    sget-object v0, Lcom/android/server/am/PendingIntentRecordInjector;->sIgnorePackages:Landroid/util/ArraySet;

    const-string v1, "com.miui.home"

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 64
    sget-object v0, Lcom/android/server/am/PendingIntentRecordInjector;->sIgnorePackages:Landroid/util/ArraySet;

    const-string v1, "com.mi.android.globallauncher"

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 65
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/Object;
    .registers 1

    .line 30
    sget-object v0, Lcom/android/server/am/PendingIntentRecordInjector;->sLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$100()Landroid/util/ArraySet;
    .registers 1

    .line 30
    sget-object v0, Lcom/android/server/am/PendingIntentRecordInjector;->sPendingPackages:Landroid/util/ArraySet;

    return-object v0
.end method

.method public static containsPendingIntent(Ljava/lang/String;)Z
    .registers 3
    .param p0, "packageName"    # Ljava/lang/String;

    .line 143
    sget-object v0, Lcom/android/server/am/PendingIntentRecordInjector;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 144
    :try_start_3
    sget-object v1, Lcom/android/server/am/PendingIntentRecordInjector;->sPendingPackages:Landroid/util/ArraySet;

    invoke-virtual {v1, p0}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 145
    :catchall_b
    move-exception v1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v1
.end method

.method public static preSendInner(Lcom/android/server/am/PendingIntentRecord$Key;Landroid/content/Intent;)V
    .registers 12
    .param p0, "key"    # Lcom/android/server/am/PendingIntentRecord$Key;
    .param p1, "intent"    # Landroid/content/Intent;

    .line 69
    if-eqz p1, :cond_be

    if-nez p0, :cond_6

    goto/16 :goto_be

    .line 73
    :cond_6
    :try_start_6
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    .line 74
    .local v0, "callingPid":I
    invoke-static {v0}, Lcom/android/server/am/ExtraActivityManagerService;->getPackageNameByPid(I)Ljava/lang/String;

    move-result-object v1

    .line 75
    .local v1, "pkg":Ljava/lang/String;
    sget-object v2, Lcom/android/server/am/PendingIntentRecordInjector;->sIgnorePackages:Landroid/util/ArraySet;

    invoke-virtual {v2, v1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_17

    .line 76
    return-void

    .line 78
    :cond_17
    iget v2, p0, Lcom/android/server/am/PendingIntentRecord$Key;->type:I

    const/4 v3, 0x4

    if-eq v2, v3, :cond_27

    packed-switch v2, :pswitch_data_c0

    .line 78
    .end local v0    # "callingPid":I
    .end local v1    # "pkg":Ljava/lang/String;
    goto/16 :goto_b0

    .line 80
    .restart local v0    # "callingPid":I
    .restart local v1    # "pkg":Ljava/lang/String;
    :pswitch_21
    const/4 v2, 0x2

    invoke-virtual {p1, v2}, Landroid/content/Intent;->addMiuiFlags(I)Landroid/content/Intent;

    .line 81
    goto/16 :goto_b0

    .line 84
    :cond_27
    :pswitch_27
    invoke-virtual {p1}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v2

    .line 85
    .local v2, "targetPkg":Ljava/lang/String;
    if-nez v2, :cond_38

    .line 86
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    .line 87
    .local v4, "component":Landroid/content/ComponentName;
    if-eqz v4, :cond_38

    .line 88
    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    move-object v2, v5

    .line 92
    .end local v4    # "component":Landroid/content/ComponentName;
    :cond_38
    const/4 v4, 0x1

    if-nez v2, :cond_8f

    .line 93
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v5

    .line 94
    .local v5, "pm":Landroid/content/pm/IPackageManager;
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v6

    .line 95
    .local v6, "userId":I
    iget v7, p0, Lcom/android/server/am/PendingIntentRecord$Key;->type:I

    const/16 v8, 0x400

    const/4 v9, 0x0

    if-ne v7, v3, :cond_5a

    .line 96
    invoke-interface {v5, p1, v9, v8, v6}, Landroid/content/pm/IPackageManager;->resolveService(Landroid/content/Intent;Ljava/lang/String;II)Landroid/content/pm/ResolveInfo;

    move-result-object v3

    .line 97
    .local v3, "resolveIntent":Landroid/content/pm/ResolveInfo;
    if-eqz v3, :cond_59

    iget-object v7, v3, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    if-eqz v7, :cond_59

    .line 98
    iget-object v7, v3, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v7, v7, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    move-object v2, v7

    .line 100
    .end local v3    # "resolveIntent":Landroid/content/pm/ResolveInfo;
    :cond_59
    goto :goto_8f

    .line 101
    :cond_5a
    invoke-interface {v5, p1, v9, v8, v6}, Landroid/content/pm/IPackageManager;->queryIntentReceivers(Landroid/content/Intent;Ljava/lang/String;II)Landroid/content/pm/ParceledListSlice;

    move-result-object v3

    .line 102
    .local v3, "qeury":Ljava/lang/Object;
    if-nez v3, :cond_61

    .line 103
    return-void

    .line 105
    :cond_61
    const/4 v7, 0x0

    .line 106
    .local v7, "receivers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v9, 0x17

    if-le v8, v9, :cond_73

    .line 107
    move-object v8, v3

    check-cast v8, Landroid/content/pm/ParceledListSlice;

    .line 108
    .local v8, "parceledList":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v8, :cond_72

    .line 109
    invoke-virtual {v8}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v9

    move-object v7, v9

    .line 111
    .end local v8    # "parceledList":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<Landroid/content/pm/ResolveInfo;>;"
    :cond_72
    goto :goto_77

    .line 112
    :cond_73
    move-object v8, v3

    check-cast v8, Ljava/util/List;

    move-object v7, v8

    .line 114
    :goto_77
    if-eqz v7, :cond_8f

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v8

    if-ne v8, v4, :cond_8f

    .line 115
    const/4 v8, 0x0

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/pm/ResolveInfo;

    .line 116
    .local v8, "resolveInfo":Landroid/content/pm/ResolveInfo;
    iget-object v9, v8, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v9, :cond_8f

    .line 117
    iget-object v9, v8, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v9, v9, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object v2, v9

    .line 122
    .end local v3    # "qeury":Ljava/lang/Object;
    .end local v5    # "pm":Landroid/content/pm/IPackageManager;
    .end local v6    # "userId":I
    .end local v7    # "receivers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v8    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    :cond_8f
    :goto_8f
    if-nez v2, :cond_94

    .line 123
    iget-object v3, p0, Lcom/android/server/am/PendingIntentRecord$Key;->packageName:Ljava/lang/String;

    move-object v2, v3

    .line 126
    :cond_94
    sget-object v3, Lcom/android/server/am/PendingIntentRecordInjector;->sLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_97
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_97} :catch_b4

    .line 127
    :try_start_97
    sget-object v5, Lcom/android/server/am/PendingIntentRecordInjector;->sPendingPackages:Landroid/util/ArraySet;

    invoke-virtual {v5, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 128
    monitor-exit v3
    :try_end_9d
    .catchall {:try_start_97 .. :try_end_9d} :catchall_b1

    .line 129
    :try_start_9d
    sget-object v3, Lcom/android/server/am/PendingIntentRecordInjector;->sMessageHanlder:Landroid/os/Handler;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 130
    sget-object v3, Lcom/android/server/am/PendingIntentRecordInjector;->sMessageHanlder:Landroid/os/Handler;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    .line 131
    .local v3, "msg":Landroid/os/Message;
    sget-object v4, Lcom/android/server/am/PendingIntentRecordInjector;->sMessageHanlder:Landroid/os/Handler;

    const-wide/16 v5, 0xbb8

    invoke-virtual {v4, v3, v5, v6}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_af
    .catch Ljava/lang/Exception; {:try_start_9d .. :try_end_af} :catch_b4

    .line 132
    nop

    .line 139
    .end local v0    # "callingPid":I
    .end local v1    # "pkg":Ljava/lang/String;
    .end local v2    # "targetPkg":Ljava/lang/String;
    .end local v3    # "msg":Landroid/os/Message;
    :goto_b0
    goto :goto_bd

    .line 128
    .restart local v0    # "callingPid":I
    .restart local v1    # "pkg":Ljava/lang/String;
    .restart local v2    # "targetPkg":Ljava/lang/String;
    :catchall_b1
    move-exception v4

    :try_start_b2
    monitor-exit v3
    :try_end_b3
    .catchall {:try_start_b2 .. :try_end_b3} :catchall_b1

    :try_start_b3
    throw v4
    :try_end_b4
    .catch Ljava/lang/Exception; {:try_start_b3 .. :try_end_b4} :catch_b4

    .line 137
    .end local v0    # "callingPid":I
    .end local v1    # "pkg":Ljava/lang/String;
    .end local v2    # "targetPkg":Ljava/lang/String;
    :catch_b4
    move-exception v0

    .line 138
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "PendingIntentRecordInjector"

    const-string/jumbo v2, "preSendInner error"

    invoke-static {v1, v2, v0}, Lmiui/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 140
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_bd
    return-void

    .line 70
    :cond_be
    :goto_be
    return-void

    nop

    :pswitch_data_c0
    .packed-switch 0x1
        :pswitch_27
        :pswitch_21
    .end packed-switch
.end method
