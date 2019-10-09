.class public Lcom/android/server/am/MiuiSysUserServiceHelper;
.super Ljava/lang/Object;
.source "MiuiSysUserServiceHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/MiuiSysUserServiceHelper$UserHandler;
    }
.end annotation


# static fields
.field private static final ADJ_MEM_FACTOR_LOW:I = 0x2

.field private static final ADJ_MEM_FACTOR_NORMAL:I = 0x0

.field private static final EVENT_MEMORY_LEVEL:Ljava/lang/String; = "EVENT_MEMORY_LEVEL"

.field private static final KEY_MEMORY_LEVELLOW:Ljava/lang/String; = "KEY_MEMORY_LEVEL_LOW"

.field private static MSG_INPUT_DELAY_TIME:J = 0x0L

.field private static final MSG_INPUT_TIMEOUT:I = 0x2

.field private static final MSG_RESUME_DELAY:I = 0x1

.field private static MSG_RESUME_DELAY_TIME:J = 0x0L

.field public static final TAG:Ljava/lang/String; = "MIUI_SYS_USER"

.field private static mEnable:Z

.field private static sHandler:Landroid/os/Handler;

.field private static sInputLimit:Z

.field private static sIsLimit:Z

.field private static sLastMemoryLevel:I

.field public static sTopPackage:Ljava/lang/String;

.field private static sysUser:Lcom/android/internal/app/IMiuiSysUser;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 21
    new-instance v0, Lcom/android/server/am/MiuiSysUserServiceHelper$UserHandler;

    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/server/am/MiuiSysUserServiceHelper$UserHandler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/android/server/am/MiuiSysUserServiceHelper;->sHandler:Landroid/os/Handler;

    .line 22
    const-wide/16 v0, 0xbb8

    sput-wide v0, Lcom/android/server/am/MiuiSysUserServiceHelper;->MSG_RESUME_DELAY_TIME:J

    .line 23
    const-wide/16 v0, 0x3e8

    sput-wide v0, Lcom/android/server/am/MiuiSysUserServiceHelper;->MSG_INPUT_DELAY_TIME:J

    .line 26
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/am/MiuiSysUserServiceHelper;->sIsLimit:Z

    .line 27
    sput-boolean v0, Lcom/android/server/am/MiuiSysUserServiceHelper;->sInputLimit:Z

    .line 28
    invoke-static {}, Lcom/android/server/am/MiuiSysUserServiceHelper;->getDefaultEnable()Z

    move-result v1

    sput-boolean v1, Lcom/android/server/am/MiuiSysUserServiceHelper;->mEnable:Z

    .line 31
    sput v0, Lcom/android/server/am/MiuiSysUserServiceHelper;->sLastMemoryLevel:I

    .line 36
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/am/MiuiSysUserServiceHelper;->sTopPackage:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$002(Z)Z
    .registers 1
    .param p0, "x0"    # Z

    .line 15
    sput-boolean p0, Lcom/android/server/am/MiuiSysUserServiceHelper;->sIsLimit:Z

    return p0
.end method

.method static synthetic access$102(Z)Z
    .registers 1
    .param p0, "x0"    # Z

    .line 15
    sput-boolean p0, Lcom/android/server/am/MiuiSysUserServiceHelper;->sInputLimit:Z

    return p0
.end method

.method public static getDefaultEnable()Z
    .registers 1

    .line 38
    const/4 v0, 0x0

    return v0
.end method

.method public static isAllLimit()Z
    .registers 1

    .line 110
    sget-boolean v0, Lcom/android/server/am/MiuiSysUserServiceHelper;->sIsLimit:Z

    if-nez v0, :cond_b

    sget-boolean v0, Lcom/android/server/am/MiuiSysUserServiceHelper;->sInputLimit:Z

    if-eqz v0, :cond_9

    goto :goto_b

    :cond_9
    const/4 v0, 0x0

    goto :goto_c

    :cond_b
    :goto_b
    const/4 v0, 0x1

    :goto_c
    return v0
.end method

.method public static isLowMemory()Z
    .registers 2

    .line 114
    sget v0, Lcom/android/server/am/MiuiSysUserServiceHelper;->sLastMemoryLevel:I

    const/4 v1, 0x2

    if-lt v0, v1, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method

