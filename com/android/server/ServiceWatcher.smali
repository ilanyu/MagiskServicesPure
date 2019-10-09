.class public Lcom/android/server/ServiceWatcher;
.super Ljava/lang/Object;
.source "ServiceWatcher.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/ServiceWatcher$BinderRunner;
    }
.end annotation


# static fields
.field private static final D:Z = false

.field public static final EXTRA_SERVICE_IS_MULTIUSER:Ljava/lang/String; = "serviceIsMultiuser"

.field public static final EXTRA_SERVICE_VERSION:Ljava/lang/String; = "serviceVersion"


# instance fields
.field private final mAction:Ljava/lang/String;

.field private mBoundComponent:Landroid/content/ComponentName;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private mBoundPackageName:Ljava/lang/String;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private mBoundService:Landroid/os/IBinder;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private mBoundUserId:I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private mBoundVersion:I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private mCurrentUserId:I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private final mHandler:Landroid/os/Handler;

.field private final mLock:Ljava/lang/Object;

.field private final mNewServiceWork:Ljava/lang/Runnable;

.field private final mPackageMonitor:Lcom/android/internal/content/PackageMonitor;

.field private final mPm:Landroid/content/pm/PackageManager;

.field private final mServicePackageName:Ljava/lang/String;

.field private final mSignatureSets:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/HashSet<",
            "Landroid/content/pm/Signature;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mTag:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IIILjava/lang/Runnable;Landroid/os/Handler;)V
    .registers 14
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "logTag"    # Ljava/lang/String;
    .param p3, "action"    # Ljava/lang/String;
    .param p4, "overlaySwitchResId"    # I
    .param p5, "defaultServicePackageNameResId"    # I
    .param p6, "initialPackageNamesResId"    # I
    .param p7, "newServiceWork"    # Ljava/lang/Runnable;
    .param p8, "handler"    # Landroid/os/Handler;

    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/ServiceWatcher;->mLock:Ljava/lang/Object;

    .line 74
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/ServiceWatcher;->mCurrentUserId:I

    .line 83
    const/high16 v0, -0x80000000

    iput v0, p0, Lcom/android/server/ServiceWatcher;->mBoundVersion:I

    .line 85
    const/16 v0, -0x2710

    iput v0, p0, Lcom/android/server/ServiceWatcher;->mBoundUserId:I

    .line 329
    new-instance v0, Lcom/android/server/ServiceWatcher$2;

    invoke-direct {v0, p0}, Lcom/android/server/ServiceWatcher$2;-><init>(Lcom/android/server/ServiceWatcher;)V

    iput-object v0, p0, Lcom/android/server/ServiceWatcher;->mPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    .line 111
    iput-object p1, p0, Lcom/android/server/ServiceWatcher;->mContext:Landroid/content/Context;

    .line 112
    iput-object p2, p0, Lcom/android/server/ServiceWatcher;->mTag:Ljava/lang/String;

    .line 113
    iput-object p3, p0, Lcom/android/server/ServiceWatcher;->mAction:Ljava/lang/String;

    .line 114
    iget-object v0, p0, Lcom/android/server/ServiceWatcher;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/ServiceWatcher;->mPm:Landroid/content/pm/PackageManager;

    .line 115
    iput-object p7, p0, Lcom/android/server/ServiceWatcher;->mNewServiceWork:Ljava/lang/Runnable;

    .line 116
    iput-object p8, p0, Lcom/android/server/ServiceWatcher;->mHandler:Landroid/os/Handler;

    .line 117
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 120
    .local v0, "resources":Landroid/content/res/Resources;
    invoke-virtual {v0, p4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    .line 121
    .local v1, "enableOverlay":Z
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 122
    .local v2, "initialPackageNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v1, :cond_4e

    .line 124
    invoke-virtual {v0, p6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    .line 125
    .local v3, "pkgs":[Ljava/lang/String;
    if-eqz v3, :cond_4a

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 126
    :cond_4a
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/server/ServiceWatcher;->mServicePackageName:Ljava/lang/String;

    .line 128
    .end local v3    # "pkgs":[Ljava/lang/String;
    goto :goto_59

    .line 131
    :cond_4e
    invoke-virtual {v0, p5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 132
    .local v3, "servicePackageName":Ljava/lang/String;
    if-eqz v3, :cond_57

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 133
    :cond_57
    iput-object v3, p0, Lcom/android/server/ServiceWatcher;->mServicePackageName:Ljava/lang/String;

    .line 136
    .end local v3    # "servicePackageName":Ljava/lang/String;
    :goto_59
    invoke-static {p1, v2}, Lcom/android/server/ServiceWatcher;->getSignatureSets(Landroid/content/Context;Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/ServiceWatcher;->mSignatureSets:Ljava/util/List;

    .line 137
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/ServiceWatcher;)Ljava/lang/Object;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/ServiceWatcher;

    .line 52
    iget-object v0, p0, Lcom/android/server/ServiceWatcher;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/ServiceWatcher;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/ServiceWatcher;

    .line 52
    iget-object v0, p0, Lcom/android/server/ServiceWatcher;->mBoundPackageName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/ServiceWatcher;Ljava/lang/String;Z)Z
    .registers 4
    .param p0, "x0"    # Lcom/android/server/ServiceWatcher;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Z

    .line 52
    invoke-direct {p0, p1, p2}, Lcom/android/server/ServiceWatcher;->bindBestPackageLocked(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private bindBestPackageLocked(Ljava/lang/String;Z)Z
    .registers 19
    .param p1, "justCheckThisPackage"    # Ljava/lang/String;
    .param p2, "forceRebind"    # Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    .line 204
    new-instance v0, Landroid/content/Intent;

    iget-object v3, v1, Lcom/android/server/ServiceWatcher;->mAction:Ljava/lang/String;

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object v3, v0

    .line 205
    .local v3, "intent":Landroid/content/Intent;
    if-eqz v2, :cond_11

    .line 206
    invoke-virtual {v3, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 208
    :cond_11
    iget-object v0, v1, Lcom/android/server/ServiceWatcher;->mPm:Landroid/content/pm/PackageManager;

    const v4, 0x10000080

    iget v5, v1, Lcom/android/server/ServiceWatcher;->mCurrentUserId:I

    invoke-virtual {v0, v3, v4, v5}, Landroid/content/pm/PackageManager;->queryIntentServicesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v4

    .line 211
    .local v4, "rInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const/high16 v0, -0x80000000

    .line 212
    .local v0, "bestVersion":I
    const/4 v5, 0x0

    .line 213
    .local v5, "bestComponent":Landroid/content/ComponentName;
    const/4 v6, 0x0

    .line 214
    .local v6, "bestIsMultiuser":Z
    if-eqz v4, :cond_a3

    .line 215
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    move v8, v6

    move v6, v0

    .line 215
    .end local v0    # "bestVersion":I
    .local v6, "bestVersion":I
    .local v8, "bestIsMultiuser":Z
    :goto_28
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Landroid/content/pm/ResolveInfo;

    .line 216
    .local v9, "rInfo":Landroid/content/pm/ResolveInfo;
    iget-object v0, v9, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    invoke-virtual {v0}, Landroid/content/pm/ServiceInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v10

    .line 217
    .local v10, "component":Landroid/content/ComponentName;
    invoke-virtual {v10}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    move-object v11, v0

    .line 222
    .local v11, "packageName":Ljava/lang/String;
    :try_start_40
    iget-object v0, v1, Lcom/android/server/ServiceWatcher;->mPm:Landroid/content/pm/PackageManager;

    const v12, 0x10000040

    invoke-virtual {v0, v11, v12}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 224
    .local v0, "pInfo":Landroid/content/pm/PackageInfo;
    iget-object v12, v0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    invoke-direct {v1, v12}, Lcom/android/server/ServiceWatcher;->isSignatureMatch([Landroid/content/pm/Signature;)Z

    move-result v12

    if-nez v12, :cond_72

    .line 225
    iget-object v12, v1, Lcom/android/server/ServiceWatcher;->mTag:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, " resolves service "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v14, v1, Lcom/android/server/ServiceWatcher;->mAction:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, ", but has wrong signature, ignoring"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_71
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_40 .. :try_end_71} :catch_9a

    .line 227
    goto :goto_28

    .line 232
    .end local v0    # "pInfo":Landroid/content/pm/PackageInfo;
    :cond_72
    nop

    .line 235
    const/high16 v0, -0x80000000

    .line 236
    .local v0, "version":I
    const/4 v12, 0x0

    .line 237
    .local v12, "isMultiuser":Z
    iget-object v13, v9, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v13, v13, Landroid/content/pm/ServiceInfo;->metaData:Landroid/os/Bundle;

    if-eqz v13, :cond_94

    .line 238
    iget-object v13, v9, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v13, v13, Landroid/content/pm/ServiceInfo;->metaData:Landroid/os/Bundle;

    const-string/jumbo v14, "serviceVersion"

    const/high16 v15, -0x80000000

    invoke-virtual {v13, v14, v15}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 240
    iget-object v13, v9, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v13, v13, Landroid/content/pm/ServiceInfo;->metaData:Landroid/os/Bundle;

    const-string/jumbo v14, "serviceIsMultiuser"

    invoke-virtual {v13, v14}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v12

    .line 243
    :cond_94
    if-le v0, v6, :cond_99

    .line 244
    move v6, v0

    .line 245
    move-object v5, v10

    .line 246
    move v8, v12

    .line 248
    .end local v0    # "version":I
    .end local v9    # "rInfo":Landroid/content/pm/ResolveInfo;
    .end local v10    # "component":Landroid/content/ComponentName;
    .end local v11    # "packageName":Ljava/lang/String;
    .end local v12    # "isMultiuser":Z
    :cond_99
    goto :goto_28

    .line 229
    .restart local v9    # "rInfo":Landroid/content/pm/ResolveInfo;
    .restart local v10    # "component":Landroid/content/ComponentName;
    .restart local v11    # "packageName":Ljava/lang/String;
    :catch_9a
    move-exception v0

    .line 230
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    iget-object v12, v1, Lcom/android/server/ServiceWatcher;->mTag:Ljava/lang/String;

    invoke-static {v12, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 231
    goto :goto_28

    .line 261
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v9    # "rInfo":Landroid/content/pm/ResolveInfo;
    .end local v10    # "component":Landroid/content/ComponentName;
    .end local v11    # "packageName":Ljava/lang/String;
    :cond_a1
    move v0, v6

    move v6, v8

    .line 261
    .end local v8    # "bestIsMultiuser":Z
    .local v0, "bestVersion":I
    .local v6, "bestIsMultiuser":Z
    :cond_a3
    const/4 v7, 0x0

    if-nez v5, :cond_c2

    .line 262
    iget-object v8, v1, Lcom/android/server/ServiceWatcher;->mTag:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Odd, no component found for service "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v1, Lcom/android/server/ServiceWatcher;->mAction:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    invoke-direct/range {p0 .. p0}, Lcom/android/server/ServiceWatcher;->unbindLocked()V

    .line 264
    return v7

    .line 267
    :cond_c2
    if-eqz v6, :cond_c6

    move v8, v7

    goto :goto_c8

    :cond_c6
    iget v8, v1, Lcom/android/server/ServiceWatcher;->mCurrentUserId:I

    .line 268
    .local v8, "userId":I
    :goto_c8
    iget-object v9, v1, Lcom/android/server/ServiceWatcher;->mBoundComponent:Landroid/content/ComponentName;

    invoke-static {v5, v9}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    const/4 v10, 0x1

    if-eqz v9, :cond_db

    iget v9, v1, Lcom/android/server/ServiceWatcher;->mBoundVersion:I

    if-ne v0, v9, :cond_db

    iget v9, v1, Lcom/android/server/ServiceWatcher;->mBoundUserId:I

    if-ne v8, v9, :cond_db

    move v7, v10

    nop

    .line 270
    .local v7, "alreadyBound":Z
    :cond_db
    if-nez p2, :cond_df

    if-nez v7, :cond_e5

    .line 271
    :cond_df
    invoke-direct/range {p0 .. p0}, Lcom/android/server/ServiceWatcher;->unbindLocked()V

    .line 272
    invoke-direct {v1, v5, v0, v8}, Lcom/android/server/ServiceWatcher;->bindToPackageLocked(Landroid/content/ComponentName;II)V

    .line 274
    :cond_e5
    return v10
.end method

.method private bindToPackageLocked(Landroid/content/ComponentName;II)V
    .registers 8
    .param p1, "component"    # Landroid/content/ComponentName;
    .param p2, "version"    # I
    .param p3, "userId"    # I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation

    .line 294
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/server/ServiceWatcher;->mAction:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 295
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 296
    iput-object p1, p0, Lcom/android/server/ServiceWatcher;->mBoundComponent:Landroid/content/ComponentName;

    .line 297
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/ServiceWatcher;->mBoundPackageName:Ljava/lang/String;

    .line 298
    iput p2, p0, Lcom/android/server/ServiceWatcher;->mBoundVersion:I

    .line 299
    iput p3, p0, Lcom/android/server/ServiceWatcher;->mBoundUserId:I

    .line 301
    iget-object v1, p0, Lcom/android/server/ServiceWatcher;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/os/UserHandle;

    invoke-direct {v2, p3}, Landroid/os/UserHandle;-><init>(I)V

    const v3, 0x40000005    # 2.0000012f

    invoke-virtual {v1, v0, p0, v3, v2}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    .line 304
    return-void
.end method

.method public static getSignatureSets(Landroid/content/Context;Ljava/util/List;)Ljava/util/ArrayList;
    .registers 11
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/ArrayList<",
            "Ljava/util/HashSet<",
            "Landroid/content/pm/Signature;",
            ">;>;"
        }
    .end annotation

    .line 90
    .local p1, "initialPackageNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 91
    .local v0, "pm":Landroid/content/pm/PackageManager;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 92
    .local v1, "sigSets":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/HashSet<Landroid/content/pm/Signature;>;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    .local v3, "size":I
    :goto_e
    if-ge v2, v3, :cond_49

    .line 93
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 95
    .local v4, "pkg":Ljava/lang/String;
    :try_start_16
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    .line 96
    .local v5, "set":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/content/pm/Signature;>;"
    const v6, 0x100040

    invoke-virtual {v0, v4, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v6

    iget-object v6, v6, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    .line 98
    .local v6, "sigs":[Landroid/content/pm/Signature;
    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    .line 99
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2e
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_16 .. :try_end_2e} :catch_2f

    .line 102
    .end local v5    # "set":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/content/pm/Signature;>;"
    .end local v6    # "sigs":[Landroid/content/pm/Signature;
    goto :goto_46

    .line 100
    :catch_2f
    move-exception v5

    .line 101
    .local v5, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v6, "ServiceWatcher"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " not found"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    .end local v4    # "pkg":Ljava/lang/String;
    .end local v5    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :goto_46
    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    .line 104
    .end local v2    # "i":I
    .end local v3    # "size":I
    :cond_49
    return-object v1
.end method

.method private isServiceMissing()Z
    .registers 6

    .line 186
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/server/ServiceWatcher;->mAction:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 187
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0xc0000

    .line 189
    .local v1, "flags":I
    iget-object v2, p0, Lcom/android/server/ServiceWatcher;->mPm:Landroid/content/pm/PackageManager;

    iget v3, p0, Lcom/android/server/ServiceWatcher;->mCurrentUserId:I

    const/high16 v4, 0xc0000

    invoke-virtual {v2, v0, v4, v3}, Landroid/content/pm/PackageManager;->queryIntentServicesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    return v2
.end method

.method private isSignatureMatch([Landroid/content/pm/Signature;)Z
    .registers 3
    .param p1, "signatures"    # [Landroid/content/pm/Signature;

    .line 326
    iget-object v0, p0, Lcom/android/server/ServiceWatcher;->mSignatureSets:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/android/server/ServiceWatcher;->isSignatureMatch([Landroid/content/pm/Signature;Ljava/util/List;)Z

    move-result v0

    return v0
.end method

.method public static isSignatureMatch([Landroid/content/pm/Signature;Ljava/util/List;)Z
    .registers 7
    .param p0, "signatures"    # [Landroid/content/pm/Signature;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Landroid/content/pm/Signature;",
            "Ljava/util/List<",
            "Ljava/util/HashSet<",
            "Landroid/content/pm/Signature;",
            ">;>;)Z"
        }
    .end annotation

    .line 308
    .local p1, "sigSets":Ljava/util/List;, "Ljava/util/List<Ljava/util/HashSet<Landroid/content/pm/Signature;>;>;"
    const/4 v0, 0x0

    if-nez p0, :cond_4

    return v0

    .line 311
    :cond_4
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 312
    .local v1, "inputSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/content/pm/Signature;>;"
    array-length v2, p0

    move v3, v0

    :goto_b
    if-ge v3, v2, :cond_15

    aget-object v4, p0, v3

    .line 313
    .local v4, "s":Landroid/content/pm/Signature;
    invoke-virtual {v1, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 312
    .end local v4    # "s":Landroid/content/pm/Signature;
    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    .line 317
    :cond_15
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_19
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/HashSet;

    .line 318
    .local v3, "referenceSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/content/pm/Signature;>;"
    invoke-virtual {v3, v1}, Ljava/util/HashSet;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2d

    .line 319
    const/4 v0, 0x1

    return v0

    .line 321
    .end local v3    # "referenceSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/content/pm/Signature;>;"
    :cond_2d
    goto :goto_19

    .line 322
    :cond_2e
    return v0
.end method

.method private unbindLocked()V
    .registers 4
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation

    .line 280
    iget-object v0, p0, Lcom/android/server/ServiceWatcher;->mBoundComponent:Landroid/content/ComponentName;

    .line 281
    .local v0, "component":Landroid/content/ComponentName;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/ServiceWatcher;->mBoundComponent:Landroid/content/ComponentName;

    .line 282
    iput-object v1, p0, Lcom/android/server/ServiceWatcher;->mBoundPackageName:Ljava/lang/String;

    .line 283
    const/high16 v2, -0x80000000

    iput v2, p0, Lcom/android/server/ServiceWatcher;->mBoundVersion:I

    .line 284
    const/16 v2, -0x2710

    iput v2, p0, Lcom/android/server/ServiceWatcher;->mBoundUserId:I

    .line 285
    if-eqz v0, :cond_18

    .line 287
    iput-object v1, p0, Lcom/android/server/ServiceWatcher;->mBoundService:Landroid/os/IBinder;

    .line 288
    iget-object v1, p0, Lcom/android/server/ServiceWatcher;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 290
    :cond_18
    return-void
.end method


# virtual methods
.method public getBestPackageName()Ljava/lang/String;
    .registers 3

    .line 394
    iget-object v0, p0, Lcom/android/server/ServiceWatcher;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 395
    :try_start_3
    iget-object v1, p0, Lcom/android/server/ServiceWatcher;->mBoundPackageName:Ljava/lang/String;

    monitor-exit v0

    return-object v1

    .line 396
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method public getBestVersion()I
    .registers 3

    .line 400
    iget-object v0, p0, Lcom/android/server/ServiceWatcher;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 401
    :try_start_3
    iget v1, p0, Lcom/android/server/ServiceWatcher;->mBoundVersion:I

    monitor-exit v0

    return v1

    .line 402
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 7
    .param p1, "component"    # Landroid/content/ComponentName;
    .param p2, "binder"    # Landroid/os/IBinder;

    .line 369
    iget-object v0, p0, Lcom/android/server/ServiceWatcher;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 370
    :try_start_3
    iget-object v1, p0, Lcom/android/server/ServiceWatcher;->mBoundComponent:Landroid/content/ComponentName;

    invoke-virtual {p1, v1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 372
    iput-object p2, p0, Lcom/android/server/ServiceWatcher;->mBoundService:Landroid/os/IBinder;

    .line 373
    iget-object v1, p0, Lcom/android/server/ServiceWatcher;->mHandler:Landroid/os/Handler;

    if-eqz v1, :cond_34

    iget-object v1, p0, Lcom/android/server/ServiceWatcher;->mNewServiceWork:Ljava/lang/Runnable;

    if-eqz v1, :cond_34

    .line 374
    iget-object v1, p0, Lcom/android/server/ServiceWatcher;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/server/ServiceWatcher;->mNewServiceWork:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_34

    .line 377
    :cond_1d
    iget-object v1, p0, Lcom/android/server/ServiceWatcher;->mTag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "unexpected onServiceConnected: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 379
    :cond_34
    :goto_34
    monitor-exit v0

    .line 380
    return-void

    .line 379
    :catchall_36
    move-exception v1

    monitor-exit v0
    :try_end_38
    .catchall {:try_start_3 .. :try_end_38} :catchall_36

    throw v1
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 4
    .param p1, "component"    # Landroid/content/ComponentName;

    .line 384
    iget-object v0, p0, Lcom/android/server/ServiceWatcher;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 387
    :try_start_3
    iget-object v1, p0, Lcom/android/server/ServiceWatcher;->mBoundComponent:Landroid/content/ComponentName;

    invoke-virtual {p1, v1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 388
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/ServiceWatcher;->mBoundService:Landroid/os/IBinder;

    .line 390
    :cond_e
    monitor-exit v0

    .line 391
    return-void

    .line 390
    :catchall_10
    move-exception v1

    monitor-exit v0
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_10

    throw v1
.end method

.method public runOnBinder(Lcom/android/server/ServiceWatcher$BinderRunner;)Z
    .registers 4
    .param p1, "runner"    # Lcom/android/server/ServiceWatcher$BinderRunner;

    .line 421
    iget-object v0, p0, Lcom/android/server/ServiceWatcher;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 422
    :try_start_3
    iget-object v1, p0, Lcom/android/server/ServiceWatcher;->mBoundService:Landroid/os/IBinder;

    if-nez v1, :cond_a

    .line 423
    const/4 v1, 0x0

    monitor-exit v0

    return v1

    .line 425
    :cond_a
    iget-object v1, p0, Lcom/android/server/ServiceWatcher;->mBoundService:Landroid/os/IBinder;

    invoke-interface {p1, v1}, Lcom/android/server/ServiceWatcher$BinderRunner;->run(Landroid/os/IBinder;)V

    .line 426
    const/4 v1, 0x1

    monitor-exit v0

    return v1

    .line 428
    :catchall_12
    move-exception v1

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw v1
.end method

.method public start()Z
    .registers 8

    .line 149
    invoke-direct {p0}, Lcom/android/server/ServiceWatcher;->isServiceMissing()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    return v1

    .line 151
    :cond_8
    iget-object v0, p0, Lcom/android/server/ServiceWatcher;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 152
    :try_start_b
    iget-object v2, p0, Lcom/android/server/ServiceWatcher;->mServicePackageName:Ljava/lang/String;

    invoke-direct {p0, v2, v1}, Lcom/android/server/ServiceWatcher;->bindBestPackageLocked(Ljava/lang/String;Z)Z

    .line 153
    monitor-exit v0
    :try_end_11
    .catchall {:try_start_b .. :try_end_11} :catchall_40

    .line 156
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 157
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 158
    const-string v1, "android.intent.action.USER_UNLOCKED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 159
    iget-object v1, p0, Lcom/android/server/ServiceWatcher;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/android/server/ServiceWatcher$1;

    invoke-direct {v2, p0}, Lcom/android/server/ServiceWatcher$1;-><init>(Lcom/android/server/ServiceWatcher;)V

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/android/server/ServiceWatcher;->mHandler:Landroid/os/Handler;

    move-object v4, v0

    invoke-virtual/range {v1 .. v6}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 174
    iget-object v1, p0, Lcom/android/server/ServiceWatcher;->mServicePackageName:Ljava/lang/String;

    const/4 v2, 0x1

    if-nez v1, :cond_3f

    .line 175
    iget-object v1, p0, Lcom/android/server/ServiceWatcher;->mPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    iget-object v3, p0, Lcom/android/server/ServiceWatcher;->mContext:Landroid/content/Context;

    const/4 v4, 0x0

    sget-object v5, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v3, v4, v5, v2}, Lcom/android/internal/content/PackageMonitor;->register(Landroid/content/Context;Landroid/os/Looper;Landroid/os/UserHandle;Z)V

    .line 178
    :cond_3f
    return v2

    .line 153
    .end local v0    # "intentFilter":Landroid/content/IntentFilter;
    :catchall_40
    move-exception v1

    :try_start_41
    monitor-exit v0
    :try_end_42
    .catchall {:try_start_41 .. :try_end_42} :catchall_40

    throw v1
.end method

.method public switchUser(I)V
    .registers 5
    .param p1, "userId"    # I

    .line 432
    iget-object v0, p0, Lcom/android/server/ServiceWatcher;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 433
    :try_start_3
    iput p1, p0, Lcom/android/server/ServiceWatcher;->mCurrentUserId:I

    .line 434
    iget-object v1, p0, Lcom/android/server/ServiceWatcher;->mServicePackageName:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/android/server/ServiceWatcher;->bindBestPackageLocked(Ljava/lang/String;Z)Z

    .line 435
    monitor-exit v0

    .line 436
    return-void

    .line 435
    :catchall_d
    move-exception v1

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw v1
.end method

.method public unlockUser(I)V
    .registers 5
    .param p1, "userId"    # I

    .line 439
    iget-object v0, p0, Lcom/android/server/ServiceWatcher;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 440
    :try_start_3
    iget v1, p0, Lcom/android/server/ServiceWatcher;->mCurrentUserId:I

    if-ne p1, v1, :cond_d

    .line 441
    iget-object v1, p0, Lcom/android/server/ServiceWatcher;->mServicePackageName:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/android/server/ServiceWatcher;->bindBestPackageLocked(Ljava/lang/String;Z)Z

    .line 443
    :cond_d
    monitor-exit v0

    .line 444
    return-void

    .line 443
    :catchall_f
    move-exception v1

    monitor-exit v0
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_f

    throw v1
.end method
