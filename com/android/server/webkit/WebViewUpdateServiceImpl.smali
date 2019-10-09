.class public Lcom/android/server/webkit/WebViewUpdateServiceImpl;
.super Ljava/lang/Object;
.source "WebViewUpdateServiceImpl.java"


# static fields
.field private static final MULTIPROCESS_SETTING_OFF_VALUE:I = -0x80000000

.field private static final MULTIPROCESS_SETTING_ON_VALUE:I = 0x7fffffff

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mSystemInterface:Lcom/android/server/webkit/SystemInterface;

.field private mWebViewUpdater:Lcom/android/server/webkit/WebViewUpdater;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 70
    const-class v0, Lcom/android/server/webkit/WebViewUpdateServiceImpl;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/webkit/WebViewUpdateServiceImpl;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/webkit/SystemInterface;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "systemInterface"    # Lcom/android/server/webkit/SystemInterface;

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    iput-object p1, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl;->mContext:Landroid/content/Context;

    .line 81
    iput-object p2, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl;->mSystemInterface:Lcom/android/server/webkit/SystemInterface;

    .line 82
    new-instance v0, Lcom/android/server/webkit/WebViewUpdater;

    iget-object v1, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl;->mSystemInterface:Lcom/android/server/webkit/SystemInterface;

    invoke-direct {v0, v1, v2}, Lcom/android/server/webkit/WebViewUpdater;-><init>(Landroid/content/Context;Lcom/android/server/webkit/SystemInterface;)V

    iput-object v0, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl;->mWebViewUpdater:Lcom/android/server/webkit/WebViewUpdater;

    .line 83
    return-void
.end method

