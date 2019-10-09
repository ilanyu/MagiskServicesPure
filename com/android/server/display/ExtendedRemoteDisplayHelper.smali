.class Lcom/android/server/display/ExtendedRemoteDisplayHelper;
.super Ljava/lang/Object;
.source "ExtendedRemoteDisplayHelper.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ExtendedRemoteDisplayHelper"

.field private static sExtRemoteDisplayClass:Ljava/lang/Class;

.field private static sExtRemoteDisplayDispose:Ljava/lang/reflect/Method;

.field private static sExtRemoteDisplayListen:Ljava/lang/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .line 61
    :try_start_0
    const-string v0, "com.qualcomm.wfd.ExtendedRemoteDisplay"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/android/server/display/ExtendedRemoteDisplayHelper;->sExtRemoteDisplayClass:Ljava/lang/Class;
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_8} :catch_9

    .line 64
    goto :goto_11

    .line 62
    :catch_9
    move-exception v0

    .line 63
    .local v0, "t":Ljava/lang/Throwable;
    const-string v1, "ExtendedRemoteDisplayHelper"

    const-string v2, "ExtendedRemoteDisplay Not available."

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    .end local v0    # "t":Ljava/lang/Throwable;
    :goto_11
    sget-object v0, Lcom/android/server/display/ExtendedRemoteDisplayHelper;->sExtRemoteDisplayClass:Ljava/lang/Class;

    if-eqz v0, :cond_5c

    .line 68
    const-string v0, "ExtendedRemoteDisplayHelper"

    const-string v1, "ExtendedRemoteDisplay Is available. Find Methods"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    const/4 v0, 0x4

    const/4 v1, 0x0

    :try_start_1e
    new-array v0, v0, [Ljava/lang/Class;

    const-class v2, Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v2, 0x1

    const-class v3, Landroid/media/RemoteDisplay$Listener;

    aput-object v3, v0, v2

    const/4 v2, 0x2

    const-class v3, Landroid/os/Handler;

    aput-object v3, v0, v2

    const/4 v2, 0x3

    const-class v3, Landroid/content/Context;

    aput-object v3, v0, v2

    .line 75
    .local v0, "args":[Ljava/lang/Class;
    sget-object v2, Lcom/android/server/display/ExtendedRemoteDisplayHelper;->sExtRemoteDisplayClass:Ljava/lang/Class;

    const-string/jumbo v3, "listen"

    invoke-virtual {v2, v3, v0}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    sput-object v2, Lcom/android/server/display/ExtendedRemoteDisplayHelper;->sExtRemoteDisplayListen:Ljava/lang/reflect/Method;
    :try_end_3e
    .catch Ljava/lang/Throwable; {:try_start_1e .. :try_end_3e} :catch_3f

    .line 78
    .end local v0    # "args":[Ljava/lang/Class;
    goto :goto_47

    .line 76
    :catch_3f
    move-exception v0

    .line 77
    .local v0, "t":Ljava/lang/Throwable;
    const-string v2, "ExtendedRemoteDisplayHelper"

    const-string v3, "ExtendedRemoteDisplay.listen Not available."

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    .end local v0    # "t":Ljava/lang/Throwable;
    :goto_47
    :try_start_47
    new-array v0, v1, [Ljava/lang/Class;

    .line 82
    .local v0, "args":[Ljava/lang/Class;
    sget-object v1, Lcom/android/server/display/ExtendedRemoteDisplayHelper;->sExtRemoteDisplayClass:Ljava/lang/Class;

    const-string v2, "dispose"

    invoke-virtual {v1, v2, v0}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Lcom/android/server/display/ExtendedRemoteDisplayHelper;->sExtRemoteDisplayDispose:Ljava/lang/reflect/Method;
    :try_end_53
    .catch Ljava/lang/Throwable; {:try_start_47 .. :try_end_53} :catch_54

    .line 85
    .end local v0    # "args":[Ljava/lang/Class;
    goto :goto_5c

    .line 83
    :catch_54
    move-exception v0

    .line 84
    .local v0, "t":Ljava/lang/Throwable;
    const-string v1, "ExtendedRemoteDisplayHelper"

    const-string v2, "ExtendedRemoteDisplay.dispose Not available."

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    .end local v0    # "t":Ljava/lang/Throwable;
    :cond_5c
    :goto_5c
    return-void
.end method

.method constructor <init>()V
    .registers 1

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static dispose(Ljava/lang/Object;)V
    .registers 4
    .param p0, "extRemoteDisplay"    # Ljava/lang/Object;

    .line 130
    const-string v0, "ExtendedRemoteDisplayHelper"

    const-string v1, "ExtendedRemoteDisplay.dispose"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    :try_start_7
    sget-object v0, Lcom/android/server/display/ExtendedRemoteDisplayHelper;->sExtRemoteDisplayDispose:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_f
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_7 .. :try_end_f} :catch_1c
    .catch Ljava/lang/IllegalAccessException; {:try_start_7 .. :try_end_f} :catch_10

    .line 146
    goto :goto_1b

    .line 143
    :catch_10
    move-exception v0

    .line 144
    .local v0, "e":Ljava/lang/IllegalAccessException;
    const-string v1, "ExtendedRemoteDisplayHelper"

    const-string v2, "ExtendedRemoteDisplay.dispose-IllegalAccessException"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    .line 147
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    :goto_1b
    return-void

    .line 133
    :catch_1c
    move-exception v0

    .line 134
    .local v0, "e":Ljava/lang/reflect/InvocationTargetException;
    const-string v1, "ExtendedRemoteDisplayHelper"

    const-string v2, "ExtendedRemoteDisplay.dispose - InvocationTargetException"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    .line 136
    .local v1, "cause":Ljava/lang/Throwable;
    instance-of v2, v1, Ljava/lang/RuntimeException;

    if-nez v2, :cond_3a

    .line 138
    instance-of v2, v1, Ljava/lang/Error;

    if-eqz v2, :cond_34

    .line 139
    move-object v2, v1

    check-cast v2, Ljava/lang/Error;

    throw v2

    .line 141
    :cond_34
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 137
    :cond_3a
    move-object v2, v1

    check-cast v2, Ljava/lang/RuntimeException;

    throw v2
.end method

.method public static isAvailable()Z
    .registers 2

    .line 154
    sget-object v0, Lcom/android/server/display/ExtendedRemoteDisplayHelper;->sExtRemoteDisplayClass:Ljava/lang/Class;

    if-eqz v0, :cond_15

    sget-object v0, Lcom/android/server/display/ExtendedRemoteDisplayHelper;->sExtRemoteDisplayDispose:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_15

    sget-object v0, Lcom/android/server/display/ExtendedRemoteDisplayHelper;->sExtRemoteDisplayListen:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_15

    .line 157
    const-string v0, "ExtendedRemoteDisplayHelper"

    const-string v1, "ExtendedRemoteDisplay isAvailable() : Available."

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    const/4 v0, 0x1

    return v0

    .line 160
    :cond_15
    const-string v0, "ExtendedRemoteDisplayHelper"

    const-string v1, "ExtendedRemoteDisplay isAvailable() : Not Available."

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    const/4 v0, 0x0

    return v0
.end method

.method public static listen(Ljava/lang/String;Landroid/media/RemoteDisplay$Listener;Landroid/os/Handler;Landroid/content/Context;)Ljava/lang/Object;
    .registers 9
    .param p0, "iface"    # Ljava/lang/String;
    .param p1, "listener"    # Landroid/media/RemoteDisplay$Listener;
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "context"    # Landroid/content/Context;

    .line 101
    const/4 v0, 0x0

    .line 102
    .local v0, "extRemoteDisplay":Ljava/lang/Object;
    const-string v1, "ExtendedRemoteDisplayHelper"

    const-string v2, "ExtendedRemoteDisplay.listen"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    sget-object v1, Lcom/android/server/display/ExtendedRemoteDisplayHelper;->sExtRemoteDisplayListen:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_56

    sget-object v1, Lcom/android/server/display/ExtendedRemoteDisplayHelper;->sExtRemoteDisplayDispose:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_56

    .line 106
    :try_start_10
    sget-object v1, Lcom/android/server/display/ExtendedRemoteDisplayHelper;->sExtRemoteDisplayListen:Ljava/lang/reflect/Method;

    const/4 v2, 0x0

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    const/4 v4, 0x2

    aput-object p2, v3, v4

    const/4 v4, 0x3

    aput-object p3, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1
    :try_end_26
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_10 .. :try_end_26} :catch_34
    .catch Ljava/lang/IllegalAccessException; {:try_start_10 .. :try_end_26} :catch_28

    move-object v0, v1

    .line 121
    goto :goto_56

    .line 118
    :catch_28
    move-exception v1

    .line 119
    .local v1, "e":Ljava/lang/IllegalAccessException;
    const-string v2, "ExtendedRemoteDisplayHelper"

    const-string v3, "ExtendedRemoteDisplay.listen -IllegalAccessException"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    invoke-virtual {v1}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    .end local v1    # "e":Ljava/lang/IllegalAccessException;
    goto :goto_56

    .line 108
    :catch_34
    move-exception v1

    .line 109
    .local v1, "e":Ljava/lang/reflect/InvocationTargetException;
    const-string v2, "ExtendedRemoteDisplayHelper"

    const-string v3, "ExtendedRemoteDisplay.listen - InvocationTargetException"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    invoke-virtual {v1}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    .line 111
    .local v2, "cause":Ljava/lang/Throwable;
    instance-of v3, v2, Ljava/lang/RuntimeException;

    if-nez v3, :cond_52

    .line 113
    instance-of v3, v2, Ljava/lang/Error;

    if-eqz v3, :cond_4c

    .line 114
    move-object v3, v2

    check-cast v3, Ljava/lang/Error;

    throw v3

    .line 116
    :cond_4c
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 112
    :cond_52
    move-object v3, v2

    check-cast v3, Ljava/lang/RuntimeException;

    throw v3

    .line 123
    .end local v1    # "e":Ljava/lang/reflect/InvocationTargetException;
    .end local v2    # "cause":Ljava/lang/Throwable;
    :cond_56
    :goto_56
    return-object v0
.end method
