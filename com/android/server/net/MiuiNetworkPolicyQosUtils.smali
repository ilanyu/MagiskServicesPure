.class public Lcom/android/server/net/MiuiNetworkPolicyQosUtils;
.super Ljava/lang/Object;
.source "MiuiNetworkPolicyQosUtils.java"


# static fields
.field private static final DEBUG:Z = true

.field private static final DSCP_DEFAULT_STATE:I = 0x0

.field private static final DSCP_INIT_STATE:I = 0x1

.field private static final DSCP_QOS_STATE:I = 0x2

.field private static final DSCP_TOS_EF:I = 0xb8

.field private static final EF_AN_WECHAT:Ljava/lang/String; = "com.tencent.mm.plugin.voip.ui.VideoActivity"

.field private static final EF_PN_WECHAT:Ljava/lang/String; = "com.tencent.mm"

.field private static final LOCAL_EF_APP_LIST:[Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "MiuiNetworkPolicyQosUtils"


# instance fields
.field private mActivityChangeListener:Lmiui/process/IActivityChangeListener$Stub;

.field private final mContext:Landroid/content/Context;

.field private mDscpState:I

.field private mEFApps:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mEFAppsPN:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mHandler:Landroid/os/Handler;

.field private mNetMgrService:Lcom/android/server/MiuiNetworkManagementService;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 64
    const-string v0, "com.tencent.mm"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/net/MiuiNetworkPolicyQosUtils;->LOCAL_EF_APP_LIST:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    new-instance v0, Lcom/android/server/net/MiuiNetworkPolicyQosUtils$1;

    invoke-direct {v0, p0}, Lcom/android/server/net/MiuiNetworkPolicyQosUtils$1;-><init>(Lcom/android/server/net/MiuiNetworkPolicyQosUtils;)V

    iput-object v0, p0, Lcom/android/server/net/MiuiNetworkPolicyQosUtils;->mActivityChangeListener:Lmiui/process/IActivityChangeListener$Stub;

    .line 75
    iput-object p1, p0, Lcom/android/server/net/MiuiNetworkPolicyQosUtils;->mContext:Landroid/content/Context;

    .line 76
    iput-object p2, p0, Lcom/android/server/net/MiuiNetworkPolicyQosUtils;->mHandler:Landroid/os/Handler;

    .line 77
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/net/MiuiNetworkPolicyQosUtils;->mEFApps:Ljava/util/Set;

    .line 78
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/net/MiuiNetworkPolicyQosUtils;->setDscpStatus(I)V

    .line 79
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/net/MiuiNetworkPolicyQosUtils;Z)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/net/MiuiNetworkPolicyQosUtils;
    .param p1, "x1"    # Z

    .line 50
    invoke-direct {p0, p1}, Lcom/android/server/net/MiuiNetworkPolicyQosUtils;->tryToSetQos(Z)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/net/MiuiNetworkPolicyQosUtils;)Lcom/android/server/MiuiNetworkManagementService;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/net/MiuiNetworkPolicyQosUtils;

    .line 50
    iget-object v0, p0, Lcom/android/server/net/MiuiNetworkPolicyQosUtils;->mNetMgrService:Lcom/android/server/MiuiNetworkManagementService;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/net/MiuiNetworkPolicyQosUtils;Z)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/net/MiuiNetworkPolicyQosUtils;
    .param p1, "x1"    # Z

    .line 50
    invoke-direct {p0, p1}, Lcom/android/server/net/MiuiNetworkPolicyQosUtils;->updateDscpStatus(Z)V

    return-void
.end method

