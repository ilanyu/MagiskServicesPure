.class public Lcom/miui/server/enterprise/ServiceUtils;
.super Ljava/lang/Object;
.source "ServiceUtils.java"


# static fields
.field private static volatile sEntService:Lcom/miui/server/enterprise/EnterpriseManagerService;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkPermission(Landroid/content/Context;)V
    .registers 11
    .param p0, "context"    # Landroid/content/Context;

    .line 20
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_d

    .line 21
    return-void

    .line 23
    :cond_d
    invoke-static {}, Lcom/miui/server/enterprise/ServiceUtils;->getEntService()Lcom/miui/server/enterprise/EnterpriseManagerService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/server/enterprise/EnterpriseManagerService;->isSignatureVerified()Z

    move-result v0

    if-eqz v0, :cond_8d

    .line 26
    invoke-static {}, Lcom/miui/server/enterprise/ServiceUtils;->getEntService()Lcom/miui/server/enterprise/EnterpriseManagerService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/server/enterprise/EnterpriseManagerService;->getEnterpriseCert()Lcom/miui/enterprise/signature/EnterpriseCer;

    move-result-object v0

    .line 27
    .local v0, "cert":Lcom/miui/enterprise/signature/EnterpriseCer;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    .line 28
    .local v1, "date":Ljava/util/Date;
    invoke-virtual {v0}, Lcom/miui/enterprise/signature/EnterpriseCer;->getValidFrom()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v2

    if-nez v2, :cond_85

    invoke-virtual {v0}, Lcom/miui/enterprise/signature/EnterpriseCer;->getValidTo()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v2

    if-nez v2, :cond_85

    .line 31
    iget-object v2, v0, Lcom/miui/enterprise/signature/EnterpriseCer;->permissions:[Ljava/lang/String;

    if-eqz v2, :cond_81

    iget-object v2, v0, Lcom/miui/enterprise/signature/EnterpriseCer;->permissions:[Ljava/lang/String;

    array-length v2, v2

    if-eqz v2, :cond_81

    .line 32
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    .line 33
    .local v2, "elements":[Ljava/lang/StackTraceElement;
    const/4 v3, 0x3

    aget-object v3, v2, v3

    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v3

    .line 34
    .local v3, "currentMethod":Ljava/lang/String;
    const/4 v4, 0x0

    .line 35
    .local v4, "match":Z
    iget-object v5, v0, Lcom/miui/enterprise/signature/EnterpriseCer;->permissions:[Ljava/lang/String;

    array-length v6, v5

    const/4 v7, 0x0

    :goto_58
    if-ge v7, v6, :cond_67

    aget-object v8, v5, v7

    .line 36
    .local v8, "permission":Ljava/lang/String;
    invoke-static {v3, v8}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_64

    .line 37
    const/4 v4, 0x1

    .line 38
    goto :goto_67

    .line 35
    .end local v8    # "permission":Ljava/lang/String;
    :cond_64
    add-int/lit8 v7, v7, 0x1

    goto :goto_58

    .line 41
    :cond_67
    :goto_67
    if-eqz v4, :cond_6a

    .end local v2    # "elements":[Ljava/lang/StackTraceElement;
    .end local v3    # "currentMethod":Ljava/lang/String;
    .end local v4    # "match":Z
    goto :goto_81

    .line 42
    .restart local v2    # "elements":[Ljava/lang/StackTraceElement;
    .restart local v3    # "currentMethod":Ljava/lang/String;
    .restart local v4    # "match":Z
    :cond_6a
    new-instance v5, Ljava/lang/SecurityException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Permission denied for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 45
    .end local v2    # "elements":[Ljava/lang/StackTraceElement;
    .end local v3    # "currentMethod":Ljava/lang/String;
    .end local v4    # "match":Z
    :cond_81
    :goto_81
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 46
    return-void

    .line 29
    :cond_85
    new-instance v2, Ljava/lang/SecurityException;

    const-string v3, "Enterprise cert out of date"

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 24
    .end local v0    # "cert":Lcom/miui/enterprise/signature/EnterpriseCer;
    .end local v1    # "date":Ljava/util/Date;
    :cond_8d
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "No enterprise cert"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static declared-synchronized getEntService()Lcom/miui/server/enterprise/EnterpriseManagerService;
    .registers 2

    const-class v0, Lcom/miui/server/enterprise/ServiceUtils;

    monitor-enter v0

    .line 49
    :try_start_3
    sget-object v1, Lcom/miui/server/enterprise/ServiceUtils;->sEntService:Lcom/miui/server/enterprise/EnterpriseManagerService;

    if-nez v1, :cond_11

    .line 50
    const-string v1, "EnterpriseManager"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    check-cast v1, Lcom/miui/server/enterprise/EnterpriseManagerService;

    sput-object v1, Lcom/miui/server/enterprise/ServiceUtils;->sEntService:Lcom/miui/server/enterprise/EnterpriseManagerService;

    .line 52
    :cond_11
    sget-object v1, Lcom/miui/server/enterprise/ServiceUtils;->sEntService:Lcom/miui/server/enterprise/EnterpriseManagerService;
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_15

    monitor-exit v0

    return-object v1

    .line 48
    :catchall_15
    move-exception v1

    monitor-exit v0

    throw v1
.end method