.method static notifyAMCreateActivity(Landroid/content/ComponentName;II)V
    .registers 7
    .param p0, "name"    # Landroid/content/ComponentName;
    .param p1, "pid"    # I
    .param p2, "identify"    # I

    .line 195
    :try_start_0
    invoke-static {}, Lcom/android/server/am/MiuiSysUserServiceHelper;->sendAllLimitMessage()V

    .line 196
    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/MiuiSysUserServiceHelper;->sTopPackage:Ljava/lang/String;

    .line 197
    sget-object v0, Lcom/android/server/am/MiuiSysUserServiceHelper;->sysUser:Lcom/android/internal/app/IMiuiSysUser;

    if-eqz v0, :cond_12

    .line 198
    sget-object v0, Lcom/android/server/am/MiuiSysUserServiceHelper;->sysUser:Lcom/android/internal/app/IMiuiSysUser;

    invoke-interface {v0, p0, p1, p2}, Lcom/android/internal/app/IMiuiSysUser;->notifyAMCreateActivity(Landroid/content/ComponentName;II)V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_12} :catch_13

    .line 203
    :cond_12
    goto :goto_31

    .line 200
    :catch_13
    move-exception v0

    .line 201
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 202
    const-string v1, "MIUI_SYS_USER"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "call notifyAMCreateActivity error !!!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_31
    return-void
.end method

.method static notifyAMDestroyActivity(II)V
    .registers 6
    .param p0, "pid"    # I
    .param p1, "identify"    # I

    .line 147
    :try_start_0
    sget-object v0, Lcom/android/server/am/MiuiSysUserServiceHelper;->sysUser:Lcom/android/internal/app/IMiuiSysUser;

    if-eqz v0, :cond_9

    .line 148
    sget-object v0, Lcom/android/server/am/MiuiSysUserServiceHelper;->sysUser:Lcom/android/internal/app/IMiuiSysUser;

    invoke-interface {v0, p0, p1}, Lcom/android/internal/app/IMiuiSysUser;->notifyAMDestroyActivity(II)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_9} :catch_a

    .line 153
    :cond_9
    goto :goto_28

    .line 150
    :catch_a
    move-exception v0

    .line 151
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 152
    const-string v1, "MIUI_SYS_USER"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "call notifyAMDestroyActivity error !!!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_28
    return-void
.end method

.method static notifyAMPauseActivity(II)V
    .registers 6
    .param p0, "pid"    # I
    .param p1, "identify"    # I

    .line 158
    :try_start_0
    sget-object v0, Lcom/android/server/am/MiuiSysUserServiceHelper;->sysUser:Lcom/android/internal/app/IMiuiSysUser;

    if-eqz v0, :cond_9

    .line 159
    sget-object v0, Lcom/android/server/am/MiuiSysUserServiceHelper;->sysUser:Lcom/android/internal/app/IMiuiSysUser;

    invoke-interface {v0, p0, p1}, Lcom/android/internal/app/IMiuiSysUser;->notifyAMPauseActivity(II)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_9} :catch_a

    .line 164
    :cond_9
    goto :goto_28

    .line 161
    :catch_a
    move-exception v0

    .line 162
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 163
    const-string v1, "MIUI_SYS_USER"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "call notifyAMPauseActivity error !!!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_28
    return-void
.end method

.method static notifyAMProcDied(ILjava/lang/String;)V
    .registers 6
    .param p0, "pid"    # I
    .param p1, "packageName"    # Ljava/lang/String;

    .line 136
    :try_start_0
    sget-object v0, Lcom/android/server/am/MiuiSysUserServiceHelper;->sysUser:Lcom/android/internal/app/IMiuiSysUser;

    if-eqz v0, :cond_9

    .line 137
    sget-object v0, Lcom/android/server/am/MiuiSysUserServiceHelper;->sysUser:Lcom/android/internal/app/IMiuiSysUser;

    invoke-interface {v0, p0, p1}, Lcom/android/internal/app/IMiuiSysUser;->notifyAMProcDied(ILjava/lang/String;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_9} :catch_a

    .line 142
    :cond_9
    goto :goto_28

    .line 139
    :catch_a
    move-exception v0

    .line 140
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 141
    const-string v1, "MIUI_SYS_USER"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "call notifyAMProcDied error !!!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_28
    return-void
.end method