.method private existsValidNonFallbackProvider([Landroid/webkit/WebViewProviderInfo;)Z
    .registers 9
    .param p1, "providers"    # [Landroid/webkit/WebViewProviderInfo;

    .line 100
    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_3
    if-ge v2, v0, :cond_34

    aget-object v3, p1, v2

    .line 101
    .local v3, "provider":Landroid/webkit/WebViewProviderInfo;
    iget-boolean v4, v3, Landroid/webkit/WebViewProviderInfo;->availableByDefault:Z

    if-eqz v4, :cond_31

    iget-boolean v4, v3, Landroid/webkit/WebViewProviderInfo;->isFallback:Z

    if-nez v4, :cond_31

    .line 103
    iget-object v4, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl;->mSystemInterface:Lcom/android/server/webkit/SystemInterface;

    iget-object v5, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl;->mContext:Landroid/content/Context;

    .line 104
    invoke-interface {v4, v5, v3}, Lcom/android/server/webkit/SystemInterface;->getPackageInfoForProviderAllUsers(Landroid/content/Context;Landroid/webkit/WebViewProviderInfo;)Ljava/util/List;

    move-result-object v4

    .line 105
    .local v4, "userPackages":Ljava/util/List;, "Ljava/util/List<Landroid/webkit/UserPackage;>;"
    invoke-static {v4}, Lcom/android/server/webkit/WebViewUpdater;->isInstalledAndEnabledForAllUsers(Ljava/util/List;)Z

    move-result v5

    if-eqz v5, :cond_31

    iget-object v5, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl;->mWebViewUpdater:Lcom/android/server/webkit/WebViewUpdater;

    .line 110
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/webkit/UserPackage;

    invoke-virtual {v6}, Landroid/webkit/UserPackage;->getPackageInfo()Landroid/content/pm/PackageInfo;

    move-result-object v6

    .line 109
    invoke-virtual {v5, v3, v6}, Lcom/android/server/webkit/WebViewUpdater;->isValidProvider(Landroid/webkit/WebViewProviderInfo;Landroid/content/pm/PackageInfo;)Z

    move-result v5

    if-eqz v5, :cond_31

    .line 111
    const/4 v0, 0x1

    return v0

    .line 100
    .end local v3    # "provider":Landroid/webkit/WebViewProviderInfo;
    .end local v4    # "userPackages":Ljava/util/List;, "Ljava/util/List<Landroid/webkit/UserPackage;>;"
    :cond_31
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 115
    :cond_34
    return v1
.end method

.method private static getFallbackProvider([Landroid/webkit/WebViewProviderInfo;)Landroid/webkit/WebViewProviderInfo;
    .registers 5
    .param p0, "webviewPackages"    # [Landroid/webkit/WebViewProviderInfo;

    .line 227
    array-length v0, p0

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v0, :cond_e

    aget-object v2, p0, v1

    .line 228
    .local v2, "provider":Landroid/webkit/WebViewProviderInfo;
    iget-boolean v3, v2, Landroid/webkit/WebViewProviderInfo;->isFallback:Z

    if-eqz v3, :cond_b

    .line 229
    return-object v2

    .line 227
    .end local v2    # "provider":Landroid/webkit/WebViewProviderInfo;
    :cond_b
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 232
    :cond_e
    const/4 v0, 0x0

    return-object v0
.end method

.method private handleUserChange()V
    .registers 3

    .line 136
    iget-object v0, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl;->mSystemInterface:Lcom/android/server/webkit/SystemInterface;

    invoke-interface {v0}, Lcom/android/server/webkit/SystemInterface;->isFallbackLogicEnabled()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 137
    iget-object v0, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl;->mSystemInterface:Lcom/android/server/webkit/SystemInterface;

    invoke-interface {v0}, Lcom/android/server/webkit/SystemInterface;->getWebViewPackages()[Landroid/webkit/WebViewProviderInfo;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/webkit/WebViewUpdateServiceImpl;->updateFallbackState([Landroid/webkit/WebViewProviderInfo;)V

    .line 140
    :cond_11
    iget-object v0, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl;->mWebViewUpdater:Lcom/android/server/webkit/WebViewUpdater;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/webkit/WebViewUpdater;->updateCurrentWebViewPackage(Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    .line 141
    return-void
.end method

.method private static isDisabledForAllUsers(Ljava/util/List;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/webkit/UserPackage;",
            ">;)Z"
        }
    .end annotation

    .line 266
    .local p0, "userPackages":Ljava/util/List;, "Ljava/util/List<Landroid/webkit/UserPackage;>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/webkit/UserPackage;

    .line 267
    .local v1, "userPackage":Landroid/webkit/UserPackage;
    invoke-virtual {v1}, Landroid/webkit/UserPackage;->getPackageInfo()Landroid/content/pm/PackageInfo;

    move-result-object v2

    if-eqz v2, :cond_1e

    invoke-virtual {v1}, Landroid/webkit/UserPackage;->isEnabledPackage()Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 268
    const/4 v0, 0x0

    return v0

    .line 270
    .end local v1    # "userPackage":Landroid/webkit/UserPackage;
    :cond_1e
    goto :goto_4

    .line 271
    :cond_1f
    const/4 v0, 0x1

    return v0
.end method

.method private updateFallbackState([Landroid/webkit/WebViewProviderInfo;)V
    .registers 9
    .param p1, "webviewProviders"    # [Landroid/webkit/WebViewProviderInfo;

    .line 206
    invoke-static {p1}, Lcom/android/server/webkit/WebViewUpdateServiceImpl;->getFallbackProvider([Landroid/webkit/WebViewProviderInfo;)Landroid/webkit/WebViewProviderInfo;

    move-result-object v0

    .line 207
    .local v0, "fallbackProvider":Landroid/webkit/WebViewProviderInfo;
    if-nez v0, :cond_7

    return-void

    .line 208
    :cond_7
    invoke-direct {p0, p1}, Lcom/android/server/webkit/WebViewUpdateServiceImpl;->existsValidNonFallbackProvider([Landroid/webkit/WebViewProviderInfo;)Z

    move-result v1

    .line 210
    .local v1, "existsValidNonFallbackProvider":Z
    iget-object v2, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl;->mSystemInterface:Lcom/android/server/webkit/SystemInterface;

    iget-object v3, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl;->mContext:Landroid/content/Context;

    .line 211
    invoke-interface {v2, v3, v0}, Lcom/android/server/webkit/SystemInterface;->getPackageInfoForProviderAllUsers(Landroid/content/Context;Landroid/webkit/WebViewProviderInfo;)Ljava/util/List;

    move-result-object v2

    .line 212
    .local v2, "userPackages":Ljava/util/List;, "Ljava/util/List<Landroid/webkit/UserPackage;>;"
    if-eqz v1, :cond_25

    invoke-static {v2}, Lcom/android/server/webkit/WebViewUpdateServiceImpl;->isDisabledForAllUsers(Ljava/util/List;)Z

    move-result v3

    if-nez v3, :cond_25

    .line 213
    iget-object v3, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl;->mSystemInterface:Lcom/android/server/webkit/SystemInterface;

    iget-object v4, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl;->mContext:Landroid/content/Context;

    iget-object v5, v0, Landroid/webkit/WebViewProviderInfo;->packageName:Ljava/lang/String;

    invoke-interface {v3, v4, v5}, Lcom/android/server/webkit/SystemInterface;->uninstallAndDisablePackageForAllUsers(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_37

    .line 215
    :cond_25
    if-nez v1, :cond_37

    .line 216
    invoke-static {v2}, Lcom/android/server/webkit/WebViewUpdater;->isInstalledAndEnabledForAllUsers(Ljava/util/List;)Z

    move-result v3

    if-nez v3, :cond_37

    .line 218
    iget-object v3, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl;->mSystemInterface:Lcom/android/server/webkit/SystemInterface;

    iget-object v4, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl;->mContext:Landroid/content/Context;

    iget-object v5, v0, Landroid/webkit/WebViewProviderInfo;->packageName:Ljava/lang/String;

    const/4 v6, 0x1

    invoke-interface {v3, v4, v5, v6}, Lcom/android/server/webkit/SystemInterface;->enablePackageForAllUsers(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 221
    :cond_37
    :goto_37
    return-void
.end method

.method private updateFallbackStateOnBoot()V
    .registers 2

    .line 172
    iget-object v0, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl;->mSystemInterface:Lcom/android/server/webkit/SystemInterface;

    invoke-interface {v0}, Lcom/android/server/webkit/SystemInterface;->isFallbackLogicEnabled()Z

    move-result v0

    if-nez v0, :cond_9

    return-void

    .line 174
    :cond_9
    iget-object v0, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl;->mSystemInterface:Lcom/android/server/webkit/SystemInterface;

    invoke-interface {v0}, Lcom/android/server/webkit/SystemInterface;->getWebViewPackages()[Landroid/webkit/WebViewProviderInfo;

    move-result-object v0

    .line 175
    .local v0, "webviewProviders":[Landroid/webkit/WebViewProviderInfo;
    invoke-direct {p0, v0}, Lcom/android/server/webkit/WebViewUpdateServiceImpl;->updateFallbackState([Landroid/webkit/WebViewProviderInfo;)V

    .line 176
    return-void
.end method

.method private updateFallbackStateOnPackageChange(Ljava/lang/String;I)V
    .registers 9
    .param p1, "changedPackage"    # Ljava/lang/String;
    .param p2, "changedState"    # I

    .line 184
    iget-object v0, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl;->mSystemInterface:Lcom/android/server/webkit/SystemInterface;

    invoke-interface {v0}, Lcom/android/server/webkit/SystemInterface;->isFallbackLogicEnabled()Z

    move-result v0

    if-nez v0, :cond_9

    return-void

    .line 186
    :cond_9
    iget-object v0, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl;->mSystemInterface:Lcom/android/server/webkit/SystemInterface;

    invoke-interface {v0}, Lcom/android/server/webkit/SystemInterface;->getWebViewPackages()[Landroid/webkit/WebViewProviderInfo;

    move-result-object v0

    .line 190
    .local v0, "webviewProviders":[Landroid/webkit/WebViewProviderInfo;
    const/4 v1, 0x0

    .line 191
    .local v1, "changedPackageAvailableByDefault":Z
    array-length v2, v0

    const/4 v3, 0x0

    :goto_12
    if-ge v3, v2, :cond_27

    aget-object v4, v0, v3

    .line 192
    .local v4, "provider":Landroid/webkit/WebViewProviderInfo;
    iget-object v5, v4, Landroid/webkit/WebViewProviderInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_24

    .line 193
    iget-boolean v2, v4, Landroid/webkit/WebViewProviderInfo;->availableByDefault:Z

    if-eqz v2, :cond_27

    .line 194
    const/4 v1, 0x1

    goto :goto_27

    .line 191
    .end local v4    # "provider":Landroid/webkit/WebViewProviderInfo;
    :cond_24
    add-int/lit8 v3, v3, 0x1

    goto :goto_12

    .line 199
    :cond_27
    :goto_27
    if-nez v1, :cond_2a

    return-void

    .line 200
    :cond_2a
    invoke-direct {p0, v0}, Lcom/android/server/webkit/WebViewUpdateServiceImpl;->updateFallbackState([Landroid/webkit/WebViewProviderInfo;)V

    .line 201
    return-void
.end method


# virtual methods
.method changeProviderAndSetting(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p1, "newProvider"    # Ljava/lang/String;

    .line 152
    iget-object v0, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl;->mWebViewUpdater:Lcom/android/server/webkit/WebViewUpdater;

    invoke-virtual {v0, p1}, Lcom/android/server/webkit/WebViewUpdater;->changeProviderAndSetting(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method dumpState(Ljava/io/PrintWriter;)V
    .registers 7
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 278
    const-string v0, "Current WebView Update Service state"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 279
    const-string v0, "  Fallback logic enabled: %b"

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl;->mSystemInterface:Lcom/android/server/webkit/SystemInterface;

    .line 280
    invoke-interface {v3}, Lcom/android/server/webkit/SystemInterface;->isFallbackLogicEnabled()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 279
    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 281
    const-string v0, "  Multiprocess enabled: %b"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/android/server/webkit/WebViewUpdateServiceImpl;->isMultiProcessEnabled()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 282
    iget-object v0, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl;->mWebViewUpdater:Lcom/android/server/webkit/WebViewUpdater;

    invoke-virtual {v0, p1}, Lcom/android/server/webkit/WebViewUpdater;->dumpState(Ljava/io/PrintWriter;)V

    .line 283
    return-void
.end method

.method enableFallbackLogic(Z)V
    .registers 3
    .param p1, "enable"    # Z

    .line 168
    iget-object v0, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl;->mSystemInterface:Lcom/android/server/webkit/SystemInterface;

    invoke-interface {v0, p1}, Lcom/android/server/webkit/SystemInterface;->enableFallbackLogic(Z)V

    .line 169
    return-void
.end method

.method enableMultiProcess(Z)V
    .registers 6
    .param p1, "enable"    # Z

    .line 256
    invoke-virtual {p0}, Lcom/android/server/webkit/WebViewUpdateServiceImpl;->getCurrentWebViewPackage()Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 257
    .local v0, "current":Landroid/content/pm/PackageInfo;
    iget-object v1, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl;->mSystemInterface:Lcom/android/server/webkit/SystemInterface;

    iget-object v2, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl;->mContext:Landroid/content/Context;

    .line 258
    if-eqz p1, :cond_e

    const v3, 0x7fffffff

    goto :goto_10

    :cond_e
    const/high16 v3, -0x80000000

    .line 257
    :goto_10
    invoke-interface {v1, v2, v3}, Lcom/android/server/webkit/SystemInterface;->setMultiProcessSetting(Landroid/content/Context;I)V

    .line 259
    iget-object v1, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl;->mSystemInterface:Lcom/android/server/webkit/SystemInterface;

    invoke-interface {v1, p1}, Lcom/android/server/webkit/SystemInterface;->notifyZygote(Z)V

    .line 260
    if-eqz v0, :cond_21

    .line 261
    iget-object v1, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl;->mSystemInterface:Lcom/android/server/webkit/SystemInterface;

    iget-object v2, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-interface {v1, v2}, Lcom/android/server/webkit/SystemInterface;->killPackageDependents(Ljava/lang/String;)V

    .line 263
    :cond_21
    return-void
.end method

.method getCurrentWebViewPackage()Landroid/content/pm/PackageInfo;
    .registers 2

    .line 164
    iget-object v0, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl;->mWebViewUpdater:Lcom/android/server/webkit/WebViewUpdater;

    invoke-virtual {v0}, Lcom/android/server/webkit/WebViewUpdater;->getCurrentWebViewPackage()Landroid/content/pm/PackageInfo;

    move-result-object v0

    return-object v0
.end method

.method getValidWebViewPackages()[Landroid/webkit/WebViewProviderInfo;
    .registers 2

    .line 156
    iget-object v0, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl;->mWebViewUpdater:Lcom/android/server/webkit/WebViewUpdater;

    invoke-virtual {v0}, Lcom/android/server/webkit/WebViewUpdater;->getValidWebViewPackages()[Landroid/webkit/WebViewProviderInfo;

    move-result-object v0

    return-object v0
.end method

.method getWebViewPackages()[Landroid/webkit/WebViewProviderInfo;
    .registers 2

    .line 160
    iget-object v0, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl;->mSystemInterface:Lcom/android/server/webkit/SystemInterface;

    invoke-interface {v0}, Lcom/android/server/webkit/SystemInterface;->getWebViewPackages()[Landroid/webkit/WebViewProviderInfo;

    move-result-object v0

    return-object v0
.end method

.method handleNewUser(I)V
    .registers 2
    .param p1, "userId"    # I

    .line 122
    if-nez p1, :cond_3

    return-void

    .line 123
    :cond_3
    invoke-direct {p0}, Lcom/android/server/webkit/WebViewUpdateServiceImpl;->handleUserChange()V

    .line 124
    return-void
.end method

.method handleUserRemoved(I)V
    .registers 2
    .param p1, "userId"    # I

    .line 127
    invoke-direct {p0}, Lcom/android/server/webkit/WebViewUpdateServiceImpl;->handleUserChange()V

    .line 128
    return-void
.end method

.method isFallbackPackage(Ljava/lang/String;)Z
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;

    .line 236
    const/4 v0, 0x0

    if-eqz p1, :cond_23

    iget-object v1, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl;->mSystemInterface:Lcom/android/server/webkit/SystemInterface;

    invoke-interface {v1}, Lcom/android/server/webkit/SystemInterface;->isFallbackLogicEnabled()Z

    move-result v1

    if-nez v1, :cond_c

    goto :goto_23

    .line 238
    :cond_c
    iget-object v1, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl;->mSystemInterface:Lcom/android/server/webkit/SystemInterface;

    invoke-interface {v1}, Lcom/android/server/webkit/SystemInterface;->getWebViewPackages()[Landroid/webkit/WebViewProviderInfo;

    move-result-object v1

    .line 239
    .local v1, "webviewPackages":[Landroid/webkit/WebViewProviderInfo;
    invoke-static {v1}, Lcom/android/server/webkit/WebViewUpdateServiceImpl;->getFallbackProvider([Landroid/webkit/WebViewProviderInfo;)Landroid/webkit/WebViewProviderInfo;

    move-result-object v2

    .line 240
    .local v2, "fallbackProvider":Landroid/webkit/WebViewProviderInfo;
    if-eqz v2, :cond_22

    iget-object v3, v2, Landroid/webkit/WebViewProviderInfo;->packageName:Ljava/lang/String;

    .line 241
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_22

    const/4 v0, 0x1

    nop

    .line 240
    :cond_22
    return v0

    .line 236
    .end local v1    # "webviewPackages":[Landroid/webkit/WebViewProviderInfo;
    .end local v2    # "fallbackProvider":Landroid/webkit/WebViewProviderInfo;
    :cond_23
    :goto_23
    return v0
.end method

.method isMultiProcessEnabled()Z
    .registers 5

    .line 245
    iget-object v0, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl;->mSystemInterface:Lcom/android/server/webkit/SystemInterface;

    iget-object v1, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl;->mContext:Landroid/content/Context;

    invoke-interface {v0, v1}, Lcom/android/server/webkit/SystemInterface;->getMultiProcessSetting(Landroid/content/Context;)I

    move-result v0

    .line 246
    .local v0, "settingValue":I
    iget-object v1, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl;->mSystemInterface:Lcom/android/server/webkit/SystemInterface;

    invoke-interface {v1}, Lcom/android/server/webkit/SystemInterface;->isMultiProcessDefaultEnabled()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_19

    .line 248
    const/high16 v1, -0x80000000

    if-le v0, v1, :cond_18

    move v2, v3

    nop

    :cond_18
    return v2

    .line 251
    :cond_19
    const v1, 0x7fffffff

    if-lt v0, v1, :cond_20

    move v2, v3

    nop

    :cond_20
    return v2
.end method

.method notifyRelroCreationCompleted()V
    .registers 2

    .line 144
    iget-object v0, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl;->mWebViewUpdater:Lcom/android/server/webkit/WebViewUpdater;

    invoke-virtual {v0}, Lcom/android/server/webkit/WebViewUpdater;->notifyRelroCreationCompleted()V

    .line 145
    return-void
.end method

.method packageStateChanged(Ljava/lang/String;II)V
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "changedState"    # I
    .param p3, "userId"    # I

    .line 89
    invoke-direct {p0, p1, p2}, Lcom/android/server/webkit/WebViewUpdateServiceImpl;->updateFallbackStateOnPackageChange(Ljava/lang/String;I)V

    .line 90
    iget-object v0, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl;->mWebViewUpdater:Lcom/android/server/webkit/WebViewUpdater;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/webkit/WebViewUpdater;->packageStateChanged(Ljava/lang/String;I)V

    .line 91
    return-void
.end method

.method prepareWebViewInSystemServer()V
    .registers 3

    .line 94
    invoke-direct {p0}, Lcom/android/server/webkit/WebViewUpdateServiceImpl;->updateFallbackStateOnBoot()V

    .line 95
    iget-object v0, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl;->mWebViewUpdater:Lcom/android/server/webkit/WebViewUpdater;

    invoke-virtual {v0}, Lcom/android/server/webkit/WebViewUpdater;->prepareWebViewInSystemServer()V

    .line 96
    iget-object v0, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl;->mSystemInterface:Lcom/android/server/webkit/SystemInterface;

    invoke-virtual {p0}, Lcom/android/server/webkit/WebViewUpdateServiceImpl;->isMultiProcessEnabled()Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/server/webkit/SystemInterface;->notifyZygote(Z)V

    .line 97
    return-void
.end method

.method waitForAndGetProvider()Landroid/webkit/WebViewProviderResponse;
    .registers 2

    .line 148
    iget-object v0, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl;->mWebViewUpdater:Lcom/android/server/webkit/WebViewUpdater;

    invoke-virtual {v0}, Lcom/android/server/webkit/WebViewUpdater;->waitForAndGetProvider()Landroid/webkit/WebViewProviderResponse;

    move-result-object v0

    return-object v0
.end method
