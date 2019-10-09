.class Lcom/android/server/appwidget/AppWidgetServiceImpl$AppWidgetManagerLocal;
.super Landroid/appwidget/AppWidgetManagerInternal;
.source "AppWidgetServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/appwidget/AppWidgetServiceImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AppWidgetManagerLocal"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/appwidget/AppWidgetServiceImpl;


# direct methods
.method private constructor <init>(Lcom/android/server/appwidget/AppWidgetServiceImpl;)V
    .registers 2

    .line 4800
    iput-object p1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$AppWidgetManagerLocal;->this$0:Lcom/android/server/appwidget/AppWidgetServiceImpl;

    invoke-direct {p0}, Landroid/appwidget/AppWidgetManagerInternal;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/appwidget/AppWidgetServiceImpl;Lcom/android/server/appwidget/AppWidgetServiceImpl$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/android/server/appwidget/AppWidgetServiceImpl;
    .param p2, "x1"    # Lcom/android/server/appwidget/AppWidgetServiceImpl$1;

    .line 4800
    invoke-direct {p0, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl$AppWidgetManagerLocal;-><init>(Lcom/android/server/appwidget/AppWidgetServiceImpl;)V

    return-void
.end method


# virtual methods
.method public getHostedWidgetPackages(I)Landroid/util/ArraySet;
    .registers 8
    .param p1, "uid"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 4803
    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$AppWidgetManagerLocal;->this$0:Lcom/android/server/appwidget/AppWidgetServiceImpl;

    # getter for: Lcom/android/server/appwidget/AppWidgetServiceImpl;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->access$200(Lcom/android/server/appwidget/AppWidgetServiceImpl;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 4804
    const/4 v1, 0x0

    .line 4805
    .local v1, "widgetPackages":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    :try_start_8
    iget-object v2, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$AppWidgetManagerLocal;->this$0:Lcom/android/server/appwidget/AppWidgetServiceImpl;

    # getter for: Lcom/android/server/appwidget/AppWidgetServiceImpl;->mWidgets:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->access$3000(Lcom/android/server/appwidget/AppWidgetServiceImpl;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 4806
    .local v2, "widgetCount":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_13
    if-ge v3, v2, :cond_41

    .line 4807
    iget-object v4, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$AppWidgetManagerLocal;->this$0:Lcom/android/server/appwidget/AppWidgetServiceImpl;

    # getter for: Lcom/android/server/appwidget/AppWidgetServiceImpl;->mWidgets:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->access$3000(Lcom/android/server/appwidget/AppWidgetServiceImpl;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;

    .line 4808
    .local v4, "widget":Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;
    iget-object v5, v4, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->host:Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    iget-object v5, v5, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;

    iget v5, v5, Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;->uid:I

    if-ne v5, p1, :cond_3e

    .line 4809
    if-nez v1, :cond_31

    .line 4810
    new-instance v5, Landroid/util/ArraySet;

    invoke-direct {v5}, Landroid/util/ArraySet;-><init>()V

    move-object v1, v5

    .line 4812
    :cond_31
    iget-object v5, v4, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->provider:Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    iget-object v5, v5, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;

    iget-object v5, v5, Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 4806
    .end local v4    # "widget":Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;
    :cond_3e
    add-int/lit8 v3, v3, 0x1

    goto :goto_13

    .line 4815
    .end local v3    # "i":I
    :cond_41
    monitor-exit v0

    return-object v1

    .line 4816
    .end local v1    # "widgetPackages":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v2    # "widgetCount":I
    :catchall_43
    move-exception v1

    monitor-exit v0
    :try_end_45
    .catchall {:try_start_8 .. :try_end_45} :catchall_43

    throw v1
.end method