.method static notifyAMProcStart(JIILjava/lang/String;Landroid/content/ComponentName;Ljava/lang/String;)V
    .registers 16
    .param p0, "startUsedTime"    # J
    .param p2, "pid"    # I
    .param p3, "uid"    # I
    .param p4, "processName"    # Ljava/lang/String;
    .param p5, "name"    # Landroid/content/ComponentName;
    .param p6, "reason"    # Ljava/lang/String;

    .line 124
    :try_start_0
    sget-object v0, Lcom/android/server/am/MiuiSysUserServiceHelper;->sysUser:Lcom/android/internal/app/IMiuiSysUser;

    if-eqz v0, :cond_f

    .line 125
    sget-object v1, Lcom/android/server/am/MiuiSysUserServiceHelper;->sysUser:Lcom/android/internal/app/IMiuiSysUser;

    move-wide v2, p0

    move v4, p2

    move v5, p3

    move-object v6, p4

    move-object v7, p5

    move-object v8, p6

    invoke-interface/range {v1 .. v8}, Lcom/android/internal/app/IMiuiSysUser;->notifyAMProcStart(JIILjava/lang/String;Landroid/content/ComponentName;Ljava/lang/String;)V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_f} :catch_10

    .line 131
    :cond_f
    goto :goto_2e

    .line 128
    :catch_10
    move-exception v0

    .line 129
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 130
    const-string v1, "MIUI_SYS_USER"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "call notifyAMProcStart error !!!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_2e
    return-void
.end method

.method static notifyAMRestartActivity(Landroid/content/ComponentName;II)V
    .registers 7
    .param p0, "name"    # Landroid/content/ComponentName;
    .param p1, "pid"    # I
    .param p2, "identify"    # I

    .line 182
    :try_start_0
    invoke-static {}, Lcom/android/server/am/MiuiSysUserServiceHelper;->sendAllLimitMessage()V

    .line 183
    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/MiuiSysUserServiceHelper;->sTopPackage:Ljava/lang/String;

    .line 184
    sget-object v0, Lcom/android/server/am/MiuiSysUserServiceHelper;->sysUser:Lcom/android/internal/app/IMiuiSysUser;

    if-eqz v0, :cond_12

    .line 185
    sget-object v0, Lcom/android/server/am/MiuiSysUserServiceHelper;->sysUser:Lcom/android/internal/app/IMiuiSysUser;

    invoke-interface {v0, p0, p1, p2}, Lcom/android/internal/app/IMiuiSysUser;->notifyAMRestartActivity(Landroid/content/ComponentName;II)V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_12} :catch_13

    .line 190
    :cond_12
    goto :goto_31

    .line 187
    :catch_13
    move-exception v0

    .line 188
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 189
    const-string v1, "MIUI_SYS_USER"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "call notifyAMRestartActivity error !!!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_31
    return-void
.end method

.method static notifyAMResumeActivity(Landroid/content/ComponentName;II)V
    .registers 7
    .param p0, "name"    # Landroid/content/ComponentName;
    .param p1, "pid"    # I
    .param p2, "identify"    # I

    .line 169
    :try_start_0
    invoke-static {}, Lcom/android/server/am/MiuiSysUserServiceHelper;->sendAllLimitMessage()V

    .line 170
    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/MiuiSysUserServiceHelper;->sTopPackage:Ljava/lang/String;

    .line 171
    sget-object v0, Lcom/android/server/am/MiuiSysUserServiceHelper;->sysUser:Lcom/android/internal/app/IMiuiSysUser;

    if-eqz v0, :cond_12

    .line 172
    sget-object v0, Lcom/android/server/am/MiuiSysUserServiceHelper;->sysUser:Lcom/android/internal/app/IMiuiSysUser;

    invoke-interface {v0, p0, p1, p2}, Lcom/android/internal/app/IMiuiSysUser;->notifyAMResumeActivity(Landroid/content/ComponentName;II)V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_12} :catch_13

    .line 177
    :cond_12
    goto :goto_31

    .line 174
    :catch_13
    move-exception v0

    .line 175
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 176
    const-string v1, "MIUI_SYS_USER"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "call notifyAMResumeActivity error !!!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_31
    return-void
.end method

