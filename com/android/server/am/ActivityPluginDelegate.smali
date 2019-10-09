.class public Lcom/android/server/am/ActivityPluginDelegate;
.super Ljava/lang/Object;
.source "ActivityPluginDelegate.java"


# static fields
.field private static final FOREGROUND_ACTIVITY_TRIGGER:Ljava/lang/String; = "foreground_activity_trigger"

.field private static final LOGV:Z = false

.field private static final MAX_CONNECT_RETRIES:I = 0xf

.field private static final TAG:Ljava/lang/String; = "ActivityPluginDelegate"

.field private static activityServiceClass:Ljava/lang/Class;

.field private static activityServiceObj:Ljava/lang/Object;

.field private static extJarAvail:Z

.field static isEnabled:Z

.field static mGetFeatureEnableRetryCount:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 49
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/am/ActivityPluginDelegate;->activityServiceClass:Ljava/lang/Class;

    .line 50
    sput-object v0, Lcom/android/server/am/ActivityPluginDelegate;->activityServiceObj:Ljava/lang/Object;

    .line 51
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/server/am/ActivityPluginDelegate;->extJarAvail:Z

    .line 61
    const/16 v0, 0xf

    sput v0, Lcom/android/server/am/ActivityPluginDelegate;->mGetFeatureEnableRetryCount:I

    .line 62
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/am/ActivityPluginDelegate;->isEnabled:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static activityInvokeNotification(Ljava/lang/String;Z)V
    .registers 9
    .param p0, "appName"    # Ljava/lang/String;
    .param p1, "isFullScreen"    # Z

    .line 68
    invoke-static {}, Lcom/android/server/am/ActivityPluginDelegate;->getFeatureFlag()Z

    move-result v0

    if-eqz v0, :cond_3c

    sget-boolean v0, Lcom/android/server/am/ActivityPluginDelegate;->extJarAvail:Z

    if-eqz v0, :cond_3c

    invoke-static {}, Lcom/android/server/am/ActivityPluginDelegate;->loadActivityExtJar()Z

    move-result v0

    if-nez v0, :cond_11

    goto :goto_3c

    .line 72
    :cond_11
    :try_start_11
    sget-object v0, Lcom/android/server/am/ActivityPluginDelegate;->activityServiceClass:Ljava/lang/Class;

    const-string/jumbo v1, "sendActivityInvokeNotification"

    const/4 v2, 0x2

    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v6, 0x1

    aput-object v4, v3, v6

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sget-object v1, Lcom/android/server/am/ActivityPluginDelegate;->activityServiceObj:Ljava/lang/Object;

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p0, v2, v5

    .line 74
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v2, v6

    .line 73
    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_36
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_11 .. :try_end_36} :catch_39
    .catch Ljava/lang/SecurityException; {:try_start_11 .. :try_end_36} :catch_39
    .catch Ljava/lang/NoSuchMethodException; {:try_start_11 .. :try_end_36} :catch_39
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_36} :catch_37

    goto :goto_3a

    .line 81
    :catch_37
    move-exception v0

    goto :goto_3b

    .line 75
    :catch_39
    move-exception v0

    .line 87
    :goto_3a
    nop

    .line 88
    :goto_3b
    return-void

    .line 69
    :cond_3c
    :goto_3c
    return-void
.end method

