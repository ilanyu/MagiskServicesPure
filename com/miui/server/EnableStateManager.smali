.class public Lcom/miui/server/EnableStateManager;
.super Ljava/lang/Object;
.source "EnableStateManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/server/EnableStateManager$PackageAddedReceiver;
    }
.end annotation


# static fields
.field public static final HAS_EVER_ENABLED:Ljava/lang/String; = "com.xiaomi.market.hasEverEnabled_"

.field public static final HAS_UPDATE_APPLICATION_STATE:Ljava/lang/String; = "has_update_application_state"

.field public static final LAST_REGION:Ljava/lang/String; = "com.xiaomi.market.lastRegion"

.field private static final TAG:Ljava/lang/String;

.field private static mCloudEnableSettings:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private static mContext:Landroid/content/Context;

.field private static receiverRegistered:Z

.field private static sEnableStateControlledPkgList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sShouldKeepStatePackages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 40
    const-class v0, Lcom/miui/server/EnableStateManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/miui/server/EnableStateManager;->TAG:Ljava/lang/String;

    .line 46
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/miui/server/EnableStateManager;->mCloudEnableSettings:Ljava/util/Map;

    .line 47
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/miui/server/EnableStateManager;->sEnableStateControlledPkgList:Ljava/util/List;

    .line 49
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/miui/server/EnableStateManager;->sShouldKeepStatePackages:Ljava/util/List;

    .line 51
    const/4 v0, 0x0

    sput-boolean v0, Lcom/miui/server/EnableStateManager;->receiverRegistered:Z

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    return-void
.end method

