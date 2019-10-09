.class final Lcom/android/server/pm/PackageManagerService$ProviderIntentResolver;
.super Lcom/android/server/IntentResolver;
.source "PackageManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/PackageManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ProviderIntentResolver"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/server/IntentResolver<",
        "Landroid/content/pm/PackageParser$ProviderIntentInfo;",
        "Landroid/content/pm/ResolveInfo;",
        ">;"
    }
.end annotation


# instance fields
.field private mFlags:I

.field private final mProviders:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/content/ComponentName;",
            "Landroid/content/pm/PackageParser$Provider;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/server/pm/PackageManagerService;


# direct methods
.method private constructor <init>(Lcom/android/server/pm/PackageManagerService;)V
    .registers 2

    .line 13636
    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$ProviderIntentResolver;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-direct {p0}, Lcom/android/server/IntentResolver;-><init>()V

    .line 13857
    new-instance p1, Landroid/util/ArrayMap;

    invoke-direct {p1}, Landroid/util/ArrayMap;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$ProviderIntentResolver;->mProviders:Landroid/util/ArrayMap;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/PackageManagerService$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/android/server/pm/PackageManagerService;
    .param p2, "x1"    # Lcom/android/server/pm/PackageManagerService$1;

    .line 13636
    invoke-direct {p0, p1}, Lcom/android/server/pm/PackageManagerService$ProviderIntentResolver;-><init>(Lcom/android/server/pm/PackageManagerService;)V

    return-void
.end method

.method static synthetic access$2400(Lcom/android/server/pm/PackageManagerService$ProviderIntentResolver;)Landroid/util/ArrayMap;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/pm/PackageManagerService$ProviderIntentResolver;

    .line 13636
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$ProviderIntentResolver;->mProviders:Landroid/util/ArrayMap;

    return-object v0
.end method


# virtual methods
.method public final addProvider(Landroid/content/pm/PackageParser$Provider;)V
    .registers 8
    .param p1, "p"    # Landroid/content/pm/PackageParser$Provider;

    .line 13681
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$ProviderIntentResolver;->mProviders:Landroid/util/ArrayMap;

    invoke-virtual {p1}, Landroid/content/pm/PackageParser$Provider;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 13682
    const-string v0, "PackageManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Provider "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/content/pm/PackageParser$Provider;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " already defined; ignoring"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 13683
    return-void

    .line 13686
    :cond_2c
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$ProviderIntentResolver;->mProviders:Landroid/util/ArrayMap;

    invoke-virtual {p1}, Landroid/content/pm/PackageParser$Provider;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13693
    iget-object v0, p1, Landroid/content/pm/PackageParser$Provider;->intents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 13695
    .local v0, "NI":I
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_3c
    if-ge v1, v0, :cond_6c

    .line 13696
    iget-object v2, p1, Landroid/content/pm/PackageParser$Provider;->intents:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PackageParser$ProviderIntentInfo;

    .line 13701
    .local v2, "intent":Landroid/content/pm/PackageParser$ProviderIntentInfo;
    invoke-virtual {v2}, Landroid/content/pm/PackageParser$ProviderIntentInfo;->debugCheck()Z

    move-result v3

    if-nez v3, :cond_66

    .line 13702
    const-string v3, "PackageManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "==> For Provider "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p1, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    iget-object v5, v5, Landroid/content/pm/ProviderInfo;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 13704
    :cond_66
    invoke-virtual {p0, v2}, Lcom/android/server/pm/PackageManagerService$ProviderIntentResolver;->addFilter(Landroid/content/IntentFilter;)V

    .line 13695
    .end local v2    # "intent":Landroid/content/pm/PackageParser$ProviderIntentInfo;
    add-int/lit8 v1, v1, 0x1

    goto :goto_3c

    .line 13706
    :cond_6c
    return-void
.end method