.method static notifyEvent(Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 6
    .param p0, "eventTag"    # Ljava/lang/String;
    .param p1, "data"    # Landroid/os/Bundle;

    .line 208
    :try_start_0
    sget-object v0, Lcom/android/server/am/MiuiSysUserServiceHelper;->sysUser:Lcom/android/internal/app/IMiuiSysUser;

    if-eqz v0, :cond_9

    .line 209
    sget-object v0, Lcom/android/server/am/MiuiSysUserServiceHelper;->sysUser:Lcom/android/internal/app/IMiuiSysUser;

    invoke-interface {v0, p0, p1}, Lcom/android/internal/app/IMiuiSysUser;->notifyEvent(Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_9} :catch_a

    .line 214
    :cond_9
    goto :goto_28

    .line 211
    :catch_a
    move-exception v0

    .line 212
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 213
    const-string v1, "MIUI_SYS_USER"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "call notifyEvent error !!!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_28
    return-void
.end method

.method public static notifyMemoryLevelChange(I)V
    .registers 4
    .param p0, "memFactor"    # I

    .line 94
    const/4 v0, 0x2

    if-lt p0, v0, :cond_18

    .line 95
    sget v1, Lcom/android/server/am/MiuiSysUserServiceHelper;->sLastMemoryLevel:I

    if-ge v1, v0, :cond_2c

    .line 96
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 97
    .local v0, "data":Landroid/os/Bundle;
    const-string v1, "KEY_MEMORY_LEVEL_LOW"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 98
    const-string v1, "EVENT_MEMORY_LEVEL"

    invoke-static {v1, v0}, Lcom/android/server/am/MiuiSysUserServiceHelper;->notifyEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 99
    .end local v0    # "data":Landroid/os/Bundle;
    goto :goto_2c

    .line 101
    :cond_18
    sget v1, Lcom/android/server/am/MiuiSysUserServiceHelper;->sLastMemoryLevel:I

    if-lt v1, v0, :cond_2c

    .line 102
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 103
    .restart local v0    # "data":Landroid/os/Bundle;
    const-string v1, "KEY_MEMORY_LEVEL_LOW"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 104
    const-string v1, "EVENT_MEMORY_LEVEL"

    invoke-static {v1, v0}, Lcom/android/server/am/MiuiSysUserServiceHelper;->notifyEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 107
    .end local v0    # "data":Landroid/os/Bundle;
    :cond_2c
    :goto_2c
    return-void
.end method

.method private static sendAllLimitMessage()V
    .registers 4

    .line 75
    sget-boolean v0, Lcom/android/server/am/MiuiSysUserServiceHelper;->mEnable:Z

    if-nez v0, :cond_8

    .line 76
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/am/MiuiSysUserServiceHelper;->sIsLimit:Z

    .line 77
    return-void

    .line 79
    :cond_8
    sget-object v0, Lcom/android/server/am/MiuiSysUserServiceHelper;->sHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1b

    .line 80
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/server/am/MiuiSysUserServiceHelper;->sIsLimit:Z

    .line 81
    sget-object v1, Lcom/android/server/am/MiuiSysUserServiceHelper;->sHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 82
    sget-object v1, Lcom/android/server/am/MiuiSysUserServiceHelper;->sHandler:Landroid/os/Handler;

    sget-wide v2, Lcom/android/server/am/MiuiSysUserServiceHelper;->MSG_RESUME_DELAY_TIME:J

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 84
    :cond_1b
    return-void
.end method

.method public static sendInputMessage()V
    .registers 4

    .line 64
    sget-boolean v0, Lcom/android/server/am/MiuiSysUserServiceHelper;->mEnable:Z

    if-nez v0, :cond_8

    .line 65
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/am/MiuiSysUserServiceHelper;->sInputLimit:Z

    .line 66
    return-void

    .line 68
    :cond_8
    sget-object v0, Lcom/android/server/am/MiuiSysUserServiceHelper;->sHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1c

    .line 69
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/server/am/MiuiSysUserServiceHelper;->sInputLimit:Z

    .line 70
    sget-object v0, Lcom/android/server/am/MiuiSysUserServiceHelper;->sHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 71
    sget-object v0, Lcom/android/server/am/MiuiSysUserServiceHelper;->sHandler:Landroid/os/Handler;

    sget-wide v2, Lcom/android/server/am/MiuiSysUserServiceHelper;->MSG_INPUT_DELAY_TIME:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 73
    :cond_1c
    return-void
.end method

.method public static setEnable(Z)V
    .registers 1
    .param p0, "enable"    # Z

    .line 43
    return-void
.end method

.method public static setMemLevel(I)V
    .registers 2
    .param p0, "memoryLevel"    # I

    .line 87
    sget v0, Lcom/android/server/am/MiuiSysUserServiceHelper;->sLastMemoryLevel:I

    if-eq v0, p0, :cond_7

    .line 88
    invoke-static {p0}, Lcom/android/server/am/MiuiSysUserServiceHelper;->notifyMemoryLevelChange(I)V

    .line 90
    :cond_7
    sput p0, Lcom/android/server/am/MiuiSysUserServiceHelper;->sLastMemoryLevel:I

    .line 91
    return-void
.end method

.method public static setMiuiSysUser(Lcom/android/internal/app/IMiuiSysUser;)V
    .registers 1
    .param p0, "obj"    # Lcom/android/internal/app/IMiuiSysUser;

    .line 118
    sput-object p0, Lcom/android/server/am/MiuiSysUserServiceHelper;->sysUser:Lcom/android/internal/app/IMiuiSysUser;

    .line 119
    return-void
.end method