.method public static activitySuspendNotification(Ljava/lang/String;ZZ)V
    .registers 11
    .param p0, "appName"    # Ljava/lang/String;
    .param p1, "isFullScreen"    # Z
    .param p2, "isBg"    # Z

    .line 95
    invoke-static {}, Lcom/android/server/am/ActivityPluginDelegate;->getFeatureFlag()Z

    move-result v0

    if-eqz v0, :cond_47

    sget-boolean v0, Lcom/android/server/am/ActivityPluginDelegate;->extJarAvail:Z

    if-eqz v0, :cond_47

    invoke-static {}, Lcom/android/server/am/ActivityPluginDelegate;->loadActivityExtJar()Z

    move-result v0

    if-nez v0, :cond_11

    goto :goto_47

    .line 99
    :cond_11
    :try_start_11
    sget-object v0, Lcom/android/server/am/ActivityPluginDelegate;->activityServiceClass:Ljava/lang/Class;

    const-string/jumbo v1, "sendActivitySuspendNotification"

    const/4 v2, 0x3

    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v6, 0x1

    aput-object v4, v3, v6

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v7, 0x2

    aput-object v4, v3, v7

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sget-object v1, Lcom/android/server/am/ActivityPluginDelegate;->activityServiceObj:Ljava/lang/Object;

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p0, v2, v5

    .line 101
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v2, v7

    .line 100
    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_41
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_11 .. :try_end_41} :catch_44
    .catch Ljava/lang/SecurityException; {:try_start_11 .. :try_end_41} :catch_44
    .catch Ljava/lang/NoSuchMethodException; {:try_start_11 .. :try_end_41} :catch_44
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_41} :catch_42

    goto :goto_45

    .line 108
    :catch_42
    move-exception v0

    goto :goto_46

    .line 102
    :catch_44
    move-exception v0

    .line 114
    :goto_45
    nop

    .line 115
    :goto_46
    return-void

    .line 96
    :cond_47
    :goto_47
    return-void
.end method

