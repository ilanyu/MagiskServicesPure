.class final Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;
.super Ljava/lang/Object;
.source "AppWidgetServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/appwidget/AppWidgetServiceImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Host"
.end annotation


# instance fields
.field callbacks:Lcom/android/internal/appwidget/IAppWidgetHost;

.field id:Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;

.field lastWidgetUpdateSequenceNo:J

.field tag:I

.field widgets:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;",
            ">;"
        }
    .end annotation
.end field

.field zombie:Z


# direct methods
.method private constructor <init>()V
    .registers 2

    .line 3998
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4000
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->widgets:Ljava/util/ArrayList;

    .line 4004
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->tag:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/appwidget/AppWidgetServiceImpl$1;)V
    .registers 2
    .param p1, "x0"    # Lcom/android/server/appwidget/AppWidgetServiceImpl$1;

    .line 3998
    invoke-direct {p0}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;-><init>()V

    return-void
.end method

.method static synthetic access$3400(Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;Ljava/lang/String;I)Z
    .registers 4
    .param p0, "x0"    # Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I

    .line 3998
    invoke-direct {p0, p1, p2}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->hostsPackageForUser(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method private hostsPackageForUser(Ljava/lang/String;I)Z
    .registers 8
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 4020
    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->widgets:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 4021
    .local v0, "N":I
    const/4 v1, 0x0

    move v2, v1

    .local v2, "i":I
    :goto_8
    if-ge v2, v0, :cond_33

    .line 4022
    iget-object v3, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->widgets:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;

    iget-object v3, v3, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->provider:Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    .line 4023
    .local v3, "provider":Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;
    if-eqz v3, :cond_30

    invoke-virtual {v3}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->getUserId()I

    move-result v4

    if-ne v4, p2, :cond_30

    iget-object v4, v3, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->info:Landroid/appwidget/AppWidgetProviderInfo;

    if-eqz v4, :cond_30

    iget-object v4, v3, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->info:Landroid/appwidget/AppWidgetProviderInfo;

    iget-object v4, v4, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    .line 4024
    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_30

    .line 4025
    const/4 v1, 0x1

    return v1

    .line 4021
    .end local v3    # "provider":Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;
    :cond_30
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 4028
    .end local v2    # "i":I
    :cond_33
    return v1
.end method


# virtual methods
.method public getPendingUpdatesForId(ILandroid/util/LongSparseArray;)Z
    .registers 14
    .param p1, "appWidgetId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/util/LongSparseArray<",
            "Landroid/appwidget/PendingHostUpdate;",
            ">;)Z"
        }
    .end annotation

    .line 4036
    .local p2, "outUpdates":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Landroid/appwidget/PendingHostUpdate;>;"
    iget-wide v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->lastWidgetUpdateSequenceNo:J

    .line 4037
    .local v0, "updateSequenceNo":J
    iget-object v2, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->widgets:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 4038
    .local v2, "N":I
    const/4 v3, 0x0

    move v4, v3

    .local v4, "i":I
    :goto_a
    if-ge v4, v2, :cond_60

    .line 4039
    iget-object v5, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->widgets:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;

    .line 4040
    .local v5, "widget":Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;
    iget v6, v5, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->appWidgetId:I

    if-ne v6, p1, :cond_5d

    .line 4041
    invoke-virtual {p2}, Landroid/util/LongSparseArray;->clear()V

    .line 4042
    iget-object v3, v5, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->updateSequenceNos:Landroid/util/SparseLongArray;

    invoke-virtual {v3}, Landroid/util/SparseLongArray;->size()I

    move-result v3

    const/4 v6, 0x1

    sub-int/2addr v3, v6

    .local v3, "j":I
    :goto_23
    if-ltz v3, :cond_5c

    .line 4043
    iget-object v7, v5, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->updateSequenceNos:Landroid/util/SparseLongArray;

    invoke-virtual {v7, v3}, Landroid/util/SparseLongArray;->valueAt(I)J

    move-result-wide v7

    .line 4044
    .local v7, "requestId":J
    cmp-long v9, v7, v0

    if-gtz v9, :cond_30

    .line 4045
    goto :goto_59

    .line 4047
    :cond_30
    iget-object v9, v5, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->updateSequenceNos:Landroid/util/SparseLongArray;

    invoke-virtual {v9, v3}, Landroid/util/SparseLongArray;->keyAt(I)I

    move-result v9

    .line 4049
    .local v9, "id":I
    packed-switch v9, :pswitch_data_62

    .line 4059
    invoke-static {p1, v9}, Landroid/appwidget/PendingHostUpdate;->viewDataChanged(II)Landroid/appwidget/PendingHostUpdate;

    move-result-object v10

    goto :goto_55

    .line 4051
    :pswitch_3e
    iget-object v10, v5, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->provider:Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    iget-object v10, v10, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->info:Landroid/appwidget/AppWidgetProviderInfo;

    invoke-static {p1, v10}, Landroid/appwidget/PendingHostUpdate;->providerChanged(ILandroid/appwidget/AppWidgetProviderInfo;)Landroid/appwidget/PendingHostUpdate;

    move-result-object v10

    .line 4053
    .local v10, "update":Landroid/appwidget/PendingHostUpdate;
    goto :goto_55

    .line 4055
    .end local v10    # "update":Landroid/appwidget/PendingHostUpdate;
    :pswitch_47
    nop

    .line 4056
    invoke-virtual {v5}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->getEffectiveViewsLocked()Landroid/widget/RemoteViews;

    move-result-object v10

    # invokes: Lcom/android/server/appwidget/AppWidgetServiceImpl;->cloneIfLocalBinder(Landroid/widget/RemoteViews;)Landroid/widget/RemoteViews;
    invoke-static {v10}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->access$2700(Landroid/widget/RemoteViews;)Landroid/widget/RemoteViews;

    move-result-object v10

    .line 4055
    invoke-static {p1, v10}, Landroid/appwidget/PendingHostUpdate;->updateAppWidget(ILandroid/widget/RemoteViews;)Landroid/appwidget/PendingHostUpdate;

    move-result-object v10

    .line 4057
    .restart local v10    # "update":Landroid/appwidget/PendingHostUpdate;
    nop

    .line 4059
    :goto_55
    nop

    .line 4061
    invoke-virtual {p2, v7, v8, v10}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 4042
    .end local v7    # "requestId":J
    .end local v9    # "id":I
    .end local v10    # "update":Landroid/appwidget/PendingHostUpdate;
    :goto_59
    add-int/lit8 v3, v3, -0x1

    goto :goto_23

    .line 4063
    .end local v3    # "j":I
    :cond_5c
    return v6

    .line 4038
    .end local v5    # "widget":Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;
    :cond_5d
    add-int/lit8 v4, v4, 0x1

    goto :goto_a

    .line 4066
    .end local v4    # "i":I
    :cond_60
    return v3

    nop

    :pswitch_data_62
    .packed-switch 0x0
        :pswitch_47
        :pswitch_3e
    .end packed-switch
.end method

.method public getUserId()I
    .registers 2

    .line 4012
    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;

    iget v0, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;->uid:I

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    return v0
.end method

.method public isInPackageForUser(Ljava/lang/String;I)Z
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 4016
    invoke-virtual {p0}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->getUserId()I

    move-result v0

    if-ne v0, p2, :cond_12

    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;

    iget-object v0, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;->packageName:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    goto :goto_13

    :cond_12
    const/4 v0, 0x0

    :goto_13
    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 4071
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Host{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->zombie:Z

    if-eqz v1, :cond_16

    const-string v1, " Z"

    goto :goto_18

    :cond_16
    const-string v1, ""

    :goto_18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