.method protected bridge synthetic allowFilterResult(Landroid/content/IntentFilter;Ljava/util/List;)Z
    .registers 3

    .line 13636
    check-cast p1, Landroid/content/pm/PackageParser$ProviderIntentInfo;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/PackageManagerService$ProviderIntentResolver;->allowFilterResult(Landroid/content/pm/PackageParser$ProviderIntentInfo;Ljava/util/List;)Z

    move-result p1

    return p1
.end method

.method protected allowFilterResult(Landroid/content/pm/PackageParser$ProviderIntentInfo;Ljava/util/List;)Z
    .registers 9
    .param p1, "filter"    # Landroid/content/pm/PackageParser$ProviderIntentInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/PackageParser$ProviderIntentInfo;",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;)Z"
        }
    .end annotation

    .line 13730
    .local p2, "dest":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    iget-object v0, p1, Landroid/content/pm/PackageParser$ProviderIntentInfo;->provider:Landroid/content/pm/PackageParser$Provider;

    iget-object v0, v0, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    .line 13731
    .local v0, "filterPi":Landroid/content/pm/ProviderInfo;
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    .local v1, "i":I
    :goto_a
    if-ltz v1, :cond_25

    .line 13732
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    iget-object v3, v3, Landroid/content/pm/ResolveInfo;->providerInfo:Landroid/content/pm/ProviderInfo;

    .line 13733
    .local v3, "destPi":Landroid/content/pm/ProviderInfo;
    iget-object v4, v3, Landroid/content/pm/ProviderInfo;->name:Ljava/lang/String;

    iget-object v5, v0, Landroid/content/pm/ProviderInfo;->name:Ljava/lang/String;

    if-ne v4, v5, :cond_22

    iget-object v4, v3, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    iget-object v5, v0, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    if-ne v4, v5, :cond_22

    .line 13735
    const/4 v2, 0x0

    return v2

    .line 13731
    .end local v3    # "destPi":Landroid/content/pm/ProviderInfo;
    :cond_22
    add-int/lit8 v1, v1, -0x1

    goto :goto_a

    .line 13738
    .end local v1    # "i":I
    :cond_25
    return v2
.end method

.method protected bridge synthetic dumpFilter(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/content/IntentFilter;)V
    .registers 4

    .line 13636
    check-cast p3, Landroid/content/pm/PackageParser$ProviderIntentInfo;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/pm/PackageManagerService$ProviderIntentResolver;->dumpFilter(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/content/pm/PackageParser$ProviderIntentInfo;)V

    return-void
.end method

