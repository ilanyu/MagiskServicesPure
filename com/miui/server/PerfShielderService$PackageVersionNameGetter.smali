.class Lcom/miui/server/PerfShielderService$PackageVersionNameGetter;
.super Ljava/lang/Object;
.source "PerfShielderService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/server/PerfShielderService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PackageVersionNameGetter"
.end annotation


# instance fields
.field packageVersionMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/miui/server/PerfShielderService;


# direct methods
.method private constructor <init>(Lcom/miui/server/PerfShielderService;)V
    .registers 2

    .line 478
    iput-object p1, p0, Lcom/miui/server/PerfShielderService$PackageVersionNameGetter;->this$0:Lcom/miui/server/PerfShielderService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 479
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/miui/server/PerfShielderService$PackageVersionNameGetter;->packageVersionMap:Ljava/util/Map;

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/server/PerfShielderService;Lcom/miui/server/PerfShielderService$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/miui/server/PerfShielderService;
    .param p2, "x1"    # Lcom/miui/server/PerfShielderService$1;

    .line 478
    invoke-direct {p0, p1}, Lcom/miui/server/PerfShielderService$PackageVersionNameGetter;-><init>(Lcom/miui/server/PerfShielderService;)V

    return-void
.end method


# virtual methods
.method public get(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;

    .line 481
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 482
    const-string v0, ""

    return-object v0

    .line 484
    :cond_9
    iget-object v0, p0, Lcom/miui/server/PerfShielderService$PackageVersionNameGetter;->packageVersionMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2c

    .line 485
    const-string v0, ""

    .line 487
    .local v0, "packageVersion":Ljava/lang/String;
    :try_start_13
    iget-object v1, p0, Lcom/miui/server/PerfShielderService$PackageVersionNameGetter;->this$0:Lcom/miui/server/PerfShielderService;

    # getter for: Lcom/miui/server/PerfShielderService;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/miui/server/PerfShielderService;->access$500(Lcom/miui/server/PerfShielderService;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_24} :catch_26

    move-object v0, v1

    .line 489
    goto :goto_27

    .line 488
    :catch_26
    move-exception v1

    .line 490
    :goto_27
    iget-object v1, p0, Lcom/miui/server/PerfShielderService$PackageVersionNameGetter;->packageVersionMap:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 492
    .end local v0    # "packageVersion":Ljava/lang/String;
    :cond_2c
    iget-object v0, p0, Lcom/miui/server/PerfShielderService$PackageVersionNameGetter;->packageVersionMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method
