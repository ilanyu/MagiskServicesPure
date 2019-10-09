.class public Lcom/android/server/notification/ConditionProviders;
.super Lcom/android/server/notification/ManagedServices;
.source "ConditionProviders.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/notification/ConditionProviders$Callback;,
        Lcom/android/server/notification/ConditionProviders$ConditionRecord;
    }
.end annotation


# static fields
.field static final TAG_ENABLED_DND_APPS:Ljava/lang/String; = "dnd_apps"
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field


# instance fields
.field private mCallback:Lcom/android/server/notification/ConditionProviders$Callback;

.field private final mRecords:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/notification/ConditionProviders$ConditionRecord;",
            ">;"
        }
    .end annotation
.end field

.field private final mSystemConditionProviderNames:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mSystemConditionProviders:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Lcom/android/server/notification/SystemConditionProviderService;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/notification/ManagedServices$UserProfiles;Landroid/content/pm/IPackageManager;)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "userProfiles"    # Lcom/android/server/notification/ManagedServices$UserProfiles;
    .param p3, "pm"    # Landroid/content/pm/IPackageManager;

    .line 58
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    invoke-direct {p0, p1, v0, p2, p3}, Lcom/android/server/notification/ManagedServices;-><init>(Landroid/content/Context;Ljava/lang/Object;Lcom/android/server/notification/ManagedServices$UserProfiles;Landroid/content/pm/IPackageManager;)V

    .line 50
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/notification/ConditionProviders;->mRecords:Ljava/util/ArrayList;

    .line 52
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/notification/ConditionProviders;->mSystemConditionProviders:Landroid/util/ArraySet;

    .line 59
    iget-object v0, p0, Lcom/android/server/notification/ConditionProviders;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "system.condition.providers"

    const v2, 0x107004b

    invoke-static {v0, v1, v2}, Lcom/android/server/notification/PropConfig;->getStringArray(Landroid/content/Context;Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/notification/ConditionProviders;->safeSet([Ljava/lang/Object;)Landroid/util/ArraySet;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/notification/ConditionProviders;->mSystemConditionProviderNames:Landroid/util/ArraySet;

    .line 62
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/notification/ConditionProviders;->mApprovalLevel:I

    .line 63
    return-void
.end method

.method private getRecordLocked(Landroid/net/Uri;Landroid/content/ComponentName;Z)Lcom/android/server/notification/ConditionProviders$ConditionRecord;
    .registers 9
    .param p1, "id"    # Landroid/net/Uri;
    .param p2, "component"    # Landroid/content/ComponentName;
    .param p3, "create"    # Z

    .line 222
    const/4 v0, 0x0

    if-eqz p1, :cond_3a

    if-nez p2, :cond_6

    goto :goto_3a

    .line 223
    :cond_6
    iget-object v1, p0, Lcom/android/server/notification/ConditionProviders;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 224
    .local v1, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_d
    if-ge v2, v1, :cond_2b

    .line 225
    iget-object v3, p0, Lcom/android/server/notification/ConditionProviders;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/notification/ConditionProviders$ConditionRecord;

    .line 226
    .local v3, "r":Lcom/android/server/notification/ConditionProviders$ConditionRecord;
    iget-object v4, v3, Lcom/android/server/notification/ConditionProviders$ConditionRecord;->id:Landroid/net/Uri;

    invoke-virtual {v4, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_28

    iget-object v4, v3, Lcom/android/server/notification/ConditionProviders$ConditionRecord;->component:Landroid/content/ComponentName;

    invoke-virtual {v4, p2}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_28

    .line 227
    return-object v3

    .line 224
    .end local v3    # "r":Lcom/android/server/notification/ConditionProviders$ConditionRecord;
    :cond_28
    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    .line 230
    .end local v2    # "i":I
    :cond_2b
    if-eqz p3, :cond_39

    .line 231
    new-instance v2, Lcom/android/server/notification/ConditionProviders$ConditionRecord;

    invoke-direct {v2, p1, p2, v0}, Lcom/android/server/notification/ConditionProviders$ConditionRecord;-><init>(Landroid/net/Uri;Landroid/content/ComponentName;Lcom/android/server/notification/ConditionProviders$1;)V

    move-object v0, v2

    .line 232
    .local v0, "r":Lcom/android/server/notification/ConditionProviders$ConditionRecord;
    iget-object v2, p0, Lcom/android/server/notification/ConditionProviders;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 233
    return-object v0

    .line 235
    .end local v0    # "r":Lcom/android/server/notification/ConditionProviders$ConditionRecord;
    :cond_39
    return-object v0

    .line 222
    .end local v1    # "N":I
    :cond_3a
    :goto_3a
    return-object v0
.end method

.method private static provider(Lcom/android/server/notification/ConditionProviders$ConditionRecord;)Landroid/service/notification/IConditionProvider;
    .registers 2
    .param p0, "r"    # Lcom/android/server/notification/ConditionProviders$ConditionRecord;

    .line 362
    if-nez p0, :cond_4

    const/4 v0, 0x0

    goto :goto_a

    :cond_4
    iget-object v0, p0, Lcom/android/server/notification/ConditionProviders$ConditionRecord;->info:Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    invoke-static {v0}, Lcom/android/server/notification/ConditionProviders;->provider(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;)Landroid/service/notification/IConditionProvider;

    move-result-object v0

    :goto_a
    return-object v0
.end method

.method private static provider(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;)Landroid/service/notification/IConditionProvider;
    .registers 2
    .param p0, "info"    # Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    .line 366
    if-nez p0, :cond_4

    const/4 v0, 0x0

    goto :goto_8

    :cond_4
    iget-object v0, p0, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->service:Landroid/os/IInterface;

    check-cast v0, Landroid/service/notification/IConditionProvider;

    :goto_8
    return-object v0
.end method

.method private removeDuplicateConditions(Ljava/lang/String;[Landroid/service/notification/Condition;)[Landroid/service/notification/Condition;
    .registers 12
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "conditions"    # [Landroid/service/notification/Condition;

    .line 201
    const/4 v0, 0x0

    if-eqz p2, :cond_66

    array-length v1, p2

    if-nez v1, :cond_7

    goto :goto_66

    .line 202
    :cond_7
    array-length v1, p2

    .line 203
    .local v1, "N":I
    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2, v1}, Landroid/util/ArrayMap;-><init>(I)V

    .line 204
    .local v2, "valid":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/net/Uri;Landroid/service/notification/Condition;>;"
    const/4 v3, 0x0

    move v4, v3

    .local v4, "i":I
    :goto_f
    if-ge v4, v1, :cond_42

    .line 205
    aget-object v5, p2, v4

    iget-object v5, v5, Landroid/service/notification/Condition;->id:Landroid/net/Uri;

    .line 206
    .local v5, "id":Landroid/net/Uri;
    invoke-virtual {v2, v5}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3a

    .line 207
    iget-object v6, p0, Lcom/android/server/notification/ConditionProviders;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Ignoring condition from "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " for duplicate id: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    goto :goto_3f

    .line 210
    :cond_3a
    aget-object v6, p2, v4

    invoke-virtual {v2, v5, v6}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 204
    .end local v5    # "id":Landroid/net/Uri;
    :goto_3f
    add-int/lit8 v4, v4, 0x1

    goto :goto_f

    .line 212
    .end local v4    # "i":I
    :cond_42
    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v4

    if-nez v4, :cond_49

    return-object v0

    .line 213
    :cond_49
    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v0

    if-ne v0, v1, :cond_50

    return-object p2

    .line 214
    :cond_50
    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v0

    new-array v0, v0, [Landroid/service/notification/Condition;

    .line 215
    .local v0, "rt":[Landroid/service/notification/Condition;
    nop

    .local v3, "i":I
    :goto_57
    array-length v4, v0

    if-ge v3, v4, :cond_65

    .line 216
    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/service/notification/Condition;

    aput-object v4, v0, v3

    .line 215
    add-int/lit8 v3, v3, 0x1

    goto :goto_57

    .line 218
    .end local v3    # "i":I
    :cond_65
    return-object v0

    .line 201
    .end local v0    # "rt":[Landroid/service/notification/Condition;
    .end local v1    # "N":I
    .end local v2    # "valid":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/net/Uri;Landroid/service/notification/Condition;>;"
    :cond_66
    :goto_66
    return-object v0
.end method

.method private static varargs safeSet([Ljava/lang/Object;)Landroid/util/ArraySet;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)",
            "Landroid/util/ArraySet<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    .line 333
    .local p0, "items":[Ljava/lang/Object;, "[TT;"
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 334
    .local v0, "rt":Landroid/util/ArraySet;, "Landroid/util/ArraySet<TT;>;"
    if-eqz p0, :cond_1a

    array-length v1, p0

    if-nez v1, :cond_b

    goto :goto_1a

    .line 335
    :cond_b
    array-length v1, p0

    .line 336
    .local v1, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_d
    if-ge v2, v1, :cond_19

    .line 337
    aget-object v3, p0, v2

    .line 338
    .local v3, "item":Ljava/lang/Object;, "TT;"
    if-eqz v3, :cond_16

    .line 339
    invoke-virtual {v0, v3}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 336
    .end local v3    # "item":Ljava/lang/Object;, "TT;"
    :cond_16
    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    .line 342
    .end local v2    # "i":I
    :cond_19
    return-object v0

    .line 334
    .end local v1    # "N":I
    :cond_1a
    :goto_1a
    return-object v0
.end method

.method private subscribeLocked(Lcom/android/server/notification/ConditionProviders$ConditionRecord;)V
    .registers 8
    .param p1, "r"    # Lcom/android/server/notification/ConditionProviders$ConditionRecord;

    .line 315
    iget-boolean v0, p0, Lcom/android/server/notification/ConditionProviders;->DEBUG:Z

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/android/server/notification/ConditionProviders;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "subscribeLocked "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    :cond_1b
    invoke-static {p1}, Lcom/android/server/notification/ConditionProviders;->provider(Lcom/android/server/notification/ConditionProviders$ConditionRecord;)Landroid/service/notification/IConditionProvider;

    move-result-object v0

    .line 317
    .local v0, "provider":Landroid/service/notification/IConditionProvider;
    const/4 v1, 0x0

    .line 318
    .local v1, "re":Landroid/os/RemoteException;
    if-eqz v0, :cond_65

    .line 320
    :try_start_22
    iget-object v2, p0, Lcom/android/server/notification/ConditionProviders;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Subscribing to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p1, Lcom/android/server/notification/ConditionProviders$ConditionRecord;->id:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " with "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p1, Lcom/android/server/notification/ConditionProviders$ConditionRecord;->component:Landroid/content/ComponentName;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 321
    iget-object v2, p1, Lcom/android/server/notification/ConditionProviders$ConditionRecord;->id:Landroid/net/Uri;

    invoke-interface {v0, v2}, Landroid/service/notification/IConditionProvider;->onSubscribe(Landroid/net/Uri;)V

    .line 322
    const/4 v2, 0x1

    iput-boolean v2, p1, Lcom/android/server/notification/ConditionProviders$ConditionRecord;->subscribed:Z
    :try_end_4c
    .catch Landroid/os/RemoteException; {:try_start_22 .. :try_end_4c} :catch_4d

    .line 326
    goto :goto_65

    .line 323
    :catch_4d
    move-exception v2

    .line 324
    .local v2, "e":Landroid/os/RemoteException;
    iget-object v3, p0, Lcom/android/server/notification/ConditionProviders;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error subscribing to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 325
    move-object v1, v2

    .line 328
    .end local v2    # "e":Landroid/os/RemoteException;
    :cond_65
    :goto_65
    if-eqz p1, :cond_6a

    iget-object v2, p1, Lcom/android/server/notification/ConditionProviders$ConditionRecord;->id:Landroid/net/Uri;

    goto :goto_6b

    :cond_6a
    const/4 v2, 0x0

    :goto_6b
    invoke-static {v2, v0, v1}, Lcom/android/server/notification/ZenLog;->traceSubscribe(Landroid/net/Uri;Landroid/service/notification/IConditionProvider;Landroid/os/RemoteException;)V

    .line 329
    return-void
.end method

.method private unsubscribeLocked(Lcom/android/server/notification/ConditionProviders$ConditionRecord;)V
    .registers 8
    .param p1, "r"    # Lcom/android/server/notification/ConditionProviders$ConditionRecord;

    .line 346
    iget-boolean v0, p0, Lcom/android/server/notification/ConditionProviders;->DEBUG:Z

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/android/server/notification/ConditionProviders;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unsubscribeLocked "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 347
    :cond_1b
    invoke-static {p1}, Lcom/android/server/notification/ConditionProviders;->provider(Lcom/android/server/notification/ConditionProviders$ConditionRecord;)Landroid/service/notification/IConditionProvider;

    move-result-object v0

    .line 348
    .local v0, "provider":Landroid/service/notification/IConditionProvider;
    const/4 v1, 0x0

    .line 349
    .local v1, "re":Landroid/os/RemoteException;
    if-eqz v0, :cond_43

    .line 351
    :try_start_22
    iget-object v2, p1, Lcom/android/server/notification/ConditionProviders$ConditionRecord;->id:Landroid/net/Uri;

    invoke-interface {v0, v2}, Landroid/service/notification/IConditionProvider;->onUnsubscribe(Landroid/net/Uri;)V
    :try_end_27
    .catch Landroid/os/RemoteException; {:try_start_22 .. :try_end_27} :catch_28

    .line 355
    goto :goto_40

    .line 352
    :catch_28
    move-exception v2

    .line 353
    .local v2, "e":Landroid/os/RemoteException;
    iget-object v3, p0, Lcom/android/server/notification/ConditionProviders;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error unsubscribing to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 354
    move-object v1, v2

    .line 356
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_40
    const/4 v2, 0x0

    iput-boolean v2, p1, Lcom/android/server/notification/ConditionProviders$ConditionRecord;->subscribed:Z

    .line 358
    :cond_43
    if-eqz p1, :cond_48

    iget-object v2, p1, Lcom/android/server/notification/ConditionProviders$ConditionRecord;->id:Landroid/net/Uri;

    goto :goto_49

    :cond_48
    const/4 v2, 0x0

    :goto_49
    invoke-static {v2, v0, v1}, Lcom/android/server/notification/ZenLog;->traceUnsubscribe(Landroid/net/Uri;Landroid/service/notification/IConditionProvider;Landroid/os/RemoteException;)V

    .line 359
    return-void
.end method


# virtual methods
.method public addSystemProvider(Lcom/android/server/notification/SystemConditionProviderService;)V
    .registers 5
    .param p1, "service"    # Lcom/android/server/notification/SystemConditionProviderService;

    .line 74
    iget-object v0, p0, Lcom/android/server/notification/ConditionProviders;->mSystemConditionProviders:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 75
    iget-object v0, p0, Lcom/android/server/notification/ConditionProviders;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v0}, Lcom/android/server/notification/SystemConditionProviderService;->attachBase(Landroid/content/Context;)V

    .line 76
    invoke-virtual {p1}, Lcom/android/server/notification/SystemConditionProviderService;->asInterface()Landroid/service/notification/IConditionProvider;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/server/notification/SystemConditionProviderService;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/notification/ConditionProviders;->registerService(Landroid/os/IInterface;Landroid/content/ComponentName;I)V

    .line 77
    return-void
.end method

.method protected asInterface(Landroid/os/IBinder;)Landroid/os/IInterface;
    .registers 3
    .param p1, "binder"    # Landroid/os/IBinder;

    .line 120
    invoke-static {p1}, Landroid/service/notification/IConditionProvider$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/notification/IConditionProvider;

    move-result-object v0

    return-object v0
.end method

.method public checkServiceToken(Landroid/service/notification/IConditionProvider;)Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;
    .registers 4
    .param p1, "provider"    # Landroid/service/notification/IConditionProvider;

    .line 195
    iget-object v0, p0, Lcom/android/server/notification/ConditionProviders;->mMutex:Ljava/lang/Object;

    monitor-enter v0

    .line 196
    :try_start_3
    invoke-virtual {p0, p1}, Lcom/android/server/notification/ConditionProviders;->checkServiceTokenLocked(Landroid/os/IInterface;)Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 197
    :catchall_9
    move-exception v1

    monitor-exit v0
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_9

    throw v1
.end method

.method protected checkType(Landroid/os/IInterface;)Z
    .registers 3
    .param p1, "service"    # Landroid/os/IInterface;

    .line 125
    instance-of v0, p1, Landroid/service/notification/IConditionProvider;

    return v0
.end method

.method public dump(Ljava/io/PrintWriter;Lcom/android/server/notification/NotificationManagerService$DumpFilter;)V
    .registers 9
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "filter"    # Lcom/android/server/notification/NotificationManagerService$DumpFilter;

    .line 99
    invoke-super {p0, p1, p2}, Lcom/android/server/notification/ManagedServices;->dump(Ljava/io/PrintWriter;Lcom/android/server/notification/NotificationManagerService$DumpFilter;)V

    .line 100
    iget-object v0, p0, Lcom/android/server/notification/ConditionProviders;->mMutex:Ljava/lang/Object;

    monitor-enter v0

    .line 101
    :try_start_6
    const-string v1, "    mRecords("

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/notification/ConditionProviders;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(I)V

    const-string v1, "):"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 102
    const/4 v1, 0x0

    move v2, v1

    .local v2, "i":I
    :goto_1b
    iget-object v3, p0, Lcom/android/server/notification/ConditionProviders;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_56

    .line 103
    iget-object v3, p0, Lcom/android/server/notification/ConditionProviders;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/notification/ConditionProviders$ConditionRecord;

    .line 104
    .local v3, "r":Lcom/android/server/notification/ConditionProviders$ConditionRecord;
    if-eqz p2, :cond_36

    iget-object v4, v3, Lcom/android/server/notification/ConditionProviders$ConditionRecord;->component:Landroid/content/ComponentName;

    invoke-virtual {p2, v4}, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->matches(Landroid/content/ComponentName;)Z

    move-result v4

    if-nez v4, :cond_36

    .end local v3    # "r":Lcom/android/server/notification/ConditionProviders$ConditionRecord;
    goto :goto_53

    .line 105
    .restart local v3    # "r":Lcom/android/server/notification/ConditionProviders$ConditionRecord;
    :cond_36
    const-string v4, "      "

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 106
    iget-object v4, v3, Lcom/android/server/notification/ConditionProviders$ConditionRecord;->id:Landroid/net/Uri;

    invoke-static {v4}, Lcom/android/server/notification/CountdownConditionProvider;->tryParseDescription(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v4

    .line 107
    .local v4, "countdownDesc":Ljava/lang/String;
    if-eqz v4, :cond_53

    .line 108
    const-string v5, "        ("

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v5, ")"

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 102
    .end local v3    # "r":Lcom/android/server/notification/ConditionProviders$ConditionRecord;
    .end local v4    # "countdownDesc":Ljava/lang/String;
    :cond_53
    :goto_53
    add-int/lit8 v2, v2, 0x1

    goto :goto_1b

    .line 111
    .end local v2    # "i":I
    :cond_56
    monitor-exit v0
    :try_end_57
    .catchall {:try_start_6 .. :try_end_57} :catchall_7a

    .line 112
    const-string v0, "    mSystemConditionProviders: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/notification/ConditionProviders;->mSystemConditionProviderNames:Landroid/util/ArraySet;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 113
    nop

    .local v1, "i":I
    :goto_62
    move v0, v1

    .end local v1    # "i":I
    .local v0, "i":I
    iget-object v1, p0, Lcom/android/server/notification/ConditionProviders;->mSystemConditionProviders:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v1

    if-ge v0, v1, :cond_79

    .line 114
    iget-object v1, p0, Lcom/android/server/notification/ConditionProviders;->mSystemConditionProviders:Landroid/util/ArraySet;

    invoke-virtual {v1, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/notification/SystemConditionProviderService;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/notification/SystemConditionProviderService;->dump(Ljava/io/PrintWriter;Lcom/android/server/notification/NotificationManagerService$DumpFilter;)V

    .line 113
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "i":I
    .restart local v1    # "i":I
    goto :goto_62

    .line 116
    .end local v1    # "i":I
    :cond_79
    return-void

    .line 111
    :catchall_7a
    move-exception v1

    :try_start_7b
    monitor-exit v0
    :try_end_7c
    .catchall {:try_start_7b .. :try_end_7c} :catchall_7a

    throw v1
.end method

.method public ensureRecordExists(Landroid/content/ComponentName;Landroid/net/Uri;Landroid/service/notification/IConditionProvider;)V
    .registers 6
    .param p1, "component"    # Landroid/content/ComponentName;
    .param p2, "conditionId"    # Landroid/net/Uri;
    .param p3, "provider"    # Landroid/service/notification/IConditionProvider;

    .line 282
    const/4 v0, 0x1

    invoke-direct {p0, p2, p1, v0}, Lcom/android/server/notification/ConditionProviders;->getRecordLocked(Landroid/net/Uri;Landroid/content/ComponentName;Z)Lcom/android/server/notification/ConditionProviders$ConditionRecord;

    move-result-object v0

    .line 283
    .local v0, "r":Lcom/android/server/notification/ConditionProviders$ConditionRecord;
    iget-object v1, v0, Lcom/android/server/notification/ConditionProviders$ConditionRecord;->info:Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    if-nez v1, :cond_f

    .line 285
    invoke-virtual {p0, p3}, Lcom/android/server/notification/ConditionProviders;->checkServiceTokenLocked(Landroid/os/IInterface;)Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/notification/ConditionProviders$ConditionRecord;->info:Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    .line 287
    :cond_f
    return-void
.end method

.method public findCondition(Landroid/content/ComponentName;Landroid/net/Uri;)Landroid/service/notification/Condition;
    .registers 6
    .param p1, "component"    # Landroid/content/ComponentName;
    .param p2, "conditionId"    # Landroid/net/Uri;

    .line 272
    const/4 v0, 0x0

    if-eqz p1, :cond_18

    if-nez p2, :cond_6

    goto :goto_18

    .line 273
    :cond_6
    iget-object v1, p0, Lcom/android/server/notification/ConditionProviders;->mMutex:Ljava/lang/Object;

    monitor-enter v1

    .line 274
    const/4 v2, 0x0

    :try_start_a
    invoke-direct {p0, p2, p1, v2}, Lcom/android/server/notification/ConditionProviders;->getRecordLocked(Landroid/net/Uri;Landroid/content/ComponentName;Z)Lcom/android/server/notification/ConditionProviders$ConditionRecord;

    move-result-object v2

    .line 275
    .local v2, "r":Lcom/android/server/notification/ConditionProviders$ConditionRecord;
    if-eqz v2, :cond_13

    iget-object v0, v2, Lcom/android/server/notification/ConditionProviders$ConditionRecord;->condition:Landroid/service/notification/Condition;

    nop

    :cond_13
    monitor-exit v1

    return-object v0

    .line 276
    .end local v2    # "r":Lcom/android/server/notification/ConditionProviders$ConditionRecord;
    :catchall_15
    move-exception v0

    monitor-exit v1
    :try_end_17
    .catchall {:try_start_a .. :try_end_17} :catchall_15

    throw v0

    .line 272
    :cond_18
    :goto_18
    return-object v0
.end method

.method public findConditionProvider(Landroid/content/ComponentName;)Landroid/service/notification/IConditionProvider;
    .registers 6
    .param p1, "component"    # Landroid/content/ComponentName;

    .line 262
    const/4 v0, 0x0

    if-nez p1, :cond_4

    return-object v0

    .line 263
    :cond_4
    invoke-virtual {p0}, Lcom/android/server/notification/ConditionProviders;->getServices()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_26

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    .line 264
    .local v2, "service":Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;
    iget-object v3, v2, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->component:Landroid/content/ComponentName;

    invoke-virtual {p1, v3}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_25

    .line 265
    invoke-static {v2}, Lcom/android/server/notification/ConditionProviders;->provider(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;)Landroid/service/notification/IConditionProvider;

    move-result-object v0

    return-object v0

    .line 267
    .end local v2    # "service":Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;
    :cond_25
    goto :goto_c

    .line 268
    :cond_26
    return-object v0
.end method

.method protected getConfig()Lcom/android/server/notification/ManagedServices$Config;
    .registers 3

    .line 85
    new-instance v0, Lcom/android/server/notification/ManagedServices$Config;

    invoke-direct {v0}, Lcom/android/server/notification/ManagedServices$Config;-><init>()V

    .line 86
    .local v0, "c":Lcom/android/server/notification/ManagedServices$Config;
    const-string v1, "condition provider"

    iput-object v1, v0, Lcom/android/server/notification/ManagedServices$Config;->caption:Ljava/lang/String;

    .line 87
    const-string v1, "android.service.notification.ConditionProviderService"

    iput-object v1, v0, Lcom/android/server/notification/ManagedServices$Config;->serviceInterface:Ljava/lang/String;

    .line 88
    const-string v1, "enabled_notification_policy_access_packages"

    iput-object v1, v0, Lcom/android/server/notification/ManagedServices$Config;->secureSettingName:Ljava/lang/String;

    .line 89
    const-string v1, "dnd_apps"

    iput-object v1, v0, Lcom/android/server/notification/ManagedServices$Config;->xmlTag:Ljava/lang/String;

    .line 90
    const-string v1, "enabled_notification_listeners"

    iput-object v1, v0, Lcom/android/server/notification/ManagedServices$Config;->secondarySettingName:Ljava/lang/String;

    .line 91
    const-string v1, "android.permission.BIND_CONDITION_PROVIDER_SERVICE"

    iput-object v1, v0, Lcom/android/server/notification/ManagedServices$Config;->bindPermission:Ljava/lang/String;

    .line 92
    const-string v1, "android.settings.ACTION_CONDITION_PROVIDER_SETTINGS"

    iput-object v1, v0, Lcom/android/server/notification/ManagedServices$Config;->settingsAction:Ljava/lang/String;

    .line 93
    const v1, 0x1040124

    iput v1, v0, Lcom/android/server/notification/ManagedServices$Config;->clientLabel:I

    .line 94
    return-object v0
.end method

.method public getSystemProviders()Ljava/lang/Iterable;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable<",
            "Lcom/android/server/notification/SystemConditionProviderService;",
            ">;"
        }
    .end annotation

    .line 80
    iget-object v0, p0, Lcom/android/server/notification/ConditionProviders;->mSystemConditionProviders:Landroid/util/ArraySet;

    return-object v0
.end method

.method public isSystemProviderEnabled(Ljava/lang/String;)Z
    .registers 3
    .param p1, "path"    # Ljava/lang/String;

    .line 70
    iget-object v0, p0, Lcom/android/server/notification/ConditionProviders;->mSystemConditionProviderNames:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method protected isValidEntry(Ljava/lang/String;I)Z
    .registers 4
    .param p1, "packageOrComponent"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 191
    const/4 v0, 0x1

    return v0
.end method

.method public notifyConditions(Ljava/lang/String;Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;[Landroid/service/notification/Condition;)V
    .registers 12
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "info"    # Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;
    .param p3, "conditions"    # [Landroid/service/notification/Condition;

    .line 239
    iget-object v0, p0, Lcom/android/server/notification/ConditionProviders;->mMutex:Ljava/lang/Object;

    monitor-enter v0

    .line 240
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/notification/ConditionProviders;->DEBUG:Z

    if-eqz v1, :cond_36

    iget-object v1, p0, Lcom/android/server/notification/ConditionProviders;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "notifyConditions pkg="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " info="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " conditions="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 241
    if-nez p3, :cond_28

    const/4 v3, 0x0

    goto :goto_2c

    :cond_28
    invoke-static {p3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    :goto_2c
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 240
    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    :cond_36
    invoke-direct {p0, p1, p3}, Lcom/android/server/notification/ConditionProviders;->removeDuplicateConditions(Ljava/lang/String;[Landroid/service/notification/Condition;)[Landroid/service/notification/Condition;

    move-result-object v1

    move-object p3, v1

    .line 243
    if-eqz p3, :cond_6f

    array-length v1, p3

    if-nez v1, :cond_41

    goto :goto_6f

    .line 244
    :cond_41
    array-length v1, p3

    .line 245
    .local v1, "N":I
    const/4 v2, 0x0

    move v3, v2

    .line 245
    .local v3, "i":I
    :goto_44
    if-ge v3, v1, :cond_58

    .line 246
    aget-object v4, p3, v3

    .line 247
    .local v4, "c":Landroid/service/notification/Condition;
    iget-object v5, v4, Landroid/service/notification/Condition;->id:Landroid/net/Uri;

    iget-object v6, p2, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->component:Landroid/content/ComponentName;

    const/4 v7, 0x1

    invoke-direct {p0, v5, v6, v7}, Lcom/android/server/notification/ConditionProviders;->getRecordLocked(Landroid/net/Uri;Landroid/content/ComponentName;Z)Lcom/android/server/notification/ConditionProviders$ConditionRecord;

    move-result-object v5

    .line 248
    .local v5, "r":Lcom/android/server/notification/ConditionProviders$ConditionRecord;
    iput-object p2, v5, Lcom/android/server/notification/ConditionProviders$ConditionRecord;->info:Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    .line 249
    iput-object v4, v5, Lcom/android/server/notification/ConditionProviders$ConditionRecord;->condition:Landroid/service/notification/Condition;

    .line 245
    .end local v4    # "c":Landroid/service/notification/Condition;
    .end local v5    # "r":Lcom/android/server/notification/ConditionProviders$ConditionRecord;
    add-int/lit8 v3, v3, 0x1

    goto :goto_44

    .line 251
    .end local v1    # "N":I
    .end local v3    # "i":I
    :cond_58
    monitor-exit v0
    :try_end_59
    .catchall {:try_start_3 .. :try_end_59} :catchall_71

    .line 252
    array-length v0, p3

    .line 253
    .local v0, "N":I
    nop

    .line 253
    .local v2, "i":I
    :goto_5b
    move v1, v2

    .line 253
    .end local v2    # "i":I
    .local v1, "i":I
    if-ge v1, v0, :cond_6e

    .line 254
    aget-object v2, p3, v1

    .line 255
    .local v2, "c":Landroid/service/notification/Condition;
    iget-object v3, p0, Lcom/android/server/notification/ConditionProviders;->mCallback:Lcom/android/server/notification/ConditionProviders$Callback;

    if-eqz v3, :cond_6b

    .line 256
    iget-object v3, p0, Lcom/android/server/notification/ConditionProviders;->mCallback:Lcom/android/server/notification/ConditionProviders$Callback;

    iget-object v4, v2, Landroid/service/notification/Condition;->id:Landroid/net/Uri;

    invoke-interface {v3, v4, v2}, Lcom/android/server/notification/ConditionProviders$Callback;->onConditionChanged(Landroid/net/Uri;Landroid/service/notification/Condition;)V

    .line 253
    .end local v2    # "c":Landroid/service/notification/Condition;
    :cond_6b
    add-int/lit8 v2, v1, 0x1

    .line 253
    .end local v1    # "i":I
    .local v2, "i":I
    goto :goto_5b

    .line 259
    .end local v2    # "i":I
    :cond_6e
    return-void

    .line 243
    .end local v0    # "N":I
    :cond_6f
    :goto_6f
    :try_start_6f
    monitor-exit v0

    return-void

    .line 251
    :catchall_71
    move-exception v1

    monitor-exit v0
    :try_end_73
    .catchall {:try_start_6f .. :try_end_73} :catchall_71

    throw v1
.end method

.method public onBootPhaseAppsCanStart()V
    .registers 3

    .line 130
    invoke-super {p0}, Lcom/android/server/notification/ManagedServices;->onBootPhaseAppsCanStart()V

    .line 131
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_4
    iget-object v1, p0, Lcom/android/server/notification/ConditionProviders;->mSystemConditionProviders:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v1

    if-ge v0, v1, :cond_1a

    .line 132
    iget-object v1, p0, Lcom/android/server/notification/ConditionProviders;->mSystemConditionProviders:Landroid/util/ArraySet;

    invoke-virtual {v1, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/notification/SystemConditionProviderService;

    invoke-virtual {v1}, Lcom/android/server/notification/SystemConditionProviderService;->onBootComplete()V

    .line 131
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 134
    .end local v0    # "i":I
    :cond_1a
    iget-object v0, p0, Lcom/android/server/notification/ConditionProviders;->mCallback:Lcom/android/server/notification/ConditionProviders$Callback;

    if-eqz v0, :cond_23

    .line 135
    iget-object v0, p0, Lcom/android/server/notification/ConditionProviders;->mCallback:Lcom/android/server/notification/ConditionProviders$Callback;

    invoke-interface {v0}, Lcom/android/server/notification/ConditionProviders$Callback;->onBootComplete()V

    .line 137
    :cond_23
    return-void
.end method

.method public onPackagesChanged(Z[Ljava/lang/String;[I)V
    .registers 13
    .param p1, "removingPackage"    # Z
    .param p2, "pkgList"    # [Ljava/lang/String;
    .param p3, "uid"    # [I

    .line 172
    if-eqz p1, :cond_33

    .line 173
    invoke-static {}, Landroid/app/NotificationManager;->getService()Landroid/app/INotificationManager;

    move-result-object v0

    .line 175
    .local v0, "inm":Landroid/app/INotificationManager;
    if-eqz p2, :cond_33

    array-length v1, p2

    if-lez v1, :cond_33

    .line 176
    array-length v1, p2

    const/4 v2, 0x0

    move v3, v2

    :goto_e
    if-ge v3, v1, :cond_33

    aget-object v4, p2, v3

    .line 178
    .local v4, "pkgName":Ljava/lang/String;
    :try_start_12
    invoke-interface {v0, v4}, Landroid/app/INotificationManager;->removeAutomaticZenRules(Ljava/lang/String;)Z

    .line 179
    invoke-interface {v0, v4, v2}, Landroid/app/INotificationManager;->setNotificationPolicyAccessGranted(Ljava/lang/String;Z)V
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_18} :catch_19

    .line 182
    goto :goto_30

    .line 180
    :catch_19
    move-exception v5

    .line 181
    .local v5, "e":Ljava/lang/Exception;
    iget-object v6, p0, Lcom/android/server/notification/ConditionProviders;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed to clean up rules for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 176
    .end local v4    # "pkgName":Ljava/lang/String;
    .end local v5    # "e":Ljava/lang/Exception;
    :goto_30
    add-int/lit8 v3, v3, 0x1

    goto :goto_e

    .line 186
    .end local v0    # "inm":Landroid/app/INotificationManager;
    :cond_33
    invoke-super {p0, p1, p2, p3}, Lcom/android/server/notification/ManagedServices;->onPackagesChanged(Z[Ljava/lang/String;[I)V

    .line 187
    return-void
.end method

.method protected onServiceAdded(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;)V
    .registers 5
    .param p1, "info"    # Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    .line 149
    invoke-static {p1}, Lcom/android/server/notification/ConditionProviders;->provider(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;)Landroid/service/notification/IConditionProvider;

    move-result-object v0

    .line 151
    .local v0, "provider":Landroid/service/notification/IConditionProvider;
    :try_start_4
    invoke-interface {v0}, Landroid/service/notification/IConditionProvider;->onConnected()V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_7} :catch_8

    .line 154
    goto :goto_9

    .line 152
    :catch_8
    move-exception v1

    .line 155
    :goto_9
    iget-object v1, p0, Lcom/android/server/notification/ConditionProviders;->mCallback:Lcom/android/server/notification/ConditionProviders$Callback;

    if-eqz v1, :cond_14

    .line 156
    iget-object v1, p0, Lcom/android/server/notification/ConditionProviders;->mCallback:Lcom/android/server/notification/ConditionProviders$Callback;

    iget-object v2, p1, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->component:Landroid/content/ComponentName;

    invoke-interface {v1, v2}, Lcom/android/server/notification/ConditionProviders$Callback;->onServiceAdded(Landroid/content/ComponentName;)V

    .line 158
    :cond_14
    return-void
.end method

.method protected onServiceRemovedLocked(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;)V
    .registers 6
    .param p1, "removed"    # Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    .line 162
    if-nez p1, :cond_3

    return-void

    .line 163
    :cond_3
    iget-object v0, p0, Lcom/android/server/notification/ConditionProviders;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_b
    if-ltz v0, :cond_28

    .line 164
    iget-object v1, p0, Lcom/android/server/notification/ConditionProviders;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/notification/ConditionProviders$ConditionRecord;

    .line 165
    .local v1, "r":Lcom/android/server/notification/ConditionProviders$ConditionRecord;
    iget-object v2, v1, Lcom/android/server/notification/ConditionProviders$ConditionRecord;->component:Landroid/content/ComponentName;

    iget-object v3, p1, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->component:Landroid/content/ComponentName;

    invoke-virtual {v2, v3}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_20

    .end local v1    # "r":Lcom/android/server/notification/ConditionProviders$ConditionRecord;
    goto :goto_25

    .line 166
    .restart local v1    # "r":Lcom/android/server/notification/ConditionProviders$ConditionRecord;
    :cond_20
    iget-object v2, p0, Lcom/android/server/notification/ConditionProviders;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 163
    .end local v1    # "r":Lcom/android/server/notification/ConditionProviders$ConditionRecord;
    :goto_25
    add-int/lit8 v0, v0, -0x1

    goto :goto_b

    .line 168
    .end local v0    # "i":I
    :cond_28
    return-void
.end method

.method public onUserSwitched(I)V
    .registers 3
    .param p1, "user"    # I

    .line 141
    invoke-super {p0, p1}, Lcom/android/server/notification/ManagedServices;->onUserSwitched(I)V

    .line 142
    iget-object v0, p0, Lcom/android/server/notification/ConditionProviders;->mCallback:Lcom/android/server/notification/ConditionProviders$Callback;

    if-eqz v0, :cond_c

    .line 143
    iget-object v0, p0, Lcom/android/server/notification/ConditionProviders;->mCallback:Lcom/android/server/notification/ConditionProviders$Callback;

    invoke-interface {v0}, Lcom/android/server/notification/ConditionProviders$Callback;->onUserSwitched()V

    .line 145
    :cond_c
    return-void
.end method

.method public setCallback(Lcom/android/server/notification/ConditionProviders$Callback;)V
    .registers 2
    .param p1, "callback"    # Lcom/android/server/notification/ConditionProviders$Callback;

    .line 66
    iput-object p1, p0, Lcom/android/server/notification/ConditionProviders;->mCallback:Lcom/android/server/notification/ConditionProviders$Callback;

    .line 67
    return-void
.end method

.method public subscribeIfNecessary(Landroid/content/ComponentName;Landroid/net/Uri;)Z
    .registers 9
    .param p1, "component"    # Landroid/content/ComponentName;
    .param p2, "conditionId"    # Landroid/net/Uri;

    .line 290
    iget-object v0, p0, Lcom/android/server/notification/ConditionProviders;->mMutex:Ljava/lang/Object;

    monitor-enter v0

    .line 291
    const/4 v1, 0x0

    :try_start_4
    invoke-direct {p0, p2, p1, v1}, Lcom/android/server/notification/ConditionProviders;->getRecordLocked(Landroid/net/Uri;Landroid/content/ComponentName;Z)Lcom/android/server/notification/ConditionProviders$ConditionRecord;

    move-result-object v2

    .line 292
    .local v2, "r":Lcom/android/server/notification/ConditionProviders$ConditionRecord;
    if-nez v2, :cond_2a

    .line 293
    iget-object v3, p0, Lcom/android/server/notification/ConditionProviders;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to subscribe to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    monitor-exit v0

    return v1

    .line 296
    :cond_2a
    iget-boolean v1, v2, Lcom/android/server/notification/ConditionProviders$ConditionRecord;->subscribed:Z

    if-eqz v1, :cond_31

    const/4 v1, 0x1

    monitor-exit v0

    return v1

    .line 297
    :cond_31
    invoke-direct {p0, v2}, Lcom/android/server/notification/ConditionProviders;->subscribeLocked(Lcom/android/server/notification/ConditionProviders$ConditionRecord;)V

    .line 298
    iget-boolean v1, v2, Lcom/android/server/notification/ConditionProviders$ConditionRecord;->subscribed:Z

    monitor-exit v0

    return v1

    .line 299
    .end local v2    # "r":Lcom/android/server/notification/ConditionProviders$ConditionRecord;
    :catchall_38
    move-exception v1

    monitor-exit v0
    :try_end_3a
    .catchall {:try_start_4 .. :try_end_3a} :catchall_38

    throw v1
.end method

.method public unsubscribeIfNecessary(Landroid/content/ComponentName;Landroid/net/Uri;)V
    .registers 8
    .param p1, "component"    # Landroid/content/ComponentName;
    .param p2, "conditionId"    # Landroid/net/Uri;

    .line 303
    iget-object v0, p0, Lcom/android/server/notification/ConditionProviders;->mMutex:Ljava/lang/Object;

    monitor-enter v0

    .line 304
    const/4 v1, 0x0

    :try_start_4
    invoke-direct {p0, p2, p1, v1}, Lcom/android/server/notification/ConditionProviders;->getRecordLocked(Landroid/net/Uri;Landroid/content/ComponentName;Z)Lcom/android/server/notification/ConditionProviders$ConditionRecord;

    move-result-object v1

    .line 305
    .local v1, "r":Lcom/android/server/notification/ConditionProviders$ConditionRecord;
    if-nez v1, :cond_2a

    .line 306
    iget-object v2, p0, Lcom/android/server/notification/ConditionProviders;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to unsubscribe to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    monitor-exit v0

    return-void

    .line 309
    :cond_2a
    iget-boolean v2, v1, Lcom/android/server/notification/ConditionProviders$ConditionRecord;->subscribed:Z

    if-nez v2, :cond_30

    monitor-exit v0

    return-void

    .line 310
    :cond_30
    invoke-direct {p0, v1}, Lcom/android/server/notification/ConditionProviders;->unsubscribeLocked(Lcom/android/server/notification/ConditionProviders$ConditionRecord;)V

    .line 311
    .end local v1    # "r":Lcom/android/server/notification/ConditionProviders$ConditionRecord;
    monitor-exit v0

    .line 312
    return-void

    .line 311
    :catchall_35
    move-exception v1

    monitor-exit v0
    :try_end_37
    .catchall {:try_start_4 .. :try_end_37} :catchall_35

    throw v1
.end method
