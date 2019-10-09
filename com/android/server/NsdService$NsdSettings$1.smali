.class Lcom/android/server/NsdService$NsdSettings$1;
.super Ljava/lang/Object;
.source "NsdService.java"

# interfaces
.implements Lcom/android/server/NsdService$NsdSettings;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/NsdService$NsdSettings;->makeDefault(Landroid/content/Context;)Lcom/android/server/NsdService$NsdSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$resolver:Landroid/content/ContentResolver;


# direct methods
.method constructor <init>(Landroid/content/ContentResolver;)V
    .registers 2

    .line 895
    iput-object p1, p0, Lcom/android/server/NsdService$NsdSettings$1;->val$resolver:Landroid/content/ContentResolver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isEnabled()Z
    .registers 4

    .line 898
    iget-object v0, p0, Lcom/android/server/NsdService$NsdSettings$1;->val$resolver:Landroid/content/ContentResolver;

    const-string/jumbo v1, "nsd_on"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v2, :cond_d

    goto :goto_e

    :cond_d
    const/4 v2, 0x0

    :goto_e
    return v2
.end method

.method public putEnabledStatus(Z)V
    .registers 4
    .param p1, "isEnabled"    # Z

    .line 903
    iget-object v0, p0, Lcom/android/server/NsdService$NsdSettings$1;->val$resolver:Landroid/content/ContentResolver;

    const-string/jumbo v1, "nsd_on"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 904
    return-void
.end method

.method public registerContentObserver(Landroid/net/Uri;Landroid/database/ContentObserver;)V
    .registers 5
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "observer"    # Landroid/database/ContentObserver;

    .line 908
    iget-object v0, p0, Lcom/android/server/NsdService$NsdSettings$1;->val$resolver:Landroid/content/ContentResolver;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, p2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 909
    return-void
.end method