.method protected dumpFilter(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/content/pm/PackageParser$ProviderIntentInfo;)V
    .registers 5
    .param p1, "out"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "filter"    # Landroid/content/pm/PackageParser$ProviderIntentInfo;

    .line 13831
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 13832
    iget-object v0, p3, Landroid/content/pm/PackageParser$ProviderIntentInfo;->provider:Landroid/content/pm/PackageParser$Provider;

    .line 13833
    invoke-static {v0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    .line 13832
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 13834
    const/16 v0, 0x20

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(C)V

    .line 13835
    iget-object v0, p3, Landroid/content/pm/PackageParser$ProviderIntentInfo;->provider:Landroid/content/pm/PackageParser$Provider;

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageParser$Provider;->printComponentShortName(Ljava/io/PrintWriter;)V

    .line 13836
    const-string v0, " filter "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 13837
    invoke-static {p3}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 13838
    return-void
.end method

.method protected dumpFilterLabel(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/Object;I)V
    .registers 7
    .param p1, "out"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "label"    # Ljava/lang/Object;
    .param p4, "count"    # I

    .line 13846
    move-object v0, p3

    check-cast v0, Landroid/content/pm/PackageParser$Provider;

    .line 13847
    .local v0, "provider":Landroid/content/pm/PackageParser$Provider;
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 13848
    invoke-static {v0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    .line 13847
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 13849
    const/16 v1, 0x20

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 13850
    invoke-virtual {v0, p1}, Landroid/content/pm/PackageParser$Provider;->printComponentShortName(Ljava/io/PrintWriter;)V

    .line 13851
    const/4 v1, 0x1

    if-le p4, v1, :cond_29

    .line 13852
    const-string v1, " ("

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, p4}, Ljava/io/PrintWriter;->print(I)V

    const-string v1, " filters)"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 13854
    :cond_29
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 13855
    return-void
.end method

.method protected bridge synthetic filterToLabel(Landroid/content/IntentFilter;)Ljava/lang/Object;
    .registers 2

    .line 13636
    check-cast p1, Landroid/content/pm/PackageParser$ProviderIntentInfo;

    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageManagerService$ProviderIntentResolver;->filterToLabel(Landroid/content/pm/PackageParser$ProviderIntentInfo;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method protected filterToLabel(Landroid/content/pm/PackageParser$ProviderIntentInfo;)Ljava/lang/Object;
    .registers 3
    .param p1, "filter"    # Landroid/content/pm/PackageParser$ProviderIntentInfo;

    .line 13842
    iget-object v0, p1, Landroid/content/pm/PackageParser$ProviderIntentInfo;->provider:Landroid/content/pm/PackageParser$Provider;

    return-object v0
.end method

.method protected bridge synthetic isFilterStopped(Landroid/content/IntentFilter;I)Z
    .registers 3

    .line 13636
    check-cast p1, Landroid/content/pm/PackageParser$ProviderIntentInfo;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/PackageManagerService$ProviderIntentResolver;->isFilterStopped(Landroid/content/pm/PackageParser$ProviderIntentInfo;I)Z

    move-result p1

    return p1
.end method

.method protected isFilterStopped(Landroid/content/pm/PackageParser$ProviderIntentInfo;I)Z
    .registers 8
    .param p1, "filter"    # Landroid/content/pm/PackageParser$ProviderIntentInfo;
    .param p2, "userId"    # I

    .line 13748
    sget-object v0, Lcom/android/server/pm/PackageManagerService;->sUserManager:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {v0, p2}, Lcom/android/server/pm/UserManagerService;->exists(I)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_a

    .line 13749
    return v1

    .line 13750
    :cond_a
    iget-object v0, p1, Landroid/content/pm/PackageParser$ProviderIntentInfo;->provider:Landroid/content/pm/PackageParser$Provider;

    iget-object v0, v0, Landroid/content/pm/PackageParser$Provider;->owner:Landroid/content/pm/PackageParser$Package;

    .line 13751
    .local v0, "p":Landroid/content/pm/PackageParser$Package;
    const/4 v2, 0x0

    if-eqz v0, :cond_25

    .line 13752
    iget-object v3, v0, Landroid/content/pm/PackageParser$Package;->mExtras:Ljava/lang/Object;

    check-cast v3, Lcom/android/server/pm/PackageSetting;

    .line 13753
    .local v3, "ps":Lcom/android/server/pm/PackageSetting;
    if-eqz v3, :cond_25

    .line 13757
    iget v4, v3, Lcom/android/server/pm/PackageSetting;->pkgFlags:I

    and-int/2addr v4, v1

    if-nez v4, :cond_23

    .line 13758
    invoke-virtual {v3, p2}, Lcom/android/server/pm/PackageSetting;->getStopped(I)Z

    move-result v4

    if-eqz v4, :cond_23

    goto :goto_24

    .line 13757
    :cond_23
    move v1, v2

    :goto_24
    return v1

    .line 13761
    .end local v3    # "ps":Lcom/android/server/pm/PackageSetting;
    :cond_25
    return v2
.end method

.method protected bridge synthetic isPackageForFilter(Ljava/lang/String;Landroid/content/IntentFilter;)Z
    .registers 3

    .line 13636
    check-cast p2, Landroid/content/pm/PackageParser$ProviderIntentInfo;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/PackageManagerService$ProviderIntentResolver;->isPackageForFilter(Ljava/lang/String;Landroid/content/pm/PackageParser$ProviderIntentInfo;)Z

    move-result p1

    return p1
.end method

.method protected isPackageForFilter(Ljava/lang/String;Landroid/content/pm/PackageParser$ProviderIntentInfo;)Z
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "info"    # Landroid/content/pm/PackageParser$ProviderIntentInfo;

    .line 13767
    iget-object v0, p2, Landroid/content/pm/PackageParser$ProviderIntentInfo;->provider:Landroid/content/pm/PackageParser$Provider;

    iget-object v0, v0, Landroid/content/pm/PackageParser$Provider;->owner:Landroid/content/pm/PackageParser$Package;

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method protected bridge synthetic newArray(I)[Landroid/content/IntentFilter;
    .registers 2

    .line 13636
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageManagerService$ProviderIntentResolver;->newArray(I)[Landroid/content/pm/PackageParser$ProviderIntentInfo;

    move-result-object p1

    return-object p1
.end method

.method protected newArray(I)[Landroid/content/pm/PackageParser$ProviderIntentInfo;
    .registers 3
    .param p1, "size"    # I

    .line 13743
    new-array v0, p1, [Landroid/content/pm/PackageParser$ProviderIntentInfo;

    return-object v0
.end method

.method protected newResult(Landroid/content/pm/PackageParser$ProviderIntentInfo;II)Landroid/content/pm/ResolveInfo;
    .registers 14
    .param p1, "filter"    # Landroid/content/pm/PackageParser$ProviderIntentInfo;
    .param p2, "match"    # I
    .param p3, "userId"    # I

    .line 13773
    sget-object v0, Lcom/android/server/pm/PackageManagerService;->sUserManager:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {v0, p3}, Lcom/android/server/pm/UserManagerService;->exists(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_a

    .line 13774
    return-object v1

    .line 13775
    :cond_a
    move-object v0, p1

    .line 13776
    .local v0, "info":Landroid/content/pm/PackageParser$ProviderIntentInfo;
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$ProviderIntentResolver;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    iget-object v3, v0, Landroid/content/pm/PackageParser$ProviderIntentInfo;->provider:Landroid/content/pm/PackageParser$Provider;

    iget-object v3, v3, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    iget v4, p0, Lcom/android/server/pm/PackageManagerService$ProviderIntentResolver;->mFlags:I

    invoke-virtual {v2, v3, v4, p3}, Lcom/android/server/pm/Settings;->isEnabledAndMatchLPr(Landroid/content/pm/ComponentInfo;II)Z

    move-result v2

    if-nez v2, :cond_1c

    .line 13777
    return-object v1

    .line 13779
    :cond_1c
    iget-object v2, v0, Landroid/content/pm/PackageParser$ProviderIntentInfo;->provider:Landroid/content/pm/PackageParser$Provider;

    .line 13780
    .local v2, "provider":Landroid/content/pm/PackageParser$Provider;
    iget-object v3, v2, Landroid/content/pm/PackageParser$Provider;->owner:Landroid/content/pm/PackageParser$Package;

    iget-object v3, v3, Landroid/content/pm/PackageParser$Package;->mExtras:Ljava/lang/Object;

    check-cast v3, Lcom/android/server/pm/PackageSetting;

    .line 13781
    .local v3, "ps":Lcom/android/server/pm/PackageSetting;
    if-nez v3, :cond_27

    .line 13782
    return-object v1

    .line 13784
    :cond_27
    invoke-virtual {v3, p3}, Lcom/android/server/pm/PackageSetting;->readUserState(I)Landroid/content/pm/PackageUserState;

    move-result-object v4

    .line 13785
    .local v4, "userState":Landroid/content/pm/PackageUserState;
    iget v5, p0, Lcom/android/server/pm/PackageManagerService$ProviderIntentResolver;->mFlags:I

    const/high16 v6, 0x1000000

    and-int/2addr v5, v6

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eqz v5, :cond_36

    move v5, v7

    goto :goto_37

    :cond_36
    move v5, v6

    .line 13787
    .local v5, "matchVisibleToInstantApp":Z
    :goto_37
    iget v8, p0, Lcom/android/server/pm/PackageManagerService$ProviderIntentResolver;->mFlags:I

    const/high16 v9, 0x800000

    and-int/2addr v8, v9

    if-eqz v8, :cond_40

    move v6, v7

    nop

    .line 13789
    .local v6, "isInstantApp":Z
    :cond_40
    if-eqz v5, :cond_4d

    .line 13790
    invoke-virtual {v0}, Landroid/content/pm/PackageParser$ProviderIntentInfo;->isVisibleToInstantApp()Z

    move-result v7

    if-nez v7, :cond_4d

    iget-boolean v7, v4, Landroid/content/pm/PackageUserState;->instantApp:Z

    if-nez v7, :cond_4d

    .line 13791
    return-object v1

    .line 13794
    :cond_4d
    if-nez v6, :cond_54

    iget-boolean v7, v4, Landroid/content/pm/PackageUserState;->instantApp:Z

    if-eqz v7, :cond_54

    .line 13795
    return-object v1

    .line 13799
    :cond_54
    iget-boolean v7, v4, Landroid/content/pm/PackageUserState;->instantApp:Z

    if-eqz v7, :cond_5f

    invoke-virtual {v3}, Lcom/android/server/pm/PackageSetting;->isUpdateAvailable()Z

    move-result v7

    if-eqz v7, :cond_5f

    .line 13800
    return-object v1

    .line 13802
    :cond_5f
    iget v7, p0, Lcom/android/server/pm/PackageManagerService$ProviderIntentResolver;->mFlags:I

    invoke-static {v2, v7, v4, p3}, Landroid/content/pm/PackageParser;->generateProviderInfo(Landroid/content/pm/PackageParser$Provider;ILandroid/content/pm/PackageUserState;I)Landroid/content/pm/ProviderInfo;

    move-result-object v7

    .line 13804
    .local v7, "pi":Landroid/content/pm/ProviderInfo;
    if-nez v7, :cond_68

    .line 13805
    return-object v1

    .line 13807
    :cond_68
    new-instance v1, Landroid/content/pm/ResolveInfo;

    invoke-direct {v1}, Landroid/content/pm/ResolveInfo;-><init>()V

    .line 13808
    .local v1, "res":Landroid/content/pm/ResolveInfo;
    iput-object v7, v1, Landroid/content/pm/ResolveInfo;->providerInfo:Landroid/content/pm/ProviderInfo;

    .line 13809
    iget v8, p0, Lcom/android/server/pm/PackageManagerService$ProviderIntentResolver;->mFlags:I

    and-int/lit8 v8, v8, 0x40

    if-eqz v8, :cond_77

    .line 13810
    iput-object p1, v1, Landroid/content/pm/ResolveInfo;->filter:Landroid/content/IntentFilter;

    .line 13812
    :cond_77
    invoke-virtual {v0}, Landroid/content/pm/PackageParser$ProviderIntentInfo;->getPriority()I

    move-result v8

    iput v8, v1, Landroid/content/pm/ResolveInfo;->priority:I

    .line 13813
    iget-object v8, v2, Landroid/content/pm/PackageParser$Provider;->owner:Landroid/content/pm/PackageParser$Package;

    iget v8, v8, Landroid/content/pm/PackageParser$Package;->mPreferredOrder:I

    iput v8, v1, Landroid/content/pm/ResolveInfo;->preferredOrder:I

    .line 13814
    iput p2, v1, Landroid/content/pm/ResolveInfo;->match:I

    .line 13815
    iget-boolean v8, v0, Landroid/content/pm/PackageParser$ProviderIntentInfo;->hasDefault:Z

    iput-boolean v8, v1, Landroid/content/pm/ResolveInfo;->isDefault:Z

    .line 13816
    iget v8, v0, Landroid/content/pm/PackageParser$ProviderIntentInfo;->labelRes:I

    iput v8, v1, Landroid/content/pm/ResolveInfo;->labelRes:I

    .line 13817
    iget-object v8, v0, Landroid/content/pm/PackageParser$ProviderIntentInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    iput-object v8, v1, Landroid/content/pm/ResolveInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    .line 13818
    iget v8, v0, Landroid/content/pm/PackageParser$ProviderIntentInfo;->icon:I

    iput v8, v1, Landroid/content/pm/ResolveInfo;->icon:I

    .line 13819
    iget-object v8, v1, Landroid/content/pm/ResolveInfo;->providerInfo:Landroid/content/pm/ProviderInfo;

    iget-object v8, v8, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v8}, Landroid/content/pm/ApplicationInfo;->isSystemApp()Z

    move-result v8

    iput-boolean v8, v1, Landroid/content/pm/ResolveInfo;->system:Z

    .line 13820
    return-object v1
.end method

.method protected bridge synthetic newResult(Landroid/content/IntentFilter;II)Ljava/lang/Object;
    .registers 4

    .line 13636
    check-cast p1, Landroid/content/pm/PackageParser$ProviderIntentInfo;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/pm/PackageManagerService$ProviderIntentResolver;->newResult(Landroid/content/pm/PackageParser$ProviderIntentInfo;II)Landroid/content/pm/ResolveInfo;

    move-result-object p1

    return-object p1
.end method

.method public queryIntent(Landroid/content/Intent;Ljava/lang/String;II)Ljava/util/List;
    .registers 6
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "resolvedType"    # Ljava/lang/String;
    .param p3, "flags"    # I
    .param p4, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Ljava/lang/String;",
            "II)",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .line 13646
    sget-object v0, Lcom/android/server/pm/PackageManagerService;->sUserManager:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {v0, p4}, Lcom/android/server/pm/UserManagerService;->exists(I)Z

    move-result v0

    if-nez v0, :cond_a

    .line 13647
    const/4 v0, 0x0

    return-object v0

    .line 13648
    :cond_a
    iput p3, p0, Lcom/android/server/pm/PackageManagerService$ProviderIntentResolver;->mFlags:I

    .line 13649
    const/high16 v0, 0x10000

    and-int/2addr v0, p3

    if-eqz v0, :cond_13

    const/4 v0, 0x1

    goto :goto_14

    :cond_13
    const/4 v0, 0x0

    :goto_14
    invoke-super {p0, p1, p2, v0, p4}, Lcom/android/server/IntentResolver;->queryIntent(Landroid/content/Intent;Ljava/lang/String;ZI)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public queryIntent(Landroid/content/Intent;Ljava/lang/String;ZI)Ljava/util/List;
    .registers 6
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "resolvedType"    # Ljava/lang/String;
    .param p3, "defaultOnly"    # Z
    .param p4, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Ljava/lang/String;",
            "ZI)",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .line 13640
    if-eqz p3, :cond_5

    const/high16 v0, 0x10000

    goto :goto_6

    :cond_5
    const/4 v0, 0x0

    :goto_6
    iput v0, p0, Lcom/android/server/pm/PackageManagerService$ProviderIntentResolver;->mFlags:I

    .line 13641
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/server/IntentResolver;->queryIntent(Landroid/content/Intent;Ljava/lang/String;ZI)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public queryIntentForPackage(Landroid/content/Intent;Ljava/lang/String;ILjava/util/ArrayList;I)Ljava/util/List;
    .registers 15
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "resolvedType"    # Ljava/lang/String;
    .param p3, "flags"    # I
    .param p5, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/ArrayList<",
            "Landroid/content/pm/PackageParser$Provider;",
            ">;I)",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .line 13656
    .local p4, "packageProviders":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageParser$Provider;>;"
    sget-object v0, Lcom/android/server/pm/PackageManagerService;->sUserManager:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {v0, p5}, Lcom/android/server/pm/UserManagerService;->exists(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_a

    .line 13657
    return-object v1

    .line 13658
    :cond_a
    if-nez p4, :cond_d

    .line 13659
    return-object v1

    .line 13661
    :cond_d
    iput p3, p0, Lcom/android/server/pm/PackageManagerService$ProviderIntentResolver;->mFlags:I

    .line 13662
    const/high16 v0, 0x10000

    and-int/2addr v0, p3

    const/4 v1, 0x0

    if-eqz v0, :cond_18

    const/4 v0, 0x1

    move v5, v0

    goto :goto_19

    :cond_18
    move v5, v1

    .line 13663
    .local v5, "defaultOnly":Z
    :goto_19
    invoke-virtual {p4}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 13664
    .local v0, "N":I
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    move-object v8, v2

    .line 13668
    .local v8, "listCut":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[Landroid/content/pm/PackageParser$ProviderIntentInfo;>;"
    nop

    .local v1, "i":I
    :goto_24
    if-ge v1, v0, :cond_46

    .line 13669
    invoke-virtual {p4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PackageParser$Provider;

    iget-object v2, v2, Landroid/content/pm/PackageParser$Provider;->intents:Ljava/util/ArrayList;

    .line 13670
    .local v2, "intentFilters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageParser$ProviderIntentInfo;>;"
    if-eqz v2, :cond_43

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_43

    .line 13671
    nop

    .line 13672
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v3, v3, [Landroid/content/pm/PackageParser$ProviderIntentInfo;

    .line 13673
    .local v3, "array":[Landroid/content/pm/PackageParser$ProviderIntentInfo;
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 13674
    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 13668
    .end local v3    # "array":[Landroid/content/pm/PackageParser$ProviderIntentInfo;
    :cond_43
    add-int/lit8 v1, v1, 0x1

    goto :goto_24

    .line 13677
    .end local v1    # "i":I
    .end local v2    # "intentFilters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageParser$ProviderIntentInfo;>;"
    :cond_46
    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v6, v8

    move v7, p5

    invoke-super/range {v2 .. v7}, Lcom/android/server/IntentResolver;->queryIntentFromList(Landroid/content/Intent;Ljava/lang/String;ZLjava/util/ArrayList;I)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public final removeProvider(Landroid/content/pm/PackageParser$Provider;)V
    .registers 5
    .param p1, "p"    # Landroid/content/pm/PackageParser$Provider;

    .line 13709
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$ProviderIntentResolver;->mProviders:Landroid/util/ArrayMap;

    invoke-virtual {p1}, Landroid/content/pm/PackageParser$Provider;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 13715
    iget-object v0, p1, Landroid/content/pm/PackageParser$Provider;->intents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 13717
    .local v0, "NI":I
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_10
    if-ge v1, v0, :cond_20

    .line 13718
    iget-object v2, p1, Landroid/content/pm/PackageParser$Provider;->intents:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PackageParser$ProviderIntentInfo;

    .line 13723
    .local v2, "intent":Landroid/content/pm/PackageParser$ProviderIntentInfo;
    invoke-virtual {p0, v2}, Lcom/android/server/pm/PackageManagerService$ProviderIntentResolver;->removeFilter(Landroid/content/IntentFilter;)V

    .line 13717
    .end local v2    # "intent":Landroid/content/pm/PackageParser$ProviderIntentInfo;
    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    .line 13725
    :cond_20
    return-void
.end method

.method protected sortResults(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;)V"
        }
    .end annotation

    .line 13825
    .local p1, "results":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    # getter for: Lcom/android/server/pm/PackageManagerService;->mResolvePrioritySorter:Ljava/util/Comparator;
    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->access$3000()Ljava/util/Comparator;

    move-result-object v0

    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 13826
    return-void
.end method