.method private declared-synchronized enableQos(Z)V
    .registers 4
    .param p1, "enable"    # Z

    monitor-enter p0

    .line 123
    :try_start_1
    invoke-direct {p0, p1}, Lcom/android/server/net/MiuiNetworkPolicyQosUtils;->isQosReadyForEnable(Z)Z

    move-result v0

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/android/server/net/MiuiNetworkPolicyQosUtils;->mNetMgrService:Lcom/android/server/MiuiNetworkManagementService;

    if-nez v0, :cond_c

    goto :goto_18

    .line 124
    :cond_c
    iget-object v0, p0, Lcom/android/server/net/MiuiNetworkPolicyQosUtils;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/net/MiuiNetworkPolicyQosUtils$2;

    invoke-direct {v1, p0, p1}, Lcom/android/server/net/MiuiNetworkPolicyQosUtils$2;-><init>(Lcom/android/server/net/MiuiNetworkPolicyQosUtils;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_16
    .catchall {:try_start_1 .. :try_end_16} :catchall_1a

    .line 132
    monitor-exit p0

    return-void

    .line 123
    :cond_18
    :goto_18
    monitor-exit p0

    return-void

    .line 122
    .end local p1    # "enable":Z
    :catchall_1a
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/android/server/net/MiuiNetworkPolicyQosUtils;
    throw p1
.end method

.method private getEFApps()Ljava/util/Set;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 183
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 184
    .local v0, "appList":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_6
    sget-object v2, Lcom/android/server/net/MiuiNetworkPolicyQosUtils;->LOCAL_EF_APP_LIST:[Ljava/lang/String;

    array-length v2, v2

    if-ge v1, v2, :cond_15

    .line 185
    sget-object v2, Lcom/android/server/net/MiuiNetworkPolicyQosUtils;->LOCAL_EF_APP_LIST:[Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 184
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 187
    .end local v1    # "i":I
    :cond_15
    return-object v0
.end method

.method private isQosReadyForEnable(Z)Z
    .registers 5
    .param p1, "action"    # Z

    .line 163
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_b

    iget v2, p0, Lcom/android/server/net/MiuiNetworkPolicyQosUtils;->mDscpState:I

    if-nez v2, :cond_a

    :goto_8
    move v0, v1

    goto :goto_10

    :cond_a
    goto :goto_10

    :cond_b
    iget v2, p0, Lcom/android/server/net/MiuiNetworkPolicyQosUtils;->mDscpState:I

    if-ne v2, v1, :cond_a

    goto :goto_8

    :goto_10
    return v0
.end method

.method private isQosReadyForSetValue(Z)Z
    .registers 6
    .param p1, "action"    # Z

    .line 160
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_b

    iget v2, p0, Lcom/android/server/net/MiuiNetworkPolicyQosUtils;->mDscpState:I

    if-ne v2, v1, :cond_a

    :goto_8
    move v0, v1

    goto :goto_11

    :cond_a
    goto :goto_11

    :cond_b
    iget v2, p0, Lcom/android/server/net/MiuiNetworkPolicyQosUtils;->mDscpState:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_a

    goto :goto_8

    :goto_11
    return v0
.end method

.method private static isUidValidForQos(I)Z
    .registers 2
    .param p0, "uid"    # I

    .line 119
    invoke-static {p0}, Landroid/os/UserHandle;->isApp(I)Z

    move-result v0

    return v0
.end method

.method private registerActivityChangeListener()V
    .registers 4

    .line 106
    iget-object v0, p0, Lcom/android/server/net/MiuiNetworkPolicyQosUtils;->mActivityChangeListener:Lmiui/process/IActivityChangeListener$Stub;

    if-eqz v0, :cond_22

    .line 107
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 108
    .local v0, "targetActivities":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 109
    .local v1, "targetPackages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v2, "com.tencent.mm"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 110
    const-string v2, "com.tencent.mm.plugin.voip.ui.VideoActivity"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 111
    iget-object v2, p0, Lcom/android/server/net/MiuiNetworkPolicyQosUtils;->mActivityChangeListener:Lmiui/process/IActivityChangeListener$Stub;

    invoke-static {v2}, Lmiui/process/ProcessManager;->unregisterActivityChanageListener(Lmiui/process/IActivityChangeListener;)V

    .line 112
    iget-object v2, p0, Lcom/android/server/net/MiuiNetworkPolicyQosUtils;->mActivityChangeListener:Lmiui/process/IActivityChangeListener$Stub;

    invoke-static {v1, v0, v2}, Lmiui/process/ProcessManager;->registerActivityChangeListener(Ljava/util/List;Ljava/util/List;Lmiui/process/IActivityChangeListener;)V

    .line 115
    .end local v0    # "targetActivities":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v1    # "targetPackages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_22
    return-void
.end method

.method private setDscpStatus(I)V
    .registers 2
    .param p1, "dscpStatus"    # I

    .line 156
    iput p1, p0, Lcom/android/server/net/MiuiNetworkPolicyQosUtils;->mDscpState:I

    .line 157
    return-void
.end method

.method private setQos(ZI)V
    .registers 5
    .param p1, "add"    # Z
    .param p2, "uid"    # I

    .line 144
    invoke-static {p2}, Lcom/android/server/net/MiuiNetworkPolicyQosUtils;->isUidValidForQos(I)Z

    move-result v0

    if-eqz v0, :cond_1c

    invoke-direct {p0, p1}, Lcom/android/server/net/MiuiNetworkPolicyQosUtils;->isQosReadyForSetValue(Z)Z

    move-result v0

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/android/server/net/MiuiNetworkPolicyQosUtils;->mNetMgrService:Lcom/android/server/MiuiNetworkManagementService;

    if-nez v0, :cond_11

    goto :goto_1c

    .line 145
    :cond_11
    iget-object v0, p0, Lcom/android/server/net/MiuiNetworkPolicyQosUtils;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/net/MiuiNetworkPolicyQosUtils$3;

    invoke-direct {v1, p0, p2, p1}, Lcom/android/server/net/MiuiNetworkPolicyQosUtils$3;-><init>(Lcom/android/server/net/MiuiNetworkPolicyQosUtils;IZ)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 153
    return-void

    .line 144
    :cond_1c
    :goto_1c
    return-void
.end method

.method private declared-synchronized tryToSetQos(Z)V
    .registers 7
    .param p1, "add"    # Z

    monitor-enter p0

    .line 135
    :try_start_1
    iget-object v0, p0, Lcom/android/server/net/MiuiNetworkPolicyQosUtils;->mEFApps:Ljava/util/Set;

    if-eqz v0, :cond_3e

    iget-object v0, p0, Lcom/android/server/net/MiuiNetworkPolicyQosUtils;->mEFApps:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3e

    .line 136
    iget-object v0, p0, Lcom/android/server/net/MiuiNetworkPolicyQosUtils;->mEFApps:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_13
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 137
    .local v1, "uid":I
    const-string v2, "MiuiNetworkPolicyQosUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "tryToSetQos uid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    invoke-direct {p0, p1, v1}, Lcom/android/server/net/MiuiNetworkPolicyQosUtils;->setQos(ZI)V
    :try_end_3d
    .catchall {:try_start_1 .. :try_end_3d} :catchall_40

    .line 139
    .end local v1    # "uid":I
    goto :goto_13

    .line 141
    :cond_3e
    monitor-exit p0

    return-void

    .line 134
    .end local p1    # "add":Z
    :catchall_40
    move-exception p1

    monitor-exit p0

    .line 134
    .end local p0    # "this":Lcom/android/server/net/MiuiNetworkPolicyQosUtils;
    throw p1
.end method

.method private updateDscpStatus(Z)V
    .registers 4
    .param p1, "action"    # Z

    .line 167
    const/4 v0, 0x1

    if-eqz p1, :cond_10

    .line 168
    iget v1, p0, Lcom/android/server/net/MiuiNetworkPolicyQosUtils;->mDscpState:I

    if-nez v1, :cond_b

    .line 169
    invoke-direct {p0, v0}, Lcom/android/server/net/MiuiNetworkPolicyQosUtils;->setDscpStatus(I)V

    goto :goto_1c

    .line 171
    :cond_b
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/server/net/MiuiNetworkPolicyQosUtils;->setDscpStatus(I)V

    goto :goto_1c

    .line 174
    :cond_10
    iget v1, p0, Lcom/android/server/net/MiuiNetworkPolicyQosUtils;->mDscpState:I

    if-ne v1, v0, :cond_19

    .line 175
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/net/MiuiNetworkPolicyQosUtils;->setDscpStatus(I)V

    goto :goto_1c

    .line 177
    :cond_19
    invoke-direct {p0, v0}, Lcom/android/server/net/MiuiNetworkPolicyQosUtils;->setDscpStatus(I)V

    .line 180
    :goto_1c
    return-void
.end method

.method private updateQosUid()V
    .registers 12

    .line 191
    iget-object v0, p0, Lcom/android/server/net/MiuiNetworkPolicyQosUtils;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "user"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    .line 192
    .local v0, "um":Landroid/os/UserManager;
    iget-object v1, p0, Lcom/android/server/net/MiuiNetworkPolicyQosUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 193
    .local v1, "pm":Landroid/content/pm/PackageManager;
    invoke-virtual {v0}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v2

    .line 194
    .local v2, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-direct {p0}, Lcom/android/server/net/MiuiNetworkPolicyQosUtils;->getEFApps()Ljava/util/Set;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/net/MiuiNetworkPolicyQosUtils;->mEFAppsPN:Ljava/util/Set;

    .line 195
    iget-object v3, p0, Lcom/android/server/net/MiuiNetworkPolicyQosUtils;->mEFAppsPN:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_71

    .line 196
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_27
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_71

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/UserInfo;

    .line 197
    .local v4, "user":Landroid/content/pm/UserInfo;
    const/4 v5, 0x0

    iget v6, v4, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v1, v5, v6}, Landroid/content/pm/PackageManagerCompat;->getInstalledPackagesAsUser(Landroid/content/pm/PackageManager;II)Ljava/util/List;

    move-result-object v5

    .line 198
    .local v5, "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_3e
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_70

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/PackageInfo;

    .line 199
    .local v7, "app":Landroid/content/pm/PackageInfo;
    iget-object v8, v7, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    if-eqz v8, :cond_6f

    iget-object v8, v7, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v8, :cond_6f

    iget-object v8, p0, Lcom/android/server/net/MiuiNetworkPolicyQosUtils;->mEFAppsPN:Ljava/util/Set;

    iget-object v9, v7, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 200
    invoke-interface {v8, v9}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6f

    .line 201
    iget v8, v4, Landroid/content/pm/UserInfo;->id:I

    iget-object v9, v7, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v9, v9, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v8, v9}, Landroid/os/UserHandle;->getUid(II)I

    move-result v8

    .line 202
    .local v8, "uid":I
    iget-object v9, p0, Lcom/android/server/net/MiuiNetworkPolicyQosUtils;->mEFApps:Ljava/util/Set;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 204
    .end local v7    # "app":Landroid/content/pm/PackageInfo;
    .end local v8    # "uid":I
    :cond_6f
    goto :goto_3e

    .line 205
    .end local v4    # "user":Landroid/content/pm/UserInfo;
    .end local v5    # "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    :cond_70
    goto :goto_27

    .line 207
    :cond_71
    return-void
.end method


# virtual methods
.method public systemReady(Lcom/android/server/MiuiNetworkManagementService;)V
    .registers 3
    .param p1, "networkMgr"    # Lcom/android/server/MiuiNetworkManagementService;

    .line 98
    iput-object p1, p0, Lcom/android/server/net/MiuiNetworkPolicyQosUtils;->mNetMgrService:Lcom/android/server/MiuiNetworkManagementService;

    .line 99
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/net/MiuiNetworkPolicyQosUtils;->enableQos(Z)V

    .line 100
    invoke-direct {p0}, Lcom/android/server/net/MiuiNetworkPolicyQosUtils;->registerActivityChangeListener()V

    .line 101
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/server/net/MiuiNetworkPolicyQosUtils;->enableQos(Z)V

    .line 102
    invoke-direct {p0}, Lcom/android/server/net/MiuiNetworkPolicyQosUtils;->updateQosUid()V

    .line 103
    return-void
.end method

.method public updateAppPN(Ljava/lang/String;IZ)Z
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "action"    # Z

    .line 210
    iget-object v0, p0, Lcom/android/server/net/MiuiNetworkPolicyQosUtils;->mEFAppsPN:Ljava/util/Set;

    if-eqz v0, :cond_24

    iget-object v0, p0, Lcom/android/server/net/MiuiNetworkPolicyQosUtils;->mEFAppsPN:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_24

    .line 211
    if-eqz p3, :cond_19

    iget-object v0, p0, Lcom/android/server/net/MiuiNetworkPolicyQosUtils;->mEFApps:Ljava/util/Set;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_23

    :cond_19
    iget-object v0, p0, Lcom/android/server/net/MiuiNetworkPolicyQosUtils;->mEFApps:Ljava/util/Set;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v0

    :goto_23
    return v0

    .line 213
    :cond_24
    const/4 v0, 0x0

    return v0
.end method