.method public static declared-synchronized getFeatureFlag()Z
    .registers 5

    const-class v0, Lcom/android/server/am/ActivityPluginDelegate;

    monitor-enter v0

    .line 165
    :try_start_3
    sget-boolean v1, Lcom/android/server/am/ActivityPluginDelegate;->isEnabled:Z

    const/4 v2, 0x1

    if-eq v1, v2, :cond_2f

    sget v1, Lcom/android/server/am/ActivityPluginDelegate;->mGetFeatureEnableRetryCount:I

    if-nez v1, :cond_d

    goto :goto_2f

    .line 168
    :cond_d
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v1

    .line 169
    invoke-virtual {v1}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v3, "foreground_activity_trigger"

    .line 168
    const/4 v4, 0x0

    invoke-static {v1, v3, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v2, :cond_24

    move v4, v2

    nop

    :cond_24
    sput-boolean v4, Lcom/android/server/am/ActivityPluginDelegate;->isEnabled:Z

    .line 171
    sget v1, Lcom/android/server/am/ActivityPluginDelegate;->mGetFeatureEnableRetryCount:I

    sub-int/2addr v1, v2

    sput v1, Lcom/android/server/am/ActivityPluginDelegate;->mGetFeatureEnableRetryCount:I

    .line 172
    sget-boolean v1, Lcom/android/server/am/ActivityPluginDelegate;->isEnabled:Z
    :try_end_2d
    .catchall {:try_start_3 .. :try_end_2d} :catchall_33

    monitor-exit v0

    return v1

    .line 166
    :cond_2f
    :goto_2f
    :try_start_2f
    sget-boolean v1, Lcom/android/server/am/ActivityPluginDelegate;->isEnabled:Z
    :try_end_31
    .catchall {:try_start_2f .. :try_end_31} :catchall_33

    monitor-exit v0

    return v1

    .line 164
    :catchall_33
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private static declared-synchronized loadActivityExtJar()Z
    .registers 7

    const-class v0, Lcom/android/server/am/ActivityPluginDelegate;

    monitor-enter v0

    .line 118
    :try_start_3
    const-string v1, "com.qualcomm.qti.activityextension.ActivityNotifier"

    .line 120
    .local v1, "realProvider":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v3

    .line 121
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/framework/ActivityExt.jar"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 123
    .local v2, "realProviderPath":Ljava/lang/String;
    sget-object v3, Lcom/android/server/am/ActivityPluginDelegate;->activityServiceClass:Ljava/lang/Class;

    const/4 v4, 0x1

    if-eqz v3, :cond_29

    sget-object v3, Lcom/android/server/am/ActivityPluginDelegate;->activityServiceObj:Ljava/lang/Object;
    :try_end_25
    .catchall {:try_start_3 .. :try_end_25} :catchall_69

    if-eqz v3, :cond_29

    .line 124
    monitor-exit v0

    return v4

    .line 127
    :cond_29
    :try_start_29
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    sput-boolean v3, Lcom/android/server/am/ActivityPluginDelegate;->extJarAvail:Z

    if-nez v3, :cond_3a

    .line 129
    sget-boolean v3, Lcom/android/server/am/ActivityPluginDelegate;->extJarAvail:Z
    :try_end_38
    .catchall {:try_start_29 .. :try_end_38} :catchall_69

    monitor-exit v0

    return v3

    .line 132
    :cond_3a
    :try_start_3a
    sget-object v3, Lcom/android/server/am/ActivityPluginDelegate;->activityServiceClass:Ljava/lang/Class;

    if-nez v3, :cond_67

    sget-object v3, Lcom/android/server/am/ActivityPluginDelegate;->activityServiceObj:Ljava/lang/Object;
    :try_end_40
    .catchall {:try_start_3a .. :try_end_40} :catchall_69

    if-nez v3, :cond_67

    .line 135
    const/4 v3, 0x0

    :try_start_43
    new-instance v5, Ldalvik/system/PathClassLoader;

    .line 136
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v6

    invoke-direct {v5, v2, v6}, Ldalvik/system/PathClassLoader;-><init>(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .line 138
    .local v5, "classLoader":Ldalvik/system/PathClassLoader;
    const-string v6, "com.qualcomm.qti.activityextension.ActivityNotifier"

    invoke-virtual {v5, v6}, Ldalvik/system/PathClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    sput-object v6, Lcom/android/server/am/ActivityPluginDelegate;->activityServiceClass:Ljava/lang/Class;

    .line 139
    sget-object v6, Lcom/android/server/am/ActivityPluginDelegate;->activityServiceClass:Ljava/lang/Class;

    invoke-virtual {v6}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v6

    sput-object v6, Lcom/android/server/am/ActivityPluginDelegate;->activityServiceObj:Ljava/lang/Object;
    :try_end_5c
    .catch Ljava/lang/ClassNotFoundException; {:try_start_43 .. :try_end_5c} :catch_62
    .catch Ljava/lang/InstantiationException; {:try_start_43 .. :try_end_5c} :catch_62
    .catch Ljava/lang/IllegalAccessException; {:try_start_43 .. :try_end_5c} :catch_62
    .catch Ljava/lang/Exception; {:try_start_43 .. :try_end_5c} :catch_5d
    .catchall {:try_start_43 .. :try_end_5c} :catchall_69

    .line 156
    .end local v5    # "classLoader":Ldalvik/system/PathClassLoader;
    goto :goto_67

    .line 149
    :catch_5d
    move-exception v4

    .line 154
    .local v4, "e":Ljava/lang/Exception;
    :try_start_5e
    sput-boolean v3, Lcom/android/server/am/ActivityPluginDelegate;->extJarAvail:Z
    :try_end_60
    .catchall {:try_start_5e .. :try_end_60} :catchall_69

    .line 155
    monitor-exit v0

    return v3

    .line 141
    .end local v4    # "e":Ljava/lang/Exception;
    :catch_62
    move-exception v4

    .line 147
    .local v4, "e":Ljava/lang/ReflectiveOperationException;
    :try_start_63
    sput-boolean v3, Lcom/android/server/am/ActivityPluginDelegate;->extJarAvail:Z
    :try_end_65
    .catchall {:try_start_63 .. :try_end_65} :catchall_69

    .line 148
    monitor-exit v0

    return v3

    .line 158
    .end local v4    # "e":Ljava/lang/ReflectiveOperationException;
    :cond_67
    :goto_67
    monitor-exit v0

    return v4

    .line 117
    .end local v1    # "realProvider":Ljava/lang/String;
    .end local v2    # "realProviderPath":Ljava/lang/String;
    :catchall_69
    move-exception v1

    monitor-exit v0

    throw v1
.end method