.method static synthetic access$100()Landroid/content/Context;
    .registers 1

    .line 39
    sget-object v0, Lcom/miui/server/EnableStateManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Landroid/content/Intent;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Landroid/content/Intent;

    .line 39
    invoke-static {p0}, Lcom/miui/server/EnableStateManager;->getPackageName(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300()Ljava/util/List;
    .registers 1

    .line 39
    sget-object v0, Lcom/miui/server/EnableStateManager;->sEnableStateControlledPkgList:Ljava/util/List;

    return-object v0
.end method

.method private static getEnableSettings(Ljava/lang/String;Z)Ljava/util/Set;
    .registers 10
    .param p0, "pkgName"    # Ljava/lang/String;
    .param p1, "shouldKeep"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 183
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 184
    .local v0, "result":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-static {}, Lmiui/os/Build;->getRegion()Ljava/lang/String;

    move-result-object v1

    .line 185
    .local v1, "region":Ljava/lang/String;
    sget-object v2, Lcom/miui/server/EnableStateManager;->mCloudEnableSettings:Ljava/util/Map;

    invoke-interface {v2, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 186
    .local v2, "regions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v2, :cond_16

    .line 187
    invoke-interface {v0, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 190
    :cond_16
    sget-object v3, Lcom/miui/server/EnableStateManager;->mContext:Landroid/content/Context;

    const-string v4, "enable_regions"

    invoke-static {v3, p0, v4}, Lcom/miui/server/EnableStateManager;->getStringArray(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 191
    .local v3, "apkPresetRegions":[Ljava/lang/String;
    if-eqz v3, :cond_2a

    array-length v4, v3

    if-lez v4, :cond_2a

    .line 192
    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 196
    :cond_2a
    sget-object v4, Lcom/miui/server/EnableStateManager;->sShouldKeepStatePackages:Ljava/util/List;

    invoke-interface {v4, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_bc

    .line 197
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "com.xiaomi.market.hasEverEnabled_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/miui/server/EnableStateManager;->getRegionSetByPkgName(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v4

    .line 198
    .local v4, "hasEnableRegions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v4}, Ljava/util/Set;->size()I

    move-result v5

    if-lez v5, :cond_50

    .line 199
    invoke-interface {v0, v4}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 202
    :cond_50
    sget-object v5, Lcom/miui/server/EnableStateManager;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "shouldKeep: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, "\n is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " enable "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v7, Lcom/miui/server/EnableStateManager;->mContext:Landroid/content/Context;

    .line 203
    invoke-static {v7, p0}, Lcom/miui/server/EnableStateManager;->isPackageEnabled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 202
    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    if-eqz p1, :cond_a8

    sget-object v5, Lcom/miui/server/EnableStateManager;->mContext:Landroid/content/Context;

    invoke-static {v5, p0}, Lcom/miui/server/EnableStateManager;->isPackageEnabled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_a8

    .line 206
    sget-object v5, Lcom/miui/server/EnableStateManager;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "add "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " at "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 210
    :cond_a8
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "com.xiaomi.market.hasEverEnabled_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v0}, Lcom/miui/server/EnableStateManager;->setRegionSetByPkgName(Ljava/lang/String;Ljava/util/Set;)V

    .line 213
    .end local v4    # "hasEnableRegions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_bc
    return-object v0
.end method

.method private static getPackageName(Landroid/content/Intent;)Ljava/lang/String;
    .registers 3
    .param p0, "intent"    # Landroid/content/Intent;

    .line 109
    const/4 v0, 0x0

    if-nez p0, :cond_4

    .line 110
    return-object v0

    .line 112
    :cond_4
    invoke-virtual {p0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    .line 113
    .local v1, "uri":Landroid/net/Uri;
    if-eqz v1, :cond_f

    invoke-virtual {v1}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v0

    nop

    :cond_f
    return-object v0
.end method

.method public static getRegionSetByPkgName(Ljava/lang/String;)Ljava/util/Set;
    .registers 7
    .param p0, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 322
    sget-object v0, Lcom/miui/server/EnableStateManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, p0}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 323
    .local v0, "hasEnableRegions":Ljava/lang/String;
    sget-object v1, Lcom/miui/server/EnableStateManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getRegionSetByPkgName: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2c

    .line 325
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    return-object v1

    .line 327
    :cond_2c
    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 328
    .local v1, "hasEnableRegionList":[Ljava/lang/String;
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 329
    .local v2, "hasEnableRegionSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    array-length v3, v1

    const/4 v4, 0x0

    :goto_39
    if-ge v4, v3, :cond_43

    aget-object v5, v1, v4

    .line 330
    .local v5, "hasEnableRegion":Ljava/lang/String;
    invoke-interface {v2, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 329
    .end local v5    # "hasEnableRegion":Ljava/lang/String;
    add-int/lit8 v4, v4, 0x1

    goto :goto_39

    .line 332
    :cond_43
    return-object v2
.end method

.method private static getString(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "key"    # Ljava/lang/String;

    .line 301
    sget-object v0, Lcom/miui/server/EnableStateManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, p0}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getStringArray(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .registers 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "resName"    # Ljava/lang/String;

    .line 219
    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v1

    .line 220
    .local v1, "fContext":Landroid/content/Context;
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string v3, "array"

    invoke-virtual {v2, p2, v3, p1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 222
    .local v2, "id":I
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_17} :catch_18

    return-object v3

    .line 223
    .end local v1    # "fContext":Landroid/content/Context;
    .end local v2    # "id":I
    :catch_18
    move-exception v1

    .line 224
    .local v1, "e":Ljava/lang/Exception;
    sget-object v2, Lcom/miui/server/EnableStateManager;->TAG:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 226
    .end local v1    # "e":Ljava/lang/Exception;
    new-array v0, v0, [Ljava/lang/String;

    return-object v0
.end method

.method private static isAppInstalled(Ljava/lang/String;)Z
    .registers 5
    .param p0, "pkgName"    # Ljava/lang/String;

    .line 118
    const/4 v0, 0x0

    :try_start_1
    sget-object v1, Lcom/miui/server/EnableStateManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 119
    .local v1, "pm":Landroid/content/pm/PackageManager;
    invoke-virtual {v1, p0, v0}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v2
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_b} :catch_10

    if-eqz v2, :cond_f

    .line 120
    const/4 v0, 0x1

    return v0

    .line 124
    .end local v1    # "pm":Landroid/content/pm/PackageManager;
    :cond_f
    goto :goto_1a

    .line 122
    :catch_10
    move-exception v1

    .line 123
    .local v1, "e":Ljava/lang/Exception;
    sget-object v2, Lcom/miui/server/EnableStateManager;->TAG:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 125
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_1a
    return v0
.end method

.method private static isPackageEnabled(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;

    .line 276
    const/4 v0, 0x1

    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 277
    .local v1, "pm":Landroid/content/pm/PackageManager;
    invoke-virtual {v1, p1}, Landroid/content/pm/PackageManager;->getApplicationEnabledSetting(Ljava/lang/String;)I

    move-result v2

    .line 278
    .local v2, "state":I
    sget-object v3, Lcom/miui/server/EnableStateManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " state is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    const/4 v3, 0x0

    packed-switch v2, :pswitch_data_3a

    .line 288
    return v3

    .line 281
    :pswitch_27
    return v0

    .line 286
    :pswitch_28
    invoke-virtual {v1, p1, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    iget-boolean v3, v3, Landroid/content/pm/ApplicationInfo;->enabled:Z
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_2e} :catch_2f

    return v3

    .line 290
    .end local v1    # "pm":Landroid/content/pm/PackageManager;
    .end local v2    # "state":I
    :catch_2f
    move-exception v1

    .line 291
    .local v1, "e":Ljava/lang/Exception;
    sget-object v2, Lcom/miui/server/EnableStateManager;->TAG:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 293
    .end local v1    # "e":Ljava/lang/Exception;
    return v0

    :pswitch_data_3a
    .packed-switch 0x0
        :pswitch_28
        :pswitch_27
        :pswitch_28
        :pswitch_28
        :pswitch_28
    .end packed-switch
.end method

.method private static registerReceiverIfNeed()V
    .registers 1

    .line 75
    sget-boolean v0, Lcom/miui/server/EnableStateManager;->receiverRegistered:Z

    if-eqz v0, :cond_5

    .line 76
    return-void

    .line 78
    :cond_5
    const/4 v0, 0x1

    sput-boolean v0, Lcom/miui/server/EnableStateManager;->receiverRegistered:Z

    .line 79
    new-instance v0, Lcom/miui/server/EnableStateManager$1;

    invoke-direct {v0}, Lcom/miui/server/EnableStateManager$1;-><init>()V

    .line 87
    invoke-virtual {v0}, Lcom/miui/server/EnableStateManager$1;->start()V

    .line 88
    return-void
.end method

.method public static setRegionSetByPkgName(Ljava/lang/String;Ljava/util/Set;)V
    .registers 7
    .param p0, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 305
    .local p1, "regions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string v0, ""

    .line 306
    .local v0, "tempResult":Ljava/lang/String;
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 307
    .local v1, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    if-nez v1, :cond_9

    .line 308
    return-void

    .line 310
    :cond_9
    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_46

    .line 311
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2b

    .line 312
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_9

    .line 314
    :cond_2b
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ";"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_9

    .line 317
    :cond_46
    sget-object v2, Lcom/miui/server/EnableStateManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setRegionSetByPkgName: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    sget-object v2, Lcom/miui/server/EnableStateManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v2, p0, v0}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 319
    return-void
.end method

.method private static setString(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "value"    # Ljava/lang/String;

    .line 297
    sget-object v0, Lcom/miui/server/EnableStateManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, p0, p1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 298
    return-void
.end method

.method private static tryDisablePkg(Ljava/lang/String;)V
    .registers 5
    .param p0, "pkgName"    # Ljava/lang/String;

    .line 155
    :try_start_0
    sget-object v0, Lcom/miui/server/EnableStateManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 156
    .local v0, "pm":Landroid/content/pm/PackageManager;
    sget-object v1, Lcom/miui/server/EnableStateManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/content/pm/PackageManager;->getApplicationEnabledSetting(Ljava/lang/String;)I

    move-result v1

    .line 157
    .local v1, "state":I
    if-eqz v1, :cond_15

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1a

    .line 159
    :cond_15
    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-virtual {v0, p0, v2, v3}, Landroid/content/pm/PackageManager;->setApplicationEnabledSetting(Ljava/lang/String;II)V
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1a} :catch_1b

    .line 165
    .end local v0    # "pm":Landroid/content/pm/PackageManager;
    .end local v1    # "state":I
    :cond_1a
    goto :goto_25

    .line 162
    :catch_1b
    move-exception v0

    .line 163
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/miui/server/EnableStateManager;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 166
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_25
    return-void
.end method

.method private static tryEnablePkg(Ljava/lang/String;)V
    .registers 5
    .param p0, "pkgName"    # Ljava/lang/String;

    .line 170
    :try_start_0
    sget-object v0, Lcom/miui/server/EnableStateManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 171
    .local v0, "pm":Landroid/content/pm/PackageManager;
    sget-object v1, Lcom/miui/server/EnableStateManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/content/pm/PackageManager;->getApplicationEnabledSetting(Ljava/lang/String;)I

    move-result v1

    .line 172
    .local v1, "state":I
    const/4 v2, 0x2

    if-ne v1, v2, :cond_18

    .line 173
    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v0, p0, v2, v3}, Landroid/content/pm/PackageManager;->setApplicationEnabledSetting(Ljava/lang/String;II)V
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_18} :catch_19

    .line 179
    .end local v0    # "pm":Landroid/content/pm/PackageManager;
    .end local v1    # "state":I
    :cond_18
    goto :goto_23

    .line 176
    :catch_19
    move-exception v0

    .line 177
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/miui/server/EnableStateManager;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 180
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_23
    return-void
.end method

.method public static updateApplicationEnableState(Landroid/content/Context;)V
    .registers 4
    .param p0, "context"    # Landroid/content/Context;

    .line 57
    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-nez v0, :cond_5

    .line 58
    return-void

    .line 60
    :cond_5
    sget-object v0, Lcom/miui/server/EnableStateManager;->mContext:Landroid/content/Context;

    if-nez v0, :cond_17

    .line 61
    if-eqz p0, :cond_e

    .line 62
    sput-object p0, Lcom/miui/server/EnableStateManager;->mContext:Landroid/content/Context;

    goto :goto_17

    .line 64
    :cond_e
    sget-object v0, Lcom/miui/server/EnableStateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "no context"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    return-void

    .line 68
    :cond_17
    :goto_17
    sget-object v0, Lcom/miui/server/EnableStateManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "has_update_application_state"

    const-string/jumbo v2, "true"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 69
    const-string/jumbo v0, "package"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PackageManagerService;

    .line 70
    .local v0, "pm":Lcom/android/server/pm/PackageManagerService;
    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->isFirstBoot()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Lcom/miui/server/EnableStateManager;->updateApplicationEnableStateInner(Z)V

    .line 71
    invoke-static {}, Lcom/miui/server/EnableStateManager;->registerReceiverIfNeed()V

    .line 72
    return-void
.end method

.method private static updateApplicationEnableStateInner(Z)V
    .registers 4
    .param p0, "shouldKeep"    # Z

    .line 90
    sget-object v0, Lcom/miui/server/EnableStateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "updateConfigFromFile"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    invoke-static {}, Lcom/miui/server/EnableStateManager;->updateConfigFromFile()V

    .line 92
    sget-object v0, Lcom/miui/server/EnableStateManager;->sEnableStateControlledPkgList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_11
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_27

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 93
    .local v1, "pkgName":Ljava/lang/String;
    invoke-static {v1}, Lcom/miui/server/EnableStateManager;->isAppInstalled(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_26

    .line 94
    invoke-static {v1, p0}, Lcom/miui/server/EnableStateManager;->updateEnableState(Ljava/lang/String;Z)V

    .line 96
    .end local v1    # "pkgName":Ljava/lang/String;
    :cond_26
    goto :goto_11

    .line 97
    :cond_27
    return-void
.end method

.method private static updateConfigFromFile()V
    .registers 12

    .line 230
    sget-object v0, Lcom/miui/server/EnableStateManager;->mCloudEnableSettings:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 231
    sget-object v0, Lcom/miui/server/EnableStateManager;->sEnableStateControlledPkgList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 232
    sget-object v0, Lcom/miui/server/EnableStateManager;->sShouldKeepStatePackages:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 233
    const/4 v0, 0x0

    .line 235
    .local v0, "reader":Ljava/io/BufferedReader;
    :try_start_10
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    sget-object v3, Lcom/miui/server/EnableStateManager;->mContext:Landroid/content/Context;

    .line 236
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const/high16 v4, 0x11060000

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move-object v0, v1

    .line 237
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 239
    .local v1, "sb":Ljava/lang/StringBuilder;
    :goto_2c
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    move-object v3, v2

    .line 239
    .local v3, "temp":Ljava/lang/String;
    if-eqz v2, :cond_37

    .line 240
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2c

    .line 242
    :cond_37
    new-instance v2, Lorg/json/JSONObject;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 243
    .local v2, "json":Lorg/json/JSONObject;
    invoke-virtual {v2}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v4

    .line 244
    .local v4, "pkgNameList":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_44
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_8c

    .line 245
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 246
    .local v5, "pkgName":Ljava/lang/String;
    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    .line 248
    .local v6, "settingJson":Lorg/json/JSONObject;
    const-string v7, "enable_list"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v7

    .line 249
    .local v7, "enableRegionArray":Lorg/json/JSONArray;
    const-string/jumbo v8, "shouldKeep"

    const/4 v9, 0x0

    invoke-virtual {v6, v8, v9}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v8

    .line 250
    .local v8, "shouldKeep":Z
    if-eqz v8, :cond_69

    .line 251
    sget-object v10, Lcom/miui/server/EnableStateManager;->sShouldKeepStatePackages:Ljava/util/List;

    invoke-interface {v10, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 253
    :cond_69
    if-eqz v7, :cond_86

    .line 254
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 255
    .local v10, "enableRegionList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    nop

    .line 255
    .local v9, "index":I
    :goto_71
    invoke-virtual {v7}, Lorg/json/JSONArray;->length()I

    move-result v11

    if-ge v9, v11, :cond_81

    .line 256
    invoke-virtual {v7, v9}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 257
    .local v11, "region":Ljava/lang/String;
    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 255
    .end local v11    # "region":Ljava/lang/String;
    add-int/lit8 v9, v9, 0x1

    goto :goto_71

    .line 259
    .end local v9    # "index":I
    :cond_81
    sget-object v9, Lcom/miui/server/EnableStateManager;->mCloudEnableSettings:Ljava/util/Map;

    invoke-interface {v9, v5, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 261
    .end local v10    # "enableRegionList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_86
    sget-object v9, Lcom/miui/server/EnableStateManager;->sEnableStateControlledPkgList:Ljava/util/List;

    invoke-interface {v9, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_8b
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_8b} :catch_9d
    .catchall {:try_start_10 .. :try_end_8b} :catchall_9b

    .line 262
    .end local v5    # "pkgName":Ljava/lang/String;
    .end local v6    # "settingJson":Lorg/json/JSONObject;
    .end local v7    # "enableRegionArray":Lorg/json/JSONArray;
    .end local v8    # "shouldKeep":Z
    goto :goto_44

    .line 268
    .end local v1    # "sb":Ljava/lang/StringBuilder;
    .end local v2    # "json":Lorg/json/JSONObject;
    .end local v3    # "temp":Ljava/lang/String;
    .end local v4    # "pkgNameList":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_8c
    :try_start_8c
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_8f
    .catch Ljava/lang/Exception; {:try_start_8c .. :try_end_8f} :catch_90

    .line 271
    :goto_8f
    goto :goto_ab

    .line 269
    :catch_90
    move-exception v1

    .line 270
    .local v1, "e":Ljava/lang/Exception;
    sget-object v2, Lcom/miui/server/EnableStateManager;->TAG:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 272
    .end local v1    # "e":Ljava/lang/Exception;
    goto :goto_ab

    .line 267
    :catchall_9b
    move-exception v1

    goto :goto_ac

    .line 263
    :catch_9d
    move-exception v1

    .line 264
    .restart local v1    # "e":Ljava/lang/Exception;
    :try_start_9e
    sget-object v2, Lcom/miui/server/EnableStateManager;->TAG:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_a7
    .catchall {:try_start_9e .. :try_end_a7} :catchall_9b

    .line 268
    .end local v1    # "e":Ljava/lang/Exception;
    :try_start_a7
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_aa
    .catch Ljava/lang/Exception; {:try_start_a7 .. :try_end_aa} :catch_90

    goto :goto_8f

    .line 273
    :goto_ab
    return-void

    .line 267
    :goto_ac
    nop

    .line 268
    :try_start_ad
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_b0
    .catch Ljava/lang/Exception; {:try_start_ad .. :try_end_b0} :catch_b1

    .line 271
    goto :goto_bb

    .line 269
    :catch_b1
    move-exception v2

    .line 270
    .local v2, "e":Ljava/lang/Exception;
    sget-object v3, Lcom/miui/server/EnableStateManager;->TAG:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 271
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_bb
    throw v1
.end method

.method private static updateEnableState(Ljava/lang/String;Z)V
    .registers 9
    .param p0, "pkgName"    # Ljava/lang/String;
    .param p1, "shouldKeep"    # Z

    .line 130
    :try_start_0
    invoke-static {}, Lmiui/os/Build;->getRegion()Ljava/lang/String;

    move-result-object v0

    .line 131
    .local v0, "region":Ljava/lang/String;
    sget-object v1, Lcom/miui/server/EnableStateManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "region: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_22

    .line 133
    return-void

    .line 135
    :cond_22
    const-string v1, "all"

    .line 136
    .local v1, "regionAll":Ljava/lang/String;
    const-string v2, "com.xiaomi.market.lastRegion"

    invoke-static {v2}, Lcom/miui/server/EnableStateManager;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 137
    .local v2, "lastRegion":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_37

    invoke-static {v2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_37

    .line 138
    const/4 p1, 0x0

    .line 140
    :cond_37
    invoke-static {p0, p1}, Lcom/miui/server/EnableStateManager;->getEnableSettings(Ljava/lang/String;Z)Ljava/util/Set;

    move-result-object v3

    .line 141
    .local v3, "regionList":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    sget-object v4, Lcom/miui/server/EnableStateManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "enable "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " in "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    invoke-interface {v3, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6e

    invoke-interface {v3, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6a

    goto :goto_6e

    .line 145
    :cond_6a
    invoke-static {p0}, Lcom/miui/server/EnableStateManager;->tryDisablePkg(Ljava/lang/String;)V

    goto :goto_71

    .line 143
    :cond_6e
    :goto_6e
    invoke-static {p0}, Lcom/miui/server/EnableStateManager;->tryEnablePkg(Ljava/lang/String;)V

    .line 147
    :goto_71
    const-string v4, "com.xiaomi.market.lastRegion"

    invoke-static {v4, v0}, Lcom/miui/server/EnableStateManager;->setString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_76
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_76} :catch_77

    .line 150
    .end local v0    # "region":Ljava/lang/String;
    .end local v1    # "regionAll":Ljava/lang/String;
    .end local v2    # "lastRegion":Ljava/lang/String;
    .end local v3    # "regionList":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    goto :goto_81

    .line 148
    :catch_77
    move-exception v0

    .line 149
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/miui/server/EnableStateManager;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 151
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_81
    return-void
.end method
